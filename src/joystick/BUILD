cc_library(
	name = "joystick",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/joystick/windows:windows",
		],
	}),
	visibility = ["//visibility:public"],
)
