cc_library(
	name = "haptic",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/haptic/windows:windows"
		],
	}),
	visibility = ["//visibility:public"],
)
