extends Control

@export var hudItem:HudItem
@onready var inventory_dialog = %InventoryDialog
@onready var player = %Player


func _ready():
	var instance = hudItem.scene.instantiate()
	add_child(instance)
	
	instance.backpack_button.pressed.connect(_on_click)
	
func _on_click():
	inventory_dialog.open(player.inventory)
