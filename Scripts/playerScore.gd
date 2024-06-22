extends Label

@onready var timer = $Timer

func _ready():
	# makes sure the score doesn't display at the beginning of the level.
	visible = false

func display_score(value:int):
	visible = true
	text = "{0} coins".format([value])
	timer.start()

func _on_timer_timeout():
	visible = false # Replace with function body.
