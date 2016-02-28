################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include ucos_iii/src/subdir.mk
-include example/src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: ucos_iii_blinky.axf

# Tool invocations
ucos_iii_blinky.axf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MCU Linker'
	arm-none-eabi-gcc -nostdlib -L"C:\Users\nykos\src\cpu-achitecture\examples\lpc_chip_175x_6x\Debug" -L"C:\Users\nykos\src\cpu-achitecture\examples\lpc_board_nxp_lpcxpresso_1769\Debug" -Xlinker -Map="ucos_iii_blinky.map" -Xlinker --gc-sections -mcpu=cortex-m3 -mthumb -T "ucos_iii_blinky_Debug.ld" -o "ucos_iii_blinky.axf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES) ucos_iii_blinky.axf
	-@echo ' '

post-build:
	-@echo 'Performing post-build steps'
	-arm-none-eabi-size "ucos_iii_blinky.axf"; # arm-none-eabi-objcopy -v -O binary "ucos_iii_blinky.axf" "ucos_iii_blinky.bin" ; # checksum -p LPC1769 -d "ucos_iii_blinky.bin";
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
