cc_library(
	name = "power",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/power/windows:windows",
		],
	}),
	visibility = ["//visibility:public"],
)
