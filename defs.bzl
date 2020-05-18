def _impl(ctx):
    print(ctx.attr.value)

# Rule declaration:
print_d = rule(
    implementation = _impl,
    attrs = {"value": attr.string()},
)
