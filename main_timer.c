/*
 * File:   main_timer.c
 * Author: Amauri Tuoni
 *
 * Controle do Dispositivo Timer para ligar e desligar dispositivos 
 * podendo selecionar 2 tempos de preparo.Utilizando o PIC12F675.
 * VERSÃO: 1.2
 * 
 * Created on 2 de Novembro de 2018, 21:02
 */

#include <xc.h>

#define FALSE 0                 // define false como nível lógico "0"
#define TRUE 1                  // define true como nível lógico "1"
#define OFF 0                   // define off como nível lógico "0"
#define ON 1                    // define on como nível lógico "1"  
#define LIGA_LED 0              // define nível lógico "1" para LED Ligado
#define DESLIGA_LED 1           // define nível lógico "0" para LED Desligado
#define LIGA_RELE 1             // define nível lógico "1" para Relé Ligado
#define DESLIGA_RELE 0          // define nível lógico "0" para Relé Desligado
#define LIGA_BUZZER 1           // define nível lógico "1"  para Buzzer Ligado
#define DESLIGA_BUZZER 0           // define nível lógico "0" para Buzzer Desligado
#define BOTAO_SEM_TOQUE 0          // define o valor "0" para nenhum toque do botão
#define BOTAO_PRIMEIRO_TOQUE 1     // define o valor "1" para o primeiro toque do botão
#define BOTAO_SEGUNDO_TOQUE 2      // define o valor "2" para o segundo toque do botão
#define CICLO_COMPLETO_TIMER 0     // define o valor "0" para o ciclo completo do timer 
#define USER_CANCELA 1             // define o valor "1" para o caso o usuário cancela
#define TOQUES_BUZZER_FIM 15       // define a quantidade de toques do buzzer para o ciclo completo
#define TOQUES_BUZZER_CANCELA 3    // define a quantidade de toques do buzzer qdo o ciclo é cancelado pelo usuário
#define CONT_LEDS_PISCA 60         // define a quantidade de piscadas dos leds vermelho ou verde - configurado: 1 minuto = 60s ( aprox. 1 piscada/s) 
#define CONT_BT_PRESSIONADO 15       // define o valor limite do contador para o botão pressionado - configurado: 15 = 15s ( 15 piscadas até ativar)       
#define MODO_LED_VERMELHO 0x00          // define o modo 1 (led vermelho acionado) como 0x00
#define MODO_LED_VERDE 0xFF             // define o modo 2 (led verde acionado) como 0xFF
#define TIMER1_OVERFLOW 1                     // define o valor "1" como o estouro do TIMER 1 
#define TIMER1_RESET 0                        // define o valor "0" como o reset do TIMER 1
#define ANALOG_OFF 0b00000000                 // define as entradas como I/O
#define COMPARATOR_OFF 0b00000111             // define os comparadores desligados
#define CONFIG_IO 0b11001000                  // define as portas GP0,GP1,GP2,GP4 e GP5 como saída e GP3 entrada
#define SEM_PULLUP 0b00000000                 // desliga os pull-ups dos I/Os


//*****************************************************************************************************************************************************************
// Ajuste dos tempos de preparo (CARGA LIGADA)
//*****************************************************************************************************************************************************************
#define TIMER_TEMPO_60SEG 114             // define o valor para um tempo de 60s (1min)  -> TIMER_TEMPO_60SEG = 60 s / TIMER1_OVERFLOW -> 60s/0,524s = 114,50 = 115

//*****************************************************************************************************************************************************************
//Define o valor para um tempo em minutos no modo1 - MODO LED VERMELHO
//*****************************************************************************************************************************************************************
#define TEMPO_TIMER_VERMELHO 5           // TEMPO_TIMER_VERMELHO = Tempo Desejado * 1 -> 5 * 60 = 300s = 5 minutos
                                        

//*****************************************************************************************************************************************************************
//Define o valor para um tempo em minutos no modo2 - MODO LED VERDE
//*****************************************************************************************************************************************************************
#define TEMPO_TIMER_VERDE 10             // TEMPO_TIMER_VERDE = Tempo Desejado * 1 -> 10 * 60 = 600s = 10 minutos

