################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
OBJS += \
./src/qf/qep_hsm.o \
./src/qf/qep_msm.o \
./src/qf/qf_act.o \
./src/qf/qf_actq.o \
./src/qf/qf_defer.o \
./src/qf/qf_dyn.o \
./src/qf/qf_mem.o \
./src/qf/qf_ps.o \
./src/qf/qf_qact.o \
./src/qf/qf_qeq.o \
./src/qf/qf_qmact.o \
./src/qf/qf_time.o 

CPP_DEPS += \
./src/qf/qep_hsm.d \
./src/qf/qep_msm.d \
./src/qf/qf_act.d \
./src/qf/qf_actq.d \
./src/qf/qf_defer.d \
./src/qf/qf_dyn.d \
./src/qf/qf_mem.d \
./src/qf/qf_ps.d \
./src/qf/qf_qact.d \
./src/qf/qf_qeq.d \
./src/qf/qf_qmact.d \
./src/qf/qf_time.d 


# Each subdirectory must supply rules for building sources it contributes
src/qf/qep_hsm.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qep_hsm.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qep_msm.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qep_msm.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_act.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_act.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_actq.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_actq.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_defer.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_defer.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_dyn.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_dyn.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_mem.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_mem.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_ps.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_ps.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_qact.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_qact.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_qeq.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_qeq.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_qmact.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_qmact.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
src/qf/qf_time.o: D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf/qf_time.cpp src/qf/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++14 -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/BSP" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qf" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm7-9/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qs" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qv" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src/qxk" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/include" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/ports/arm-cm/qk/gnu" -I"D:/Franco/Dokumenten/STM32F7/STM32CubeIDE/workspace_1.7.0/qpcpp/src" -Os -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

