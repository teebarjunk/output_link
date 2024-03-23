class_name out

static func put(a0: Variant, a1: Variant = null, a2: Variant = null, a3: Variant = null, a4: Variant = null, a5: Variant = null):
	var stack := get_stack()
	var msg := "".join([a0, a1, a2, a3, a4, a5].map(func(x): return "" if x == null else str(x)))
	if stack:
		var s = stack[1]
		var scr = stack[1].source.rsplit("/", true, 1)[-1]
		print_rich("[url=%s|%s]%s[/url]" % [stack[1].source, stack[1].line, msg])
	else:
		print_rich(msg)

static func puts(a0: Variant, a1: Variant = null, a2: Variant = null, a3: Variant = null, a4: Variant = null, a5: Variant = null):
	var stack := get_stack()
	var msg := " ".join([a0, a1, a2, a3, a4, a5].map(func(x): return "" if x == null else str(x)))
	if stack:
		var s = stack[1]
		var scr = stack[1].source.rsplit("/", true, 1)[-1]
		print_rich("[url=%s|%s]%s[/url]" % [stack[1].source, stack[1].line, msg])
	else:
		print_rich(msg)
