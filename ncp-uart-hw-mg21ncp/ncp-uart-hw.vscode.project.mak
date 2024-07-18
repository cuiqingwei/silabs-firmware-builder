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

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA