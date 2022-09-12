extends Button

var Pause = "res://Scene/Pause.tscn"

func _on_Pause_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(Pause)
