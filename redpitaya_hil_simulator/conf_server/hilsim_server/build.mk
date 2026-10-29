################################################################################
#
#   build.mk
#   ========
#
#   BBuild module build file for hilsim_server.
#
#   Date        Rev.No. Author      Description
#   ----------------------------------------------------------------------------
#   29.05.2024  v1.0    jbd         Copied from BBuild project
#   ----------------------------------------------------------------------------
#
#   Author Glossary:
#    - jbd : Johannes Berndorfer, ACIN, Technische Universität Wien
#
#   Copyright (c) 2024 Johannes Berndorfer
#   Konrad-Grefe-Gasse 22, 1230 Wien, Austria
#
################################################################################

ifndef hilsim_server.guard
hilsim_server.guard := 1
$(eval $(call component_init,hilsim_server))

hilsim_server.description := HIL Simluator TCP Server
hilsim_server.version.maj := 1
hilsim_server.version.min := 0
hilsim_server.version.rev := 1
hilsim_server.version     := $(hilsim_server.version.maj).$(hilsim_server.version.min)-rev$(hilsim_server.version.rev)
hilsim_server.license     := MIT

################################################################################

$(eval $(call add_module,hilsim_server,nljson))
$(eval $(call add_module,hilsim_server,base64))
$(eval $(call add_module,hilsim_server,spdlog))

hilsim_server.srcs        := main.c ipdriver.c cJSON.c tcp_server.c xdma.c daq.c
hilsim_server.srcs        := $(addprefix $(hilsim_server.dir)/src/,$(hilsim_server.srcs))
hilsim_server.header_dirs := $(hilsim_server.dir)/headers
hilsim_server.objs        := $(patsubst $(hilsim_server.dir)/src/%.cpp,$(hilsim_server.build_dir)/%.o,$(patsubst $(hilsim_server.dir)/src/%.c,$(hilsim_server.build_dir)/%.o,$(hilsim_server.srcs)))
hilsim_server.objdeps     := $(patsubst $(hilsim_server.build_dir)/%.o,$(hilsim_server.build_dir)/%.d,$(hilsim_server.objs))
hilsim_server.name        := hilsim_server

hilsim_server.build_targets := $(hilsim_server.build_dir)/$(hilsim_server.name)
hilsim_server.build_subdirs := 
hilsim_server.build_dirs    += $(addprefix $(hilsim_server.build_dir)/,$(hilsim_server.build_subdirs))

hilsim_server.buildtools.cc.flags        += -Wno-unused-variable -std=c11 $(RP_MODEL_DEFINE)
hilsim_server.buildtools.cc.header_dirs  += $(hilsim_server.header_dirs) $(nljson.header_dirs) $(spdlog.header_dirs) $(base64.header_dirs)
hilsim_server.buildtools.ccx.flags       += -Wno-unused-variable -std=c++17 $(RP_MODEL_DEFINE)
hilsim_server.buildtools.ccx.header_dirs += $(hilsim_server.buildtools.cc.header_dirs)
hilsim_server.buildtools.ld.flags        += -static -lpthread
hilsim_server.buildtools.ld.lib_dirs     += 

$(hilsim_server.build_dir)/%.o: $(hilsim_server.dir)/src/%.cpp | $(hilsim_server.build_dirs)
	$(call build_report,CCX)
	$(Q)$(hilsim_server.buildtools.ccx) $(addprefix -I,$(hilsim_server.buildtools.ccx.header_dirs)) -c $(hilsim_server.buildtools.ccx.flags) $< -o $@
	$(Q)$(hilsim_server.buildtools.ccx) $(addprefix -I,$(hilsim_server.buildtools.ccx.header_dirs)) $(hilsim_server.buildtools.ccx.flags) -MT $@ -MM $< -MF $(patsubst %.o,%.d,$@)

$(hilsim_server.build_dir)/%.o: $(hilsim_server.dir)/src/%.c | $(hilsim_server.build_dirs)
	$(call build_report,CC)
	$(Q)$(hilsim_server.buildtools.cc) $(addprefix -I,$(hilsim_server.buildtools.cc.header_dirs)) -c $(hilsim_server.buildtools.cc.flags) $< -o $@
	$(Q)$(hilsim_server.buildtools.cc) $(addprefix -I,$(hilsim_server.buildtools.cc.header_dirs)) $(hilsim_server.buildtools.cc.flags) -MT $@ -MM $< -MF $(patsubst %.o,%.d,$@)

$(hilsim_server.build_dir)/$(hilsim_server.name): $(hilsim_server.objs) | $(hilsim_server.build_dirs)
	$(call build_report,LD)
	$(Q)$(hilsim_server.buildtools.ld) $(addprefix -L,$(hilsim_server.buildtools.ld.lib_dirs)) -o $@ $(hilsim_server.objs) $(hilsim_server.buildtools.ld.flags)

-include $(hilsim_server.objdeps)

$(eval $(call component_finalize,hilsim_server))
endif # guard