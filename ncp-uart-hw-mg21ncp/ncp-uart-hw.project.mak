####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 14                                              #
####################################################################

BASE_SDK_PATH = /gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.2.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DEMBER_CUSTOM_MAC_FILTER_TABLE_SIZE=15' \
 '-DEFR32MG21A020F512IM32=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSEGGER_RTT_ALIGNMENT=1024' \
 '-DEMBER_AF_API_BOOTLOADER_INTERFACE=1' \
 '-DCORTEXM3=1' \
 '-DCORTEXM3_EFM32_MICRO=1' \
 '-DCORTEXM3_EFR32=1' \
 '-DPHY_RAIL=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DUSE_NVM3=1' \
 '-DUC_BUILD=1' \
 '-DEMBER_AF_NCP=1' \
 '-DEMBER_SERIAL1_RTSCTS=1' \
 '-DEZSP_UART=1' \
 '-DNO_USB=1' \
 '-DEMBER_MULTI_NETWORK_STRIPPED=1' \
 '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1'

ASM_DEFS += \
 '-DEMBER_CUSTOM_MAC_FILTER_TABLE_SIZE=15' \
 '-DEFR32MG21A020F512IM32=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSEGGER_RTT_ALIGNMENT=1024' \
 '-DEMBER_AF_API_BOOTLOADER_INTERFACE=1' \
 '-DCORTEXM3=1' \
 '-DCORTEXM3_EFM32_MICRO=1' \
 '-DCORTEXM3_EFR32=1' \
 '-DPHY_RAIL=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DRTT_USE_ASM=0' \
 '-DSEGGER_RTT_SECTION="SEGGER_RTT"' \
 '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' \
 '-DUSE_NVM3=1' \
 '-DUC_BUILD=1' \
 '-DEMBER_AF_NCP=1' \
 '-DEMBER_SERIAL1_RTSCTS=1' \
 '-DEZSP_UART=1' \
 '-DNO_USB=1' \
 '-DEMBER_MULTI_NETWORK_STRIPPED=1' \
 '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Include \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/driver/debug/inc \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(SDK_PATH)/platform/service/legacy_hal_wdog/inc \
 -I$(SDK_PATH)/platform/service/legacy_ncp_ash/inc \
 -I$(SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/mbedtls/library \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc/public \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg21 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/src \
 -I$(SDK_PATH)/util/third_party/segger/systemview/SEGGER \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/service/token_manager/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(SDK_PATH)/protocol/zigbee/stack/include \
 -I$(SDK_PATH)/protocol/zigbee/app/em260 \
 -I$(SDK_PATH)/protocol/zigbee/stack/platform/micro \
 -I$(SDK_PATH)/protocol/zigbee/stack/framework \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(SDK_PATH)/protocol/zigbee/app/xncp \
 -I$(SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(SDK_PATH)/protocol/zigbee/stack/zigbee \
 -I$(SDK_PATH)/protocol/zigbee/stack/security \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin \
 -I$(SDK_PATH)/protocol/zigbee \
 -I$(SDK_PATH)/protocol/zigbee/stack \
 -I$(SDK_PATH)/platform/radio/mac/rail_mux \
 -I$(SDK_PATH)/platform/radio/mac \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(SDK_PATH)/protocol/zigbee/stack/core \
 -I$(SDK_PATH)/protocol/zigbee/stack/mac \
 -I$(SDK_PATH)/protocol/zigbee/stack/zll

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg21_gcc_release.a \
 $(SDK_PATH)/protocol/zigbee/build/binding-table-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/binding-table-library.a \
 $(SDK_PATH)/protocol/zigbee/build/ncp-binding-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/ncp-binding-library.a \
 $(SDK_PATH)/protocol/zigbee/build/debug-basic-library-cortexm3-gcc-efr32mg21-rail/debug-basic-library.a \
 $(SDK_PATH)/protocol/zigbee/build/debug-extended-library-cortexm3-gcc-efr32mg21-rail/debug-extended-library.a \
 $(SDK_PATH)/protocol/zigbee/build/end-device-bind-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/end-device-bind-library.a \
 $(SDK_PATH)/protocol/zigbee/build/gp-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/gp-library.a \
 $(SDK_PATH)/protocol/zigbee/build/ncp-gp-library-cortexm3-gcc-efr32mg21-rail/ncp-gp-library.a \
 $(SDK_PATH)/protocol/zigbee/build/install-code-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/install-code-library.a \
 $(SDK_PATH)/protocol/zigbee/build/em260-uart-util-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/em260-uart-util-library.a \
 $(SDK_PATH)/protocol/zigbee/build/packet-validate-library-cortexm3-gcc-efr32mg21-rail/packet-validate-library.a \
 $(SDK_PATH)/protocol/zigbee/build/zigbee-pro-stack-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/zigbee-pro-stack.a \
 $(SDK_PATH)/protocol/zigbee/build/ncp-pro-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/ncp-pro-library.a \
 $(SDK_PATH)/protocol/zigbee/build/zigbee-r22-support-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/zigbee-r22-support-library.a \
 $(SDK_PATH)/protocol/zigbee/build/source-route-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/source-route-library.a \
 $(SDK_PATH)/protocol/zigbee/build/ncp-source-route-library-cortexm3-gcc-efr32mg21-rail/ncp-source-route-library.a \
 $(SDK_PATH)/protocol/zigbee/build/zll-library-cortexm3-gcc-efr32mg21-rail-ember_multi_network_stripped/zll-library.a \
 $(SDK_PATH)/protocol/zigbee/build/ncp-zll-library-cortexm3-gcc-efr32mg21-rail/ncp-zll-library.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -Wno-format \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-builtin-printf \
 -fno-builtin-sprintf \
 --specs=nano.specs \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces \
 -Wno-format \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile_base.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG21/Source/startup_efr32mg21.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Source/startup_efr32mg21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Source/startup_efr32mg21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Source/startup_efr32mg21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG21/Source/startup_efr32mg21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG21/Source/startup_efr32mg21.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32MG21/Source/system_efr32mg21.o

