#############################################################################
# Makefile for building: Geogebra
# Generated by qmake (3.1) (Qt 6.1.2)
# Project:  ..\Geogebra\Geogebra.pro
# Template: app
# Command: D:\6.1.2\msvc2019_64\bin\qmake.exe -o Makefile ..\Geogebra\Geogebra.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
#############################################################################

MAKEFILE      = Makefile

EQ            = =

first: debug
install: debug-install
uninstall: debug-uninstall
QMAKE         = D:\6.1.2\msvc2019_64\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = copy /y
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = copy /y
INSTALL_PROGRAM = copy /y
INSTALL_DIR   = xcopy /s /q /y /i
QINSTALL      = D:\6.1.2\msvc2019_64\bin\qmake.exe -install qinstall
QINSTALL_PROGRAM = D:\6.1.2\msvc2019_64\bin\qmake.exe -install qinstall -exe
DEL_FILE      = del
SYMLINK       = $(QMAKE) -install ln -f -s
DEL_DIR       = rmdir
MOVE          = move
IDC           = idc
IDL           = midl
ZIP           = zip -r -9
DEF_FILE      = 
RES_FILE      = 
SED           = $(QMAKE) -install sed
MOVE          = move
SUBTARGETS    =  \
		debug \
		release


debug: $(MAKEFILE) FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug 
debug-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug uninstall
release: $(MAKEFILE) FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release
release-make_first: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release 
release-all: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: FORCE
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release uninstall

Makefile: ..\Geogebra\Geogebra.pro D:\6.1.2\msvc2019_64\mkspecs\win32-msvc\qmake.conf D:\6.1.2\msvc2019_64\mkspecs\features\spec_pre.prf \
		D:\6.1.2\msvc2019_64\mkspecs\common\windows-desktop.conf \
		D:\6.1.2\msvc2019_64\mkspecs\features\win32\windows_vulkan_sdk.prf \
		D:\6.1.2\msvc2019_64\mkspecs\common\windows-vulkan.conf \
		D:\6.1.2\msvc2019_64\mkspecs\common\msvc-desktop.conf \
		D:\6.1.2\msvc2019_64\mkspecs\qconfig.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_ext_freetype.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_ext_libpng.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3danimation.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3danimation_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dcore.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dcore_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dextras.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dextras_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dinput.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dinput_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dlogic.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dlogic_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquick.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquick_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickanimation.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickanimation_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickextras.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickextras_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickinput.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickinput_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickrender.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickrender_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickscene2d.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickscene2d_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3drender.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3drender_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_activeqt.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_activeqt_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axbase_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axcontainer.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axcontainer_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axserver.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axserver_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_bodymovin_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_charts.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_charts_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_concurrent.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_concurrent_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core5compat.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core5compat_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_datavisualization.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_datavisualization_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_dbus.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_dbus_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_designer.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_designer_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_designercomponents_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_entrypoint_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_fb_support_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_gui.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_gui_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_help.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_help_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsanimation.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsanimation_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsfolderlistmodel.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsfolderlistmodel_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsqmlmodels.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsqmlmodels_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssettings.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssettings_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssharedimage.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssharedimage_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labswavefrontmesh.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labswavefrontmesh_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_linguist.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_linguist_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_network.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_network_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_networkauth.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_networkauth_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_opengl.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_opengl_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_packetprotocol_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_printsupport.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_printsupport_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qml.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qml_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlcompiler_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmldebug_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmldevtools_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmldom_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmllocalstorage.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmllocalstorage_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmltest.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmltest_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3d.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3d_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3diblbaker.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3diblbaker_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dparticles.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dparticles_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicklayouts.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicklayouts_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickparticles_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickshapes_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxml.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxml_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxmlqml.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxmlqml_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_shadertools.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_shadertools_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_sql.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_sql_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachine.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachine_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachineqml.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachineqml_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svg.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svg_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_testlib.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_testlib_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_tools_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_uiplugin.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_uitools.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_uitools_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_virtualkeyboard.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_virtualkeyboard_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_widgets.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_widgets_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_xml.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_xml_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_zlib_private.pri \
		D:\6.1.2\msvc2019_64\mkspecs\features\qt_functions.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\qt_config.prf \
		D:\6.1.2\msvc2019_64\mkspecs\win32-msvc\qmake.conf \
		D:\6.1.2\msvc2019_64\mkspecs\features\spec_post.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\exclusive_builds.prf \
		D:\6.1.2\msvc2019_64\mkspecs\common\msvc-version.conf \
		D:\6.1.2\msvc2019_64\mkspecs\features\toolchain.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\default_pre.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\win32\default_pre.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\resolve_config.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\exclusive_builds_post.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\default_post.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\qml_debug.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\entrypoint.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\precompile_header.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\warn_on.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\qt.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\resources_functions.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\resources.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\moc.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\win32\opengl.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\uic.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\qmake_use.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\file_copies.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\win32\windows.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\testcase_targets.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\exceptions.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\yacc.prf \
		D:\6.1.2\msvc2019_64\mkspecs\features\lex.prf \
		..\Geogebra\Geogebra.pro \
		D:\6.1.2\msvc2019_64\lib\Qt6Widgets.prl \
		D:\6.1.2\msvc2019_64\lib\Qt6Gui.prl \
		D:\6.1.2\msvc2019_64\lib\Qt6Core.prl \
		D:\6.1.2\msvc2019_64\lib\Qt6EntryPoint.prl \
		.qmake.stash \
		D:\6.1.2\msvc2019_64\mkspecs\features\build_pass.prf \
		D:\6.1.2\msvc2019_64\lib\Qt6Widgetsd.prl \
		D:\6.1.2\msvc2019_64\lib\Qt6Guid.prl \
		D:\6.1.2\msvc2019_64\lib\Qt6Cored.prl \
		D:\6.1.2\msvc2019_64\lib\Qt6EntryPointd.prl
	$(QMAKE) -o Makefile ..\Geogebra\Geogebra.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"
