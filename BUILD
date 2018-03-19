config_setting(
	name = "windows",
	values = {
		"cpu": "x64_windows",
	},
	visibility = ["//:__subpackages__"],
)

SDL_LINKOPTS = select({
	"//:windows": [
		"-DEFAULTLIB:user32",
		"-DEFAULTLIB:gdi32",
		"-DEFAULTLIB:winmm",
		"-DEFAULTLIB:imm32",
		"-DEFAULTLIB:ole32",
		"-DEFAULTLIB:oleaut32",
		"-DEFAULTLIB:version",
		"-DEFAULTLIB:uuid",
		"-DEFAULTLIB:shell32",
		"-DEFAULTLIB:advapi32",
	],
})

cc_library(
	name = "SDL2internal",
	hdrs = glob(["include/**/*.h", "src/*.h"]),
	includes = ["include", "src"],
	visibility = ["//:__subpackages__"],
)

cc_library(
	name = "SDL2",
	hdrs = glob(["include/**/*.h"]),
	includes = ["include", "src"],
	srcs = glob(["include/*.h", "src/*.c", "src/*.h"]),
	deps = [
		":SDL2internal",
		"//src/atomic:atomic",
		"//src/audio:audio",
		"//src/core:core",
		"//src/cpuinfo:cpuinfo",
		"//src/dynapi:dynapi",
		"//src/events:events",
		"//src/file:file",
		"//src/filesystem:filesystem",
		"//src/haptic:haptic",
		"//src/joystick:joystick",
		"//src/libm:libm",
		"//src/loadso:loadso",
		"//src/main:main",
		"//src/power:power",
		"//src/render:render",
		"//src/stdlib:stdlib",
		"//src/thread:thread",
		"//src/timer:timer",
		"//src/video:video",
	],
	linkopts = SDL_LINKOPTS,
	visibility = ["//visibility:public"],
)

cc_library(
	name = "SDL2test",
	hdrs = glob([
		"include/SDL_test*.h",
	]),
	srcs = glob([
		"src/test/**/*.c"
	]),
	deps = [
		"//:SDL2"
	],
)

###### SDL tests that auto close
cc_test(
	name = "SDLtest_testatomic",
	srcs = ["test/testatomic.c"],
	deps = ["//:SDL2test"],
)

cc_test(
	name = "SDLtest_testdisplayinfo",
	srcs = ["test/testdisplayinfo.c"],
	deps = ["//:SDL2test"],
)

cc_test(
	name = "SDLtest_testerror",
	srcs = ["test/testerror.c"],
	deps = ["//:SDL2test"],
)

cc_test(
	name = "SDLtest_testthread",
	srcs = ["test/testthread.c"],
	deps = ["//:SDL2test"],
)

cc_test(
	name = "SDLtest_testtimer",
	srcs = ["test/testtimer.c"],
	deps = ["//:SDL2test"],
)

###### SDL tests that don't auto close
cc_binary(
	name = "SDLtest_automation",
	srcs = glob(["test/testautomation*.c", "test/testautomation*.h"]),
	deps = ["//:SDL2test"]
)

cc_binary(
	name = "SDLtest_testaudiocapture",
	srcs = ["test/testaudiocapture.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testaudiohotplug",
	srcs = ["test/testaudiohotplug.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testaudioinfo",
	srcs = ["test/testaudioinfo.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testbounds",
	srcs = ["test/testbounds.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testcustomcursor",
	srcs = ["test/testcustomcursor.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testdraw2",
	srcs = ["test/testdraw2.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testdrawchessboard",
	srcs = ["test/testdrawchessboard.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testdropfile",
	srcs = ["test/testdropfile.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testfile",
	srcs = ["test/testfile.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testfilesystem",
	srcs = ["test/testfilesystem.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testgamecontroller",
	srcs = ["test/testgamecontroller.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testgesture",
	srcs = ["test/testgesture.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testgl2",
	srcs = ["test/testgl2.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testgles",
	srcs = ["test/testgles.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testgles2",
	srcs = ["test/testgles2.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testhaptic",
	srcs = ["test/testhaptic.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testhittesting",
	srcs = ["test/testhittesting.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testhotplug",
	srcs = ["test/testhotplug.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testiconv",
	srcs = ["test/testiconv.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testime",
	srcs = ["test/testime.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testintersections",
	srcs = ["test/testintersections.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testjoystick",
	srcs = ["test/testjoystick.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testkeys",
	srcs = ["test/testkeys.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testloadso",
	srcs = ["test/testloadso.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testlock",
	srcs = ["test/testlock.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testmultiaudio",
	srcs = ["test/testmultiaudio.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testscale",
	srcs = ["test/testscale.c"],
	deps = ["//:SDL2test"],
)

cc_binary(
	name = "SDLtest_testviewport",
	srcs = ["test/testviewport.c"],
	deps = ["//:SDL2test"],
)
