extends CanvasLayer

@onready var player = %Player
@onready var inventory_dialog = %InventoryDialog

func _unhandled_input(event):
	if event.is_action_released("Inventory"):
		inventory_dialog.open(player.inventory)
		get_tree().paused = 1