//****************************************************************************************************************************************
//Variáveis globais
//****************************************************************************************************************************************

char cont_botao_press;        // variavel utilizada para contagem do tempo de pressionamento do botao
char cont_pisca_leds;         // variavel utilizada para contagem do tempo que os leds piscam (primeiro toque)
char bt_estado_atual;         // variavel utilizada para armazenar o estado atual do botão
char bt_estado_anterior;      // variavel utilizada para armazenar o estado anterior do botão
char bt_num_toques;           // variavel utilizada para armazenar se houve mudança no estado atual do botão em relação ao estado anterior
char modo_timer;              // variavel utilizada para definir o modo de preparo (LED VERMELHO OU VERDE)
char cont_toques;             // variavel utilizada para armazenar a quantidade de toques no botão
char timer_out;               // variavel utilizada para armazenar o modo de encerramento do modo de preparo (CICLO COMPLETO OU CANCELAMENTO PELO USUÁRIO)

//******************************************************************************************************************************************************** 
//Prototipos de funções
//*********************************************************************************************************************************************************

void config_osc(void);
void config_mcu(void);
void config_var(void);
char ler_botao(void);
char estado_botao(void);
void cooking(char tempo);
void modo_lowpower(void);
void config_TM1(void);
void som_modo_preparo(char modo);
void som(void);
void __interrupt() isr(void);

//*****************************************************************************************************************************************
//Função principal(loop)
//*****************************************************************************************************************************************

void main(void) {
    
    config_osc();            // chama sub rotina de calibração do oscilador do MCU
    config_mcu();            // chama sub-rotina de configuração dos periféricos do MCU
    config_var();            // chama sub-rotina de inicialização das variaveis do programa
    config_TM1();            // chama sub-rotina de configuração do Timer 1
   
    while (1){               // loop infinito
        bt_num_toques = estado_botao();                      // chama sub-rotina para obter o estado do botão
        if(bt_num_toques == BOTAO_PRIMEIRO_TOQUE){           // Caso a sub-rotina retornar o valor como primeiro toque
            som();                                           // chama sub-rotina de acionamento do buzzer (BEEP)
            while (cont_pisca_leds <= CONT_LEDS_PISCA){      // loop para piscar o led (Vermelho ou Verde) até o valor do contador CONT_LEDS_PISCA
                bt_num_toques = estado_botao();              // chama sub-rotina para obter o estado do botão
           
                if ((bt_estado_atual == TRUE) && cont_botao_press > CONT_BT_PRESSIONADO && bt_num_toques == BOTAO_PRIMEIRO_TOQUE){     // entra no modo de seleção de modo caso o botão fique pressionado até CONT_BT PRESSIONADO 
                    som();                                   // chama sub rotina de acionamento do buzzer (BEEP)
                    modo_timer = ~modo_timer;                // complementa o valor contido em modo_timer (Alterna entre modo 1 e modo 2)
                    cont_botao_press = 0;                    // zera o contador de botão pressionado 
                    cont_toques = 2;                         // define que o botão foi pressionado uma única vez   ???
                }
        
                if (modo_timer == MODO_LED_VERMELHO){           //  entra no modo para piscar o led Vermelho (modo 1)
                    GP4= LIGA_LED;                              // aciona o led vermelho
                    GP5= DESLIGA_LED;                           // desliga o led verde
                }
                if (modo_timer == MODO_LED_VERDE){            // entra no modo para piscar o led verde (modo 2)
                    GP5 = LIGA_LED;                           // aciona led verde
                    GP4 = DESLIGA_LED;                        // desliga o led vermelho
                } 
                _delay(500000);                               // led aceso por 500 ms
                GP4 = DESLIGA_LED;                            // desliga o led vermelho  
                GP5 = DESLIGA_LED;                            // desliga o led verde 
                _delay(500000);                               // led apagado por 500 ms
                cont_pisca_leds++;                            // incrementa o contador do número de piscadas do led 
                if(bt_num_toques== BOTAO_SEGUNDO_TOQUE){      // entra no modo de preparo caso o botão seja acionado uma segunda vez
                    som();                                    // chama sub-rotina de acionamento do buzzer (1 BEEP)
                    cooking(modo_timer);                      // chama sub-rotina para modo de preparo informando o modo selecionado
                    cont_pisca_leds = 255;                    // estoura o contador do numero de piscadas do led para sair do loop
                }
            }
        }
        cont_toques = 0;           // zera a qtd de toques no botão
        GP4 = DESLIGA_LED;            // desliga o led vermelho
        GP5 = DESLIGA_LED;            // desliga o led verde
        modo_lowpower();              // chama sub-rotina de baixo consumo
    }
}                                     

