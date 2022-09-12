extends Node2D


func _on_Play_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Scene/GameOne.tscn")
