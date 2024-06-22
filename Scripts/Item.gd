extends Node2D

@export var item:Item

func _ready():
	var instance = item.scene.instantiate()
	instance.item = item
	
	add_child(instance)
