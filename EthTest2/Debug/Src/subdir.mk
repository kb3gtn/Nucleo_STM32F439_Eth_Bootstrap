################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/dma.c \
../Src/ethernetif.c \
../Src/gpio.c \
../Src/lwip.c \
../Src/main.c \
../Src/ringbuffer.c \
../Src/stm32f4xx_hal_msp.c \
../Src/stm32f4xx_it.c \
../Src/syscalls.c \
../Src/system_stm32f4xx.c \
../Src/usart.c 

OBJS += \
./Src/dma.o \
./Src/ethernetif.o \
./Src/gpio.o \
./Src/lwip.o \
./Src/main.o \
./Src/ringbuffer.o \
./Src/stm32f4xx_hal_msp.o \
./Src/stm32f4xx_it.o \
./Src/syscalls.o \
./Src/system_stm32f4xx.o \
./Src/usart.o 

C_DEPS += \
./Src/dma.d \
./Src/ethernetif.d \
./Src/gpio.d \
./Src/lwip.d \
./Src/main.d \
./Src/ringbuffer.d \
./Src/stm32f4xx_hal_msp.d \
./Src/stm32f4xx_it.d \
./Src/syscalls.d \
./Src/system_stm32f4xx.d \
./Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F439xx -I"C:/Projects/Workspace_AC6/EthTest2/Inc" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/STM32F4xx_HAL_Driver/Inc" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/STM32F4xx_HAL_Driver/Inc/Legacy" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Include" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/system" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/netif/ppp" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/netif" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/posix" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/src/include/posix/sys" -I"C:/Projects/Workspace_AC6/EthTest2/Middlewares/Third_Party/LwIP/system/arch" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Include" -I"C:/Projects/Workspace_AC6/EthTest2/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


