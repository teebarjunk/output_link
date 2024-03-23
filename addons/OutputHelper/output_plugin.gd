@tool
extends EditorPlugin

func _enter_tree() -> void:
	var editor: Node = EditorInterface.get_base_control().find_child("*EditorLog*", true, false)
	var rt: RichTextLabel = editor.find_child("*RichTextLabel*", true, false)
	# Prevent it from opening a browser window.
	for con in rt.meta_clicked.get_connections():
		rt.meta_clicked.disconnect(con.callable)
	# Pass meta clicks to our custom function.
	rt.meta_clicked.connect(_meta_clicked)
	# Make it look normal.
	rt.meta_underlined = false

func _meta_clicked(meta: String):
	var parts := meta.split("|", true, 1)
	var script_path := parts[0]
	var script_line := parts[1].to_int()
	# Swap to script editor if we aren't already.
	EditorInterface.set_main_screen_editor("Script")
	# Load script and highlight line.
	EditorInterface.edit_script(load(script_path), script_line)

func _exit_tree() -> void:
	var editor: Node = EditorInterface.get_base_control().find_child("*EditorLog*", true, false)
	var rt: RichTextLabel = editor.find_child("*RichTextLabel*", true, false)
	# Prevent it from opening a browser window.
	for con in rt.meta_clicked.get_connections():
		rt.meta_clicked.disconnect(con.callable)
