cc_library(
	name = "render",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]),
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/render/direct3d:direct3d",
			"//src/render/direct3d11:direct3d11",
			"//src/render/opengl:opengl",
			"//src/render/opengles:opengles",
			"//src/render/opengles2:opengles2",
			"//src/render/software:software",
		]
	}),
	visibility = ["//visibility:public"],
)