$(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o: $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/debug/src/sl_debug_swo.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/debug/src/sl_debug_swo.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o: $(SDK_PATH)/platform/emlib/src/em_rmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o: $(SDK_PATH)/platform/emlib/src/em_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_se.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o: $(SDK_PATH)/platform/emlib/src/em_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_wdog.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_rf_path/sl_rail_util_rf_path.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfrco.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfrco.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfrco.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfrco.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfrco.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfrco.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_debug.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_swo_itm_8.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_swo_itm_8.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_vuart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_vuart.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.o: $(SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/base-replacement.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/base-replacement.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-common.o: $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface-app.o: $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface-app.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface-app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface-app.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface-app.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface-app.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface-standalone.o: $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface-standalone.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface-standalone.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface-standalone.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface-standalone.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface-standalone.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface.o: $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/bootloader-interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/bootloader-interface.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.o: $(SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/diagnostic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/diagnostic.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.o: $(SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/ember-phy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-phy.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.o: $(SDK_PATH)/platform/service/legacy_hal/src/faults.s
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/faults.s'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/faults.s
ASMDEPS_s += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/faults.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.o: $(SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/token_legacy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/token_legacy.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o: $(SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.o: $(SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_ncp_ash/src/ash-ncp.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_ncp_ash/src/ash-ncp.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_printf/src/sl_legacy_printf.o: $(SDK_PATH)/platform/service/legacy_printf/src/sl_legacy_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_printf/src/sl_legacy_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_printf/src/sl_legacy_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_printf/src/sl_legacy_printf.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_printf/src/sl_legacy_printf.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manager.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_manufacturing.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_manufacturing.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-binding-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-binding-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-green-power-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-green-power-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-messaging-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-messaging-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-networking-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-networking-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-security-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-security-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-trust-center-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.o: $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/command-handlers-zll-generated.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/command-handlers-zll-generated.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.o: $(SDK_PATH)/protocol/zigbee/app/em260/em260-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/em260-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/em260-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/em260-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.o: $(SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/ncp-stack-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/ncp-stack-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.o: $(SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/em260/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/em260/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.o: $(SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/xncp/xncp-stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/xncp/xncp-stubs.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration.o: $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/ember-multi-network-stub.o: $(SDK_PATH)/protocol/zigbee/stack/core/ember-multi-network-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/core/ember-multi-network-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/core/ember-multi-network-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/ember-multi-network-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/ember-multi-network-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.o: $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.o: $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/core/multi-pan-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/core/multi-pan-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/aes-ecb.o: $(SDK_PATH)/protocol/zigbee/stack/framework/aes-ecb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/framework/aes-ecb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/framework/aes-ecb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/aes-ecb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/aes-ecb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.o: $(SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/framework/strong-random-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/strong-random-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o: $(SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o: $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/cbke-crypto-engine-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-no-vault.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-no-vault.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-no-vault.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-no-vault.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-no-vault.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-no-vault.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.o: $(SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/zigbee/aps-keys-full.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/zigbee/aps-keys-full.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_its_file.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_its_file.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_its_file.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_its_file.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_its_file.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_its_file.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o: $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_device_init_clocks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_power_manager_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_phy_select.o: autogen/sl_rail_util_ieee802154_phy_select.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_rail_util_ieee802154_phy_select.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_rail_util_ieee802154_phy_select.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_phy_select.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_phy_select.o

$(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_stack_event.o: autogen/sl_rail_util_ieee802154_stack_event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_rail_util_ieee802154_stack_event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_rail_util_ieee802154_stack_event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_stack_event.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_rail_util_ieee802154_stack_event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_ncp_callback_dispatcher.o: autogen/zigbee_ncp_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_ncp_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_ncp_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_ncp_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_ncp_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA