################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP/retarget.c 

CPP_SRCS += \
D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP/bsp.cpp 

C_DEPS += \
./BSP/retarget.d 

OBJS += \
./BSP/bsp.o \
./BSP/retarget.o 

CPP_DEPS += \
./BSP/bsp.d 


# Each subdirectory must supply rules for building sources it contributes
BSP/bsp.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP/bsp.cpp BSP/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
BSP/retarget.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP/retarget.c BSP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

