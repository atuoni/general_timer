# General Timer Project

## About
This is a repository with a microcontroller firmware of a timer device. The device was built using a Microchip PIC12F675 microcontroller. The code was written in C language and was used the MPLABX to compile and build the program. 
The code comments is in the portuguese language.



## How it works
The device only has a push button to set and start the counting time. Pressing the button, the device wake up and a led on the panel starts blinking.
 
### 1- Selecting the timer counting mode:
You can set two counting modes (5 minutes or 10 minutes). If the button is pressed more than 15 seconds, the counting mode is switched, the other led blinks and a small beep sound. 

### 2- Turning on the timer counting:
After a new single press of the button, the timer counting starts, both Leds blink, and the AC output is turned on. When the timer gets the time selected, the AC output is turned off and a buzzer sounds for some seconds.
  
You can also cancel the timer counting operation pressing the button more than 15 seconds during the counting time.

Note: If you take more than 60 seconds to start the timer counting operation, the led will stop blinking and the device goes to the standby mode.  

Note: The device operate on a 110/220V AC power supply. 



## VIDEO (In portuguese language)
[![Watch the video.](http://img.youtube.com/vi/sDOyX_M_l8k/0.jpg)](http://www.youtube.com/watch?v=sDOyX_M_l8k "General Timer")


