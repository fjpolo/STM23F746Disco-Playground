################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk.cpp \
D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk_mutex.cpp \
D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk_sema.cpp \
D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk_xthr.cpp 

OBJS += \
./qxk/qxk.o \
./qxk/qxk_mutex.o \
./qxk/qxk_sema.o \
./qxk/qxk_xthr.o 

CPP_DEPS += \
./qxk/qxk.d \
./qxk/qxk_mutex.d \
./qxk/qxk_sema.d \
./qxk/qxk_xthr.d 


# Each subdirectory must supply rules for building sources it contributes
qxk/qxk.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk.cpp qxk/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
qxk/qxk_mutex.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk_mutex.cpp qxk/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
qxk/qxk_sema.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk_sema.cpp qxk/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
qxk/qxk_xthr.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk/qxk_xthr.cpp qxk/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

