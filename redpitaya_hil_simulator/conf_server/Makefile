################################################################################

ROOT_DIR    := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
BBUILD_DIR  := $(ROOT_DIR)/bbuild
ROOT_MKFILE := $(abspath $(lastword $(MAKEFILE_LIST)))
Q:=@

MODULES_AVAILABLE :=
ROOT_MODULES :=

BBUILD_VERSION := 0.0.3

RP_MODEL := $(shell /opt/redpitaya/bin/monitor -f)
ifeq ($(RP_MODEL),z20_125)
  RP_MODEL_DEFINE := -DRP_Z20_125
else ifeq ($(RP_MODEL),z20_125_v2)
  RP_MODEL_DEFINE := -DRP_Z20_125_V2
else
  $(error Unsupported Red Pitaya model detected: $(RP_MODEL))
endif

##### CONFIGURATION ############################################################

include $(ROOT_DIR)/buildconf.mk

################################################################################

define component_init =

# Initialize component
$(1).requires :=

# Initialize Build Directory
$(1).dir := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))
$(1).mkfile := $(abspath $(lastword $(MAKEFILE_LIST)))
$(1).build_dir := $(CONFIG_BUILD_DIR)/$(1)
$(1).build_dirs := $$($(1).build_dir)
$(1).prebuild_targets :=

# Initialize build component flags
$(1).buildtools.cc          := $(CONFIG_CC_PATH)
$(1).buildtools.cc.flags    := $(CONFIG_CC_DEFAULT_FLAGS)
$(1).buildtools.ccx         := $(CONFIG_CCX_PATH)
$(1).buildtools.ccx.flags   := $(CONFIG_CCX_DEFAULT_FLAGS)
$(1).buildtools.ld          := $(CONFIG_LD_PATH)
$(1).buildtools.ld.flags    := $(CONFIG_LD_DEFAULT_FLAGS)
$(1).buildtools.ld.libpaths :=
$(1).buildtools.ar          := $(CONFIG_AR_PATH)

endef

define dependency_rule =
$(1): $(2)
endef

define mkdir_rule =
$(1):
	$$(Q)mkdir -p $$@
endef

define component_finalize =

# Create target.
$$($(1).build_dir)/.bbuild_module: $$($(1).build_targets)
	@printf '$(shell tput bold && tput setaf 2)[+] Successfully built $(1)$(shell tput sgr0)\n'
	@touch $$($(1).build_dir)/.bbuild_module

$$(foreach build_subdir,$$($(1).build_dirs),$$(eval $$(call mkdir_rule,$$(build_subdir))))

$$(foreach prebuild_target,$$($(1).prebuild_targets),$$(eval $$(call dependency_rule,$$(prebuild_target),| $$($(1).build_dirs))))
$$(foreach require,$$($(1).requires),$$(eval $$(call dependency_rule,$$(require),$$($(1).prebuild_targets) | $$($(1).build_dirs))))
$$(foreach build_target,$$($(1).build_targets),$$(eval $$(call dependency_rule,$$(build_target),$$($(1).requires) $$($(1).prebuild_targets) | $$($(1).build_dirs))))

endef


define add_module =
# Include the module Makefile.
include $(foreach m,$(MODULES_AVAILABLE),$(if $(filter $(2),$(notdir $(abspath $(m)))), $(abspath $(m)/build.mk)))
$(1).requires += $$($(2).build_dir)/.bbuild_module
endef

# Helpers
define build_report
 @printf '$(shell tput setaf 2)[ %s ] %s\n$(shell tput sgr0)' $(1) $(dir $@)$(notdir $@)
endef

define print_info
 @printf '$(shell tput setaf 4)$(1)$(shell tput sgr0)\n'
endef

define print_err
 @printf '$(shell tput setaf 1)$(1)$(shell tput sgr0)\n'
endef

define exit_err
 @bash -c 'exit $(1)'
endef

# Setup root requires.
__root.requires :=

################################################################################

# Add root modules
$(foreach m,$(ROOT_MODULES),$(eval $(call add_module,__root,$(m))))

################################################################################

.PHONY: default
.DEFAULT_GOAL := default
default: all

.PHONY: all
all: __build_finish
# __build_start $(CONFIG_BUILD_DIR) __root_build_targets

.PHONY: clean
clean:
	@printf '$(shell tput bold && tput setaf 1)Cleaning build directory...$(shell tput sgr0)\n'
	$(Q)rm -rf $(CONFIG_BUILD_DIR)/*

.PHONY: $(CONFIG_BUILD_DIR)
$(CONFIG_BUILD_DIR): __build_start
	$(Q) mkdir -p $@

.PHONY: __build_start
__build_start:
	@printf '$(shell tput bold && tput setaf 4)**** Running BBuild Version $(BBUILD_VERSION), Copyright (c) 2023-2024 betec7 GmbH ****$(shell tput sgr0)\n\n'

.PHONY: __build_finish
__build_finish: __root_build_targets
	@printf '\n$(shell tput bold && tput setaf 4)**** Build finished on $(shell date) ****$(shell tput sgr0)\n'

ifeq ($(CONFIG_BUILD_CONTAINER),host)

# Normal build mode. We build everything on the host. 
#.PHONY: __root_build_targets
__root_build_targets:  __build_start $(__root.requires) $(CONFIG_BUILD_DIR)

else ifeq ($(CONFIG_BUILD_CONTAINER),docker)

# Build everything inside a build container.
include $(BBUILD_DIR)/docker_integration.mk

else

# Specified build container is not known. Error.
.PHONY: __root_build_targets
__root_build_targets: $(CONFIG_BUILD_DIR)
	$(call print_err,Invalid build container specified: CONFIG_BUILD_CONTAINER = $(CONFIG_BUILD_CONTAINER))
	$(call exit_err,1)

endif



## EOF #########################################################################
