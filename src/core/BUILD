cc_library(
	name = "core",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/core/windows:windows"
		],
		"//conditions:default": [
			# "//src/core/unix:unix",
			# "//src/core/linux:linux",
		],
	}),
	visibility = ["//visibility:public"],
)
