extends AudioStreamPlayer2D

func _ready():
	pass

# warning-ignore:unused_argument
func _process(delta):
	
	self.global_position = get_global_mouse_position()
	
	
	
	if $AudioStreamPlayer2D.play() == false:
		$AudioStreamPlayer2D.play()
	pass
