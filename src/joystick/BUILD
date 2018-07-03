cc_library(
	name = "joystick",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/joystick/windows:windows",
		],
		# @TODO Add macos
		"//conditions:default": [
			"//src/joystick/linux:linux",
		],
	}),
	visibility = ["//visibility:public"],
)
