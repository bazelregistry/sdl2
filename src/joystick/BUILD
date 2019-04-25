cc_library(
	name = "joystick",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			# "//src/joystick/dummy:dummy",
			"//src/joystick/windows:windows",
			"//src/joystick/hidapi:SDL_hidapi",
		],
		# @TODO Add macos
		"//conditions:default": [
			# "//src/joystick/linux:linux",
		],
	}),
	visibility = ["//visibility:public"],
)
