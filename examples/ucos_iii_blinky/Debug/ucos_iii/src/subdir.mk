################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ucos_iii/src/cpu_bsp.c \
../ucos_iii/src/cpu_c.c \
../ucos_iii/src/cpu_core.c \
../ucos_iii/src/lib_ascii.c \
../ucos_iii/src/lib_math.c \
../ucos_iii/src/lib_mem.c \
../ucos_iii/src/lib_str.c \
../ucos_iii/src/os_cfg_app.c \
../ucos_iii/src/os_core.c \
../ucos_iii/src/os_cpu_c.c \
../ucos_iii/src/os_dbg.c \
../ucos_iii/src/os_flag.c \
../ucos_iii/src/os_int.c \
../ucos_iii/src/os_mem.c \
../ucos_iii/src/os_msg.c \
../ucos_iii/src/os_mutex.c \
../ucos_iii/src/os_pend_multi.c \
../ucos_iii/src/os_prio.c \
../ucos_iii/src/os_q.c \
../ucos_iii/src/os_sem.c \
../ucos_iii/src/os_stat.c \
../ucos_iii/src/os_task.c \
../ucos_iii/src/os_tick.c \
../ucos_iii/src/os_time.c \
../ucos_iii/src/os_tmr.c \
../ucos_iii/src/os_var.c 

S_SRCS += \
../ucos_iii/src/os_cpu_a.s 

ASM_SRCS += \
../ucos_iii/src/cpu_a.asm 

OBJS += \
./ucos_iii/src/cpu_a.o \
./ucos_iii/src/cpu_bsp.o \
./ucos_iii/src/cpu_c.o \
./ucos_iii/src/cpu_core.o \
./ucos_iii/src/lib_ascii.o \
./ucos_iii/src/lib_math.o \
./ucos_iii/src/lib_mem.o \
./ucos_iii/src/lib_str.o \
./ucos_iii/src/os_cfg_app.o \
./ucos_iii/src/os_core.o \
./ucos_iii/src/os_cpu_a.o \
./ucos_iii/src/os_cpu_c.o \
./ucos_iii/src/os_dbg.o \
./ucos_iii/src/os_flag.o \
./ucos_iii/src/os_int.o \
./ucos_iii/src/os_mem.o \
./ucos_iii/src/os_msg.o \
./ucos_iii/src/os_mutex.o \
./ucos_iii/src/os_pend_multi.o \
./ucos_iii/src/os_prio.o \
./ucos_iii/src/os_q.o \
./ucos_iii/src/os_sem.o \
./ucos_iii/src/os_stat.o \
./ucos_iii/src/os_task.o \
./ucos_iii/src/os_tick.o \
./ucos_iii/src/os_time.o \
./ucos_iii/src/os_tmr.o \
./ucos_iii/src/os_var.o 

C_DEPS += \
./ucos_iii/src/cpu_bsp.d \
./ucos_iii/src/cpu_c.d \
./ucos_iii/src/cpu_core.d \
./ucos_iii/src/lib_ascii.d \
./ucos_iii/src/lib_math.d \
./ucos_iii/src/lib_mem.d \
./ucos_iii/src/lib_str.d \
./ucos_iii/src/os_cfg_app.d \
./ucos_iii/src/os_core.d \
./ucos_iii/src/os_cpu_c.d \
./ucos_iii/src/os_dbg.d \
./ucos_iii/src/os_flag.d \
./ucos_iii/src/os_int.d \
./ucos_iii/src/os_mem.d \
./ucos_iii/src/os_msg.d \
./ucos_iii/src/os_mutex.d \
./ucos_iii/src/os_pend_multi.d \
./ucos_iii/src/os_prio.d \
./ucos_iii/src/os_q.d \
./ucos_iii/src/os_sem.d \
./ucos_iii/src/os_stat.d \
./ucos_iii/src/os_task.d \
./ucos_iii/src/os_tick.d \
./ucos_iii/src/os_time.d \
./ucos_iii/src/os_tmr.d \
./ucos_iii/src/os_var.d 


# Each subdirectory must supply rules for building sources it contributes
ucos_iii/src/%.o: ../ucos_iii/src/%.asm
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -DDEBUG -D__CODE_RED -g3 -mcpu=cortex-m3 -mthumb -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ucos_iii/src/%.o: ../ucos_iii/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -DDEBUG -D__CODE_RED -D__USE_LPCOPEN -DCORE_M3 -I"C:\Users\nykos\src\cpu-achitecture\examples\lpc_chip_175x_6x\inc" -I"C:\Users\nykos\src\cpu-achitecture\examples\lpc_board_nxp_lpcxpresso_1769\inc" -I"C:\Users\nykos\src\cpu-achitecture\examples\ucos_iii_blinky\example\inc" -I"C:\Users\nykos\src\cpu-achitecture\examples\ucos_iii_blinky\ucos_iii\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m3 -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

ucos_iii/src/%.o: ../ucos_iii/src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -DDEBUG -D__CODE_RED -g3 -mcpu=cortex-m3 -mthumb -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