//*******************************************************************************************************************************
// Função para calibrar o oscilador interno -OSCCAL 
//*******************************************************************************************************************************

void config_osc(void){
__asm("BSF STATUS, 5");       //  Seta o bit 5 do registrador STATUS 
__asm ("CALL 3FFh");          // salta para a última posição da memória Flash 
__asm  ("MOVWF OSCCAL");      // move o valor do registrador W para o resgistrador OSCCAL
__asm  ("BCF STATUS, 5");     // Zera o bit 5 do registador STATUS           
}

//*******************************************************************************************************************************
// Função para acionamento do modo low power
//*******************************************************************************************************************************
void modo_lowpower(void){
    SLEEP();                   // entra no modo de low power
    NOP();                     // aguarda 2 ciclos de clock para sair do modo de low power 
    NOP();
}


//*******************************************************************************************************************************
//Função para configurar os perifericos do MCU
//*******************************************************************************************************************************

void config_mcu(void){
    ANSEL = ANALOG_OFF;            // desliga as entradas analógicas
    CMCON = COMPARATOR_OFF;        //desliga os comparadores
    TRISIO = CONFIG_IO;            // configura os ports GP0,GP1,GP2,GP4 e GP5 como saída
    WPU = SEM_PULLUP;              // configura os pull_up de I/O desligados
    GP0 = OFF;                     // desliga relé 
    GP1 = OFF;                     // desliga buzzer   
    GP2 = OFF;                     // I/O não utilizado nesse progama
    GP4 = DESLIGA_LED;             // apaga o led vermelho
    GP5 = DESLIGA_LED;             // apaga o led verde   
    GIE = ON;                      // interrupção global ligada
    PEIE= ON;                      // interrupção dos perifericos ligada 
    GPIE = ON;                     // interrupção de mudança de nível em I/O ligada
    IOC3= ON;                      // interrupção de mudança de nível em GP3 ligada
   
}

//*********************************************************************************************************************
//Incialização das variáveis iniciais do programa
//*********************************************************************************************************************

void config_var(void){
    cont_botao_press = 0;           // inicializa o contador de botão pressionado 
    cont_pisca_leds = 0;            // inicializa o contador de piscadas dos leds vermelho ou verde
    modo_timer = MODO_LED_VERMELHO;              // inicializa como modo 1 (Led vermelho)   
    bt_estado_atual = FALSE;        // inicializa o estado atual do botão como não pressionado
    bt_estado_anterior = FALSE;     // inicializa o estado anterior do botão como não pressionado
    bt_num_toques = BOTAO_SEM_TOQUE;   // inicializa o status do numero de toques no botão com nenhum toque 
    cont_toques = 0;                  // inicializa o contador de toques no botão para "0"
    timer_out = TIMER1_RESET;         // inicializa a variável de fim de contagem contagem do timer 1 
}
//**********************************************************************************************************************
//Função para leitura do botão. Retornando se o mesmo está pressionado ou não
//********************************************************************************************************************
char ler_botao(void){
    
    char status;                     //varíavel para guardar o estado do botão
    if (GP3 == FALSE){               // verifica se o botão foi pressionado
        _delay(2);                  // tempo de debouncing - 2ms
        if(GP3 == FALSE){            // verifica novamente se o botão foi pressionado
            cont_botao_press++;      // incrementa o contador de botão pressionado
            cont_pisca_leds = 0;     // zera o contador de piscadas dos leds vermelho ou verde
            status = TRUE;           // define o estado do botão como pressionado
        }
    }
    else{                             // caso botão não pressionado                         
        cont_botao_press = 0;      // zera o contador de botão pressionado
        status = FALSE;               // define o estado do botão como não pressionado
    }
    return status;                    // retorna da subrotina com o valor do estado do botão
}

