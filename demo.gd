extends Node

func _ready() -> void:
	out.put("Click me to see where i was called from.")
	
	_another_print.call_deferred()

func _another_print():
	if true:
		pass
	else:
		pass
	
	out.put("Another print.")
