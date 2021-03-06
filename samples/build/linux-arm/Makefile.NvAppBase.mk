# Makefile generated by XPJ for linux-arm
-include Makefile.custom
ProjectName = NvAppBase
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/NvAppBase.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/NvFoundationInit.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/NvFramerateCounter.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/NvInputHandler_CameraFly.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/NvInputTransformer.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/NvSampleApp.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/linux/MainLinux.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/linux/NvThreadPosix.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/gl/NvAppContextGL.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/gl/NvSampleAppGL.cpp
NvAppBase_cppfiles   += ./../../../extensions/src/NvAppBase/glfw/InputCallbacksGLFW.cpp

NvAppBase_cpp_debug_dep    = $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(NvAppBase_cppfiles)))))
NvAppBase_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(NvAppBase_ccfiles)))))
NvAppBase_c_debug_dep      = $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(NvAppBase_cfiles)))))
NvAppBase_debug_dep      = $(NvAppBase_cpp_debug_dep) $(NvAppBase_cc_debug_dep) $(NvAppBase_c_debug_dep)
-include $(NvAppBase_debug_dep)
NvAppBase_cpp_release_dep    = $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(NvAppBase_cppfiles)))))
NvAppBase_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(NvAppBase_ccfiles)))))
NvAppBase_c_release_dep      = $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(NvAppBase_cfiles)))))
NvAppBase_release_dep      = $(NvAppBase_cpp_release_dep) $(NvAppBase_cc_release_dep) $(NvAppBase_c_release_dep)
-include $(NvAppBase_release_dep)
NvAppBase_debug_hpaths    := 
NvAppBase_debug_hpaths    += ./../../../extensions/src
NvAppBase_debug_hpaths    += ./../../../extensions/src/NvAppBase
NvAppBase_debug_hpaths    += ./../../../extensions/include
NvAppBase_debug_hpaths    += ./../../../extensions/include/NsFoundation
NvAppBase_debug_hpaths    += ./../../../extensions/include/NvFoundation
NvAppBase_debug_hpaths    += ./../../../extensions/externals/include
NvAppBase_debug_hpaths    += ./../../../extensions/externals/include/GLFW
NvAppBase_debug_lpaths    := 
NvAppBase_debug_defines   := $(NvAppBase_custom_defines)
NvAppBase_debug_defines   += LINUX=1
NvAppBase_debug_defines   += NV_LINUX
NvAppBase_debug_defines   += GLEW_NO_GLU=1
NvAppBase_debug_defines   += _DEBUG
NvAppBase_debug_libraries := 
NvAppBase_debug_common_cflags	:= $(NvAppBase_custom_cflags)
NvAppBase_debug_common_cflags    += -MMD
NvAppBase_debug_common_cflags    += $(addprefix -D, $(NvAppBase_debug_defines))
NvAppBase_debug_common_cflags    += $(addprefix -I, $(NvAppBase_debug_hpaths))
NvAppBase_debug_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -pthread
NvAppBase_debug_common_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
NvAppBase_debug_cflags	:= $(NvAppBase_debug_common_cflags)
NvAppBase_debug_cppflags	:= $(NvAppBase_debug_common_cflags)
NvAppBase_debug_cppflags  += -Wno-reorder -std=c++11
NvAppBase_debug_cppflags  += -Wno-reorder
NvAppBase_debug_lflags    := $(NvAppBase_custom_lflags)
NvAppBase_debug_lflags    += $(addprefix -L, $(NvAppBase_debug_lpaths))
NvAppBase_debug_lflags    += -Wl,--start-group $(addprefix -l, $(NvAppBase_debug_libraries)) -Wl,--end-group
NvAppBase_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs -pthread
NvAppBase_debug_objsdir  = $(OBJS_DIR)/NvAppBase_debug
NvAppBase_debug_cpp_o    = $(addprefix $(NvAppBase_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvAppBase_cppfiles)))))
NvAppBase_debug_cc_o    = $(addprefix $(NvAppBase_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(NvAppBase_ccfiles)))))
NvAppBase_debug_c_o      = $(addprefix $(NvAppBase_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(NvAppBase_cfiles)))))
NvAppBase_debug_obj      =  $(NvAppBase_debug_cpp_o) $(NvAppBase_debug_cc_o) $(NvAppBase_debug_c_o) 
NvAppBase_debug_bin      := ./../../../extensions/lib/linux-arm/libNvAppBaseD.a

clean_NvAppBase_debug: 
	@$(ECHO) clean NvAppBase debug
	@$(RMDIR) $(NvAppBase_debug_objsdir)
	@$(RMDIR) $(NvAppBase_debug_bin)
	@$(RMDIR) $(DEPSDIR)/NvAppBase/debug

build_NvAppBase_debug: postbuild_NvAppBase_debug
postbuild_NvAppBase_debug: mainbuild_NvAppBase_debug
mainbuild_NvAppBase_debug: prebuild_NvAppBase_debug $(NvAppBase_debug_bin)
prebuild_NvAppBase_debug:

$(NvAppBase_debug_bin): $(NvAppBase_debug_obj) 
	mkdir -p `dirname ./../../../extensions/lib/linux-arm/libNvAppBaseD.a`
	@$(AR) rcs $(NvAppBase_debug_bin) $(NvAppBase_debug_obj)
	$(ECHO) building $@ complete!

NvAppBase_debug_DEPDIR = $(dir $(@))/$(*F)
$(NvAppBase_debug_cpp_o): $(NvAppBase_debug_objsdir)/%.o:
	$(ECHO) NvAppBase: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(NvAppBase_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cppfiles))))))
	cp $(NvAppBase_debug_DEPDIR).d $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvAppBase_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cppfiles))))).P; \
	  rm -f $(NvAppBase_debug_DEPDIR).d

