class_name ItemPickup
extends Area2D

# this variable will be set once the instance of an item is created outside.
var item:Item


func _on_body_entered(body):
	if body.has_method("on_item_picked_up"):
		body.on_item_picked_up(item)
		queue_free()
