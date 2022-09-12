extends Control

var Autors = "res://Scene/Autors.tscn/"

func _on_Autors_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene(Autors)


func _on_Quit_pressed():
	get_tree().quit()


func _on_Play2_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scene/GameOne.tscn/")