$(NvAppBase_debug_cc_o): $(NvAppBase_debug_objsdir)/%.o:
	$(ECHO) NvAppBase: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(NvAppBase_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_ccfiles))))))
	cp $(NvAppBase_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvAppBase_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_ccfiles))))).debug.P; \
	  rm -f $(NvAppBase_debug_DEPDIR).d

$(NvAppBase_debug_c_o): $(NvAppBase_debug_objsdir)/%.o:
	$(ECHO) NvAppBase: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(NvAppBase_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cfiles))))))
	cp $(NvAppBase_debug_DEPDIR).d $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvAppBase_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/NvAppBase/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_debug_objsdir),, $@))), $(NvAppBase_cfiles))))).P; \
	  rm -f $(NvAppBase_debug_DEPDIR).d

NvAppBase_release_hpaths    := 
NvAppBase_release_hpaths    += ./../../../extensions/src
NvAppBase_release_hpaths    += ./../../../extensions/src/NvAppBase
NvAppBase_release_hpaths    += ./../../../extensions/include
NvAppBase_release_hpaths    += ./../../../extensions/include/NsFoundation
NvAppBase_release_hpaths    += ./../../../extensions/include/NvFoundation
NvAppBase_release_hpaths    += ./../../../extensions/externals/include
NvAppBase_release_hpaths    += ./../../../extensions/externals/include/GLFW
NvAppBase_release_lpaths    := 
NvAppBase_release_defines   := $(NvAppBase_custom_defines)
NvAppBase_release_defines   += LINUX=1
NvAppBase_release_defines   += NV_LINUX
NvAppBase_release_defines   += GLEW_NO_GLU=1
NvAppBase_release_defines   += NDEBUG
NvAppBase_release_libraries := 
NvAppBase_release_common_cflags	:= $(NvAppBase_custom_cflags)
NvAppBase_release_common_cflags    += -MMD
NvAppBase_release_common_cflags    += $(addprefix -D, $(NvAppBase_release_defines))
NvAppBase_release_common_cflags    += $(addprefix -I, $(NvAppBase_release_hpaths))
NvAppBase_release_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -pthread
NvAppBase_release_cflags	:= $(NvAppBase_release_common_cflags)
NvAppBase_release_cppflags	:= $(NvAppBase_release_common_cflags)
NvAppBase_release_cppflags  += -Wno-reorder -std=c++11
NvAppBase_release_cppflags  += -Wno-reorder
NvAppBase_release_lflags    := $(NvAppBase_custom_lflags)
NvAppBase_release_lflags    += $(addprefix -L, $(NvAppBase_release_lpaths))
NvAppBase_release_lflags    += -Wl,--start-group $(addprefix -l, $(NvAppBase_release_libraries)) -Wl,--end-group
NvAppBase_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs -pthread
NvAppBase_release_objsdir  = $(OBJS_DIR)/NvAppBase_release
NvAppBase_release_cpp_o    = $(addprefix $(NvAppBase_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvAppBase_cppfiles)))))
NvAppBase_release_cc_o    = $(addprefix $(NvAppBase_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(NvAppBase_ccfiles)))))
NvAppBase_release_c_o      = $(addprefix $(NvAppBase_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(NvAppBase_cfiles)))))
NvAppBase_release_obj      =  $(NvAppBase_release_cpp_o) $(NvAppBase_release_cc_o) $(NvAppBase_release_c_o) 
NvAppBase_release_bin      := ./../../../extensions/lib/linux-arm/libNvAppBase.a

clean_NvAppBase_release: 
	@$(ECHO) clean NvAppBase release
	@$(RMDIR) $(NvAppBase_release_objsdir)
	@$(RMDIR) $(NvAppBase_release_bin)
	@$(RMDIR) $(DEPSDIR)/NvAppBase/release

build_NvAppBase_release: postbuild_NvAppBase_release
postbuild_NvAppBase_release: mainbuild_NvAppBase_release
mainbuild_NvAppBase_release: prebuild_NvAppBase_release $(NvAppBase_release_bin)
prebuild_NvAppBase_release:

$(NvAppBase_release_bin): $(NvAppBase_release_obj) 
	mkdir -p `dirname ./../../../extensions/lib/linux-arm/libNvAppBase.a`
	@$(AR) rcs $(NvAppBase_release_bin) $(NvAppBase_release_obj)
	$(ECHO) building $@ complete!

NvAppBase_release_DEPDIR = $(dir $(@))/$(*F)
$(NvAppBase_release_cpp_o): $(NvAppBase_release_objsdir)/%.o:
	$(ECHO) NvAppBase: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(NvAppBase_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cppfiles))))))
	cp $(NvAppBase_release_DEPDIR).d $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvAppBase_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cppfiles))))).P; \
	  rm -f $(NvAppBase_release_DEPDIR).d

$(NvAppBase_release_cc_o): $(NvAppBase_release_objsdir)/%.o:
	$(ECHO) NvAppBase: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(NvAppBase_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_ccfiles))))))
	cp $(NvAppBase_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvAppBase_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_ccfiles))))).release.P; \
	  rm -f $(NvAppBase_release_DEPDIR).d

$(NvAppBase_release_c_o): $(NvAppBase_release_objsdir)/%.o:
	$(ECHO) NvAppBase: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(NvAppBase_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cfiles))))))
	cp $(NvAppBase_release_DEPDIR).d $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvAppBase_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/NvAppBase/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvAppBase_release_objsdir),, $@))), $(NvAppBase_cfiles))))).P; \
	  rm -f $(NvAppBase_release_DEPDIR).d

clean_NvAppBase:  clean_NvAppBase_debug clean_NvAppBase_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
