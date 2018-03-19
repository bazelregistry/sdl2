cc_library(
	name = "core",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/core/windows:windows"
		],
	}),
	visibility = ["//visibility:public"],
)
