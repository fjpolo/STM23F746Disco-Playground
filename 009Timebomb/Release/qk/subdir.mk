################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Programmen/qp/qpcpp/src/qk/qk.cpp 

OBJS += \
./qk/qk.o 

CPP_DEPS += \
./qk/qk.d 


# Each subdirectory must supply rules for building sources it contributes
qk/qk.o: D:/Programmen/qp/qpcpp/src/qk/qk.cpp qk/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Programmen/qp/qpcpp/include" -I"D:/Programmen/qp/qpcpp/src" -I"D:/Programmen/qp/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Programmen/qp/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/007BlinkyQP/QPmodel" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

