MISSING_IMPL_GENERIC = select({
	"//:windows": [
		# Missing SDL_CreateCond, SDL_DestroyCond, SDL_CondBroadcast,
		# SDL_CondWaitTimeout on the windows platform
		"generic/SDL_syscond.c",
	],
	"//conditions:default": [],
})

cc_library(
	name = "thread",
	hdrs = glob(["*.h"]),
	srcs = glob(["*.c"]) + MISSING_IMPL_GENERIC,
	deps = ["//:SDL2internal"] + select({
		"//:windows": [
			"//src/thread/windows:windows",
		],
	}),
	visibility = ["//visibility:public"],
)
