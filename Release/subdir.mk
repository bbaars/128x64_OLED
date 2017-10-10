################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
INO_SRCS += \
../Oled2.ino 

CPP_SRCS += \
../.ino.cpp \
../OLED_DISPLAY.cpp 

LINK_OBJ += \
./.ino.cpp.o \
./OLED_DISPLAY.cpp.o 

INO_DEPS += \
./Oled2.ino.d 

CPP_DEPS += \
./.ino.cpp.d \
./OLED_DISPLAY.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
.ino.cpp.o: ../.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/EclipseC++.app/Contents/MacOS//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/standard" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/SPI" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/SPI/src" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/Wire" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/Wire/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

OLED_DISPLAY.cpp.o: ../OLED_DISPLAY.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/EclipseC++.app/Contents/MacOS//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/standard" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/SPI" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/SPI/src" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/Wire" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/Wire/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

Oled2.o: ../Oled2.ino
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/Applications/EclipseC++.app/Contents/MacOS//arduinoPlugin/packages/arduino/tools/avr-gcc/4.9.2-atmel3.5.4-arduino2/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10802 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR   -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/cores/arduino" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/variants/standard" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/SPI" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/SPI/src" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/Wire" -I"/Applications/EclipseC++.app/Contents/MacOS/arduinoPlugin/packages/arduino/hardware/avr/1.6.20/libraries/Wire/src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


