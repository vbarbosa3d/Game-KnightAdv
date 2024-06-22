extends Label

const COLOR_LIST = ["#eb3495", "#5534eb", "#eb3d34", "#ebde34"]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var color_rand = Color(randf(), randf(), randf())
	self_modulate = color_rand
