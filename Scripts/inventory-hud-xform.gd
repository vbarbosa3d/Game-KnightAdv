extends Control

@onready var camera = %Camera2D
@onready var inventory = %Inventory

var initPos:Vector2

# Called when the node enters the scene tree for the first time.
func _ready():
	initPos = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var globalPosX = camera.get_screen_center_position()[0] + initPos[0]
	var globalPosY =  camera.get_screen_center_position()[1] + initPos[1]*0.95
	var globalPos:Vector2 = Vector2(globalPosX, globalPosY)
	
	global_position = globalPos
	
func _on_backpack_button_pressed():
	inventory.show()

	if not get_tree().paused:
		get_tree().paused = 1



