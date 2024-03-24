class_name out

static func put(a0: Variant, a1: Variant = null, a2: Variant = null, a3: Variant = null, a4: Variant = null, a5: Variant = null):
	var stack := get_stack()
	var msg := "".join([a0, a1, a2, a3, a4, a5].map(func(x): return "" if x == null else str(x)))
	if stack:
		print_rich("[url=%s|%s]%s[/url]" % [stack[1].source, stack[1].line, msg])
	# if Engine.is_editor_hint() == true there will be no stack.
	else:
		print_rich(msg)

static func puts(a0: Variant, a1: Variant = null, a2: Variant = null, a3: Variant = null, a4: Variant = null, a5: Variant = null):
	var stack := get_stack()
	var msg := " ".join([a0, a1, a2, a3, a4, a5].map(func(x): return "" if x == null else str(x)))
	if stack:
		print_rich("[url=%s|%s]%s[/url]" % [stack[1].source, stack[1].line, msg])
	# if Engine.is_editor_hint() == true there will be no stack.
	else:
		print_rich(msg)
