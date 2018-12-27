################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/LwIP/src/apps/mqtt/mqtt.c 

OBJS += \
./Middlewares/Third_Party/LwIP/src/apps/mqtt/mqtt.o 

C_DEPS += \
./Middlewares/Third_Party/LwIP/src/apps/mqtt/mqtt.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/LwIP/src/apps/mqtt/%.o: ../Middlewares/Third_Party/LwIP/src/apps/mqtt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F439xx -I"C:/Projects/Workspace_AC6/EthTest2/Inc" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Include" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/system" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/netif/ppp" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/netif" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/posix" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/posix/sys" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/system/arch" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Include" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


