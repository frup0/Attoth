extends Control

var Play = "res://Scene/GameOne.tscn"
var Autors = "res://Scene/Autors.tscn"

func _on_Play_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(Play)

func _on_Quit_pressed():
	get_tree().quit()

func _on_Autors_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(Autors)