//**************************************************************************************************************
//Função para retornar quantas vezes o botão foi pressionado.
//**************************************************************************************************************
char estado_botao(void){
  
    char estado_toques;                 // varíavel para guardar o estado dos toques no botão
   
  
    bt_estado_atual = ler_botao();      // chama sub-rotina para obter o estado do botão
    if(bt_estado_atual != bt_estado_anterior){       // verifica se o estado obtido é diferente do estado anterior
        cont_toques++;                               // incrementa o contador de toques no botão   
    }
    switch (cont_toques){                            
        case 0: {                                    // caso não foi dado nenhum toque no botão
                estado_toques = BOTAO_SEM_TOQUE; 
                break;
        }
        case 4: {  
                estado_toques = BOTAO_SEGUNDO_TOQUE;  // caso foi realizado o segundo toque no botão
                cont_toques = 0;                      // zera o contador de toques no botão
                break; 
        }
        default: {                                    // caso foi realizado toques no botão exceto o segundo toque
                estado_toques = BOTAO_PRIMEIRO_TOQUE;  
                break;
        }
    }
    bt_estado_anterior = bt_estado_atual;             // salva o valor do estado atual do botão como estado anterior do botão
    return estado_toques;                             // retorna da subrotina com o estado de toques do botão 
}

//***************************************************************************************************************
//Função para utilizado no modo preparo. Liga o relé e pisca os leds durante o preparo. Possibilita o cancelamento 
// do preparo caso o botão seja pressionado.
//********************************************************************************************************************

void cooking(char tempo){   
    char timer_cont_seg;                         // variavel utilizada para armazenar a contagem de tempo em segundo 
    char timer_cont_min;                         // varíavel utilizada para armazenar a contagem de tempo em minutos
    char modo_fim;                               // variavel utilizada para armazenar o modo de finalização do modo preparo (CICLO COMPLETO OU CANCELADO PELO USUARIO)
    modo_fim = CICLO_COMPLETO_TIMER;             // define o modo de finalização do modo preparo como ciclo completo 
    if(tempo == MODO_LED_VERMELHO){              // verifica qual o modo selecionado (MODO1-LED VERMELHO)
        timer_cont_min = TEMPO_TIMER_VERMELHO;   // ajusta a variavel para contagem de tempo como MODO 1
    }
    if(tempo == MODO_LED_VERDE){                  //se selecionado o (MODO 2 - LED VERDE)
        timer_cont_min = TEMPO_TIMER_VERDE;           // ajusta a variavel para contagem de tempo como MODO 2      
    }
    while(timer_cont_min != 0){                 // executa o loop de contagem de minutos até que for igual 0
        if (timer_out == TIMER1_OVERFLOW){      // verifica se o Timer1 estourou
            timer_out = TIMER1_RESET;           // sim -> reset a variavel de estouro do TIMER 1
            if (timer_cont_seg == 0){           // verifica se o contador de segundo é igual a zero
                timer_cont_min--;               // decrementa o contador de minutos
                timer_cont_seg = TIMER_TEMPO_60SEG; //define o tempo do contador de segundos conforme o tempo de estouro do timer
                }
                timer_cont_seg--;  
            }
        TMR1ON = ON;                               // liga o Timer1 para contar
        GP0 = LIGA_RELE;                           // aciona o relé (liga a carga)
        GP4 = LIGA_LED;                            // aciona o led vermelho
        GP5 = LIGA_LED;                            // aciona o led verde
        _delay(250000);                            // leds acesos por 250ms
        GP4 = DESLIGA_LED;                         // apaga o led vermelho 
        GP5 = DESLIGA_LED;                         // apaga o led verde
        _delay(250000);                            // delay de 250ms
        
        bt_estado_atual = ler_botao();             // chama sub rotina para verificar o estado atual do botão
        
        if (bt_estado_atual==TRUE && cont_botao_press > CONT_BT_PRESSIONADO){      // o botão foi pressionado mais que 30s?
            modo_fim = USER_CANCELA;                                       // define o modo de fim de preparo como cancelado pelo usuário
            cont_botao_press = 0;                                          // zera o contador de botão pressionado
            timer_cont_min =0;                                                   // força a saída do loop zerando a varíavel timer_cont
        } 
    }
    TMR1ON = OFF;                                    // desliga o Timer 1 - para de contar
    GP0 = DESLIGA_RELE;                              // desliga o Relé (desliga a carga)
    som_modo_preparo(modo_fim);                      // chama sub-rotina de acionamento do buzzer
}    


