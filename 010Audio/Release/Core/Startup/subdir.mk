################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32f746nghx.s 

S_DEPS += \
./Core/Startup/startup_stm32f746nghx.d 

OBJS += \
./Core/Startup/startup_stm32f746nghx.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -c -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

