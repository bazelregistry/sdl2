cc_library(
	name = "timer",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/timer/windows:windows",
		],
	}),
	visibility = ["//visibility:public"],
)