//****************************************************************************************************************************
//Função de acionamento do Buzzer quando o botão é acionado - "beep"
//****************************************************************************************************************************


void som(void){
    GP1 = LIGA_BUZZER;       // aciona o buzzer
    _delay(100000);          // buzzer acionado por 100ms
    GP1 = DESLIGA_BUZZER;    //desliga o buzzer
}

//****************************************************************************************************************************
//Função de acionamento do Buzzer durante o modo de preparo
//****************************************************************************************************************************

void som_modo_preparo(char modo){
    if(modo == CICLO_COMPLETO_TIMER){         //modo de finalização do modo preparo foi pelo ciclo completo
    
        for(char t=0; t<= TOQUES_BUZZER_FIM; t++){       // loop para tocar "n" beeps
            GP1 = LIGA_BUZZER;               // aciona o buzzer
            _delay(300000);                  // buzzer acionado por 300ms
            GP1 = DESLIGA_BUZZER;            // desliga o buzzer
            _delay(300000);                  // buzzer desligado por 300ms
        }
    }
    if(modo == USER_CANCELA){                                   // o modo de finalização do timer foi pelo usuário
        for(char t=0; t<=TOQUES_BUZZER_CANCELA; t++){           // loop para tocar "n" beeps curtos 
            GP1 = LIGA_BUZZER;                                  // aciona o buzzer
            _delay(100000);                                     // buzzer acionado por 100ms
            GP1 = DESLIGA_BUZZER;                               // desliga o buzzer
            _delay(100000);                                     // buzzer acionado por 100ms
        }
    }
}   


//***************************************************************************************************************************
//Função para configuração do TIMER 1
//
//ciclo de maq = 4/4MHz = 1us
//t=ciclo de maq * prescaler * contagem(65536-TMRIH:TMR1L) = 1us * 8 *(65536-0) = 524288us = 524,3 ms = 0,524 s -->1,91Hz
//***************************************************************************************************************************
void config_TM1(void){
    T1CON = 0b01100000;         // Configura o registrador T1CON do TIMER1( Oscilador Inteno, Prescaler 1:8, Timer Desligado, sincronia com o CLK)
    TMR1IE = ON;                // Liga Interrupção para o Timer 1
    TMR1L = 0x00;               // Zera a parte baixa do Timer 1
    TMR1H = 0x00;               // Zera a parte alta  do Timer 1
}


//*******************************************************************************************************************************
//Vetor de interrupção - Interrupção de mudança de estado em GP3 e estouro do TIMER 1
//*******************************************************************************************************************************

void __interrupt() isr(void){   //sub-rotina de tratamento de interrupções
   

//Interrupção de mudança de estado em I/O
//*****************************************************************************************************************************    
    
    if ((GPIE && GPIF) ==1){                 // verifica se o flag de mudança de nível em I/O foi acionado
        if (GP3 == ON || GP3 == OFF){        // lê o estado de GP3
        GPIF = OFF;                          // reset no flag de mudança de nível
        }
    }
    

//Interrupção do Timer 1
//*****************************************************************************************************************************    

    
    if(TMR1IE == ON && TMR1IF== ON){             // verifica se a interrupção do timer1 e o flag do Timer 1 foi acionado
        timer_out = TIMER1_OVERFLOW;             // seta a variavel timer_out
        TMR1IF = OFF;                            // reset o flag do timer1 
        TMR1L = 0x00;                            // zera o registrador "baixo" de contagem do Timer1
        TMR1H = 0x00;                            // zera o registrador "alto" de contagem do Timer1
    }
    
}

