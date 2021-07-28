################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/peripherals.c \
../board/pin_mux.c 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/peripherals.o \
./board/pin_mux.o 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/peripherals.d \
./board/pin_mux.d 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DCPU_MKL27Z64VLH4 -DCPU_MKL27Z64VLH4_cm0plus -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DSDK_DEBUGCONSOLE=0 -DCR_INTEGER_PRINTF -DPRINTF_FLOAT_ENABLE=0 -DSERIAL_PORT_TYPE_UART=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__REDLIB__ -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\board" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\source" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\drivers" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\component\serial_manager" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\component\uart" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\utilities" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\component\lists" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\CMSIS" -I"D:\UAG\9_Cuatrimestre\ArquitecturaDeComputadoras\workspace\Practica4\device" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="../$(@D)/"=. -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -fstack-usage -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


