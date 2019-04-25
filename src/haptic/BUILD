cc_library(
	name = "haptic",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/haptic/windows:windows"
		],
		"//conditions:default": [
			# "//src/haptic/linux:linux",
		],
	}),
	visibility = ["//visibility:public"],
)