D:\6.1.2\msvc2019_64\mkspecs\features\spec_pre.prf:
D:\6.1.2\msvc2019_64\mkspecs\common\windows-desktop.conf:
D:\6.1.2\msvc2019_64\mkspecs\features\win32\windows_vulkan_sdk.prf:
D:\6.1.2\msvc2019_64\mkspecs\common\windows-vulkan.conf:
D:\6.1.2\msvc2019_64\mkspecs\common\msvc-desktop.conf:
D:\6.1.2\msvc2019_64\mkspecs\qconfig.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_ext_freetype.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_ext_libpng.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3danimation.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3danimation_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dcore.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dcore_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dextras.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dextras_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dinput.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dinput_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dlogic.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dlogic_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquick.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquick_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickanimation.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickanimation_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickextras.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickextras_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickinput.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickinput_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickrender.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickrender_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickscene2d.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3dquickscene2d_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3drender.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_3drender_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_activeqt.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_activeqt_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axbase_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axcontainer.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axcontainer_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axserver.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_axserver_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_bodymovin_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_charts.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_charts_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_concurrent.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_concurrent_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core5compat.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core5compat_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_core_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_datavisualization.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_datavisualization_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_dbus.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_dbus_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_designer.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_designer_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_designercomponents_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_devicediscovery_support_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_entrypoint_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_fb_support_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_gui.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_gui_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_help.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_help_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsanimation.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsanimation_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsfolderlistmodel.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsfolderlistmodel_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsqmlmodels.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labsqmlmodels_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssettings.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssettings_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssharedimage.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labssharedimage_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labswavefrontmesh.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_labswavefrontmesh_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_linguist.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_linguist_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_network.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_network_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_networkauth.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_networkauth_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_opengl.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_opengl_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_openglwidgets_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_packetprotocol_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_printsupport.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_printsupport_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qml.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qml_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlcompiler_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmldebug_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmldevtools_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmldom_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmllocalstorage.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmllocalstorage_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlmodels_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmltest.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmltest_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_qmlworkerscript_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3d.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3d_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dassetimport_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3diblbaker.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3diblbaker_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dparticles.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dparticles_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3druntimerender_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick3dutils_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quick_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickcontrols2impl_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicklayouts.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicklayouts_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickparticles_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickshapes_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quicktemplates2_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_quickwidgets_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxml.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxml_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxmlqml.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_scxmlqml_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_shadertools.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_shadertools_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_sql.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_sql_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachine.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachine_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachineqml.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_statemachineqml_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svg.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svg_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_svgwidgets_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_testlib.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_testlib_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_tools_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_uiplugin.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_uitools.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_uitools_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_virtualkeyboard.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_virtualkeyboard_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_widgets.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_widgets_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_xml.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_xml_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\modules\qt_lib_zlib_private.pri:
D:\6.1.2\msvc2019_64\mkspecs\features\qt_functions.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\qt_config.prf:
D:\6.1.2\msvc2019_64\mkspecs\win32-msvc\qmake.conf:
D:\6.1.2\msvc2019_64\mkspecs\features\spec_post.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\exclusive_builds.prf:
D:\6.1.2\msvc2019_64\mkspecs\common\msvc-version.conf:
D:\6.1.2\msvc2019_64\mkspecs\features\toolchain.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\default_pre.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\win32\default_pre.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\resolve_config.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\exclusive_builds_post.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\default_post.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\qml_debug.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\entrypoint.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\precompile_header.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\warn_on.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\qt.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\resources_functions.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\resources.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\moc.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\win32\opengl.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\uic.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\qmake_use.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\file_copies.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\win32\windows.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\testcase_targets.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\exceptions.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\yacc.prf:
D:\6.1.2\msvc2019_64\mkspecs\features\lex.prf:
..\Geogebra\Geogebra.pro:
D:\6.1.2\msvc2019_64\lib\Qt6Widgets.prl:
D:\6.1.2\msvc2019_64\lib\Qt6Gui.prl:
D:\6.1.2\msvc2019_64\lib\Qt6Core.prl:
D:\6.1.2\msvc2019_64\lib\Qt6EntryPoint.prl:
.qmake.stash:
D:\6.1.2\msvc2019_64\mkspecs\features\build_pass.prf:
D:\6.1.2\msvc2019_64\lib\Qt6Widgetsd.prl:
D:\6.1.2\msvc2019_64\lib\Qt6Guid.prl:
D:\6.1.2\msvc2019_64\lib\Qt6Cored.prl:
D:\6.1.2\msvc2019_64\lib\Qt6EntryPointd.prl:
qmake: FORCE
	@$(QMAKE) -o Makefile ..\Geogebra\Geogebra.pro -spec win32-msvc "CONFIG+=debug" "CONFIG+=qml_debug"

qmake_all: FORCE

make_first: debug-make_first release-make_first  FORCE
all: debug-all release-all  FORCE
clean: debug-clean release-clean  FORCE
	-$(DEL_FILE) Geogebra.vc.pdb
	-$(DEL_FILE) Geogebra.ilk
	-$(DEL_FILE) Geogebra.idb
distclean: debug-distclean release-distclean  FORCE
	-$(DEL_FILE) Makefile
	-$(DEL_FILE) .qmake.stash Geogebra.pdb

debug-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocclean
release-mocclean:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocclean
mocclean: debug-mocclean release-mocclean

debug-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Debug mocables
release-mocables:
	@set MAKEFLAGS=$(MAKEFLAGS)
	$(MAKE) -f $(MAKEFILE).Release mocables
mocables: debug-mocables release-mocables

check: first

benchmark: first
FORCE:

$(MAKEFILE).Debug: Makefile
$(MAKEFILE).Release: Makefile
