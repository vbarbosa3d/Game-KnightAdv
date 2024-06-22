class_name InventoryDialog
extends Control

@export var slot_scene:PackedScene

@onready var close_btn:Button = %CloseBtn
@onready var grid_container:GridContainer = %GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	# let's hide the inventory by default.
	hide()
	
	
func open(inventory:Inventory):
	"""
	This method will take a player inventory as its input argument, so
	it can be used to populate the grid layout of the UI inventory. A player's
	inventory is a simple class that holds an array of class 'Items'.
	"""
	# to pause the game
	get_tree().paused = 1
	
	# display the inventory main body
	show()
	
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
	# let's remove all items from the inventory before 
	# adding items from the player inventory back.
	# this will avoid compound items
	for child in grid_container.get_children():
		child.queue_free()
	
	
	# let's add items from the player's inventory and make sure that 
	# repeated items are displayed as one item but it's counter display 
	# the amount of the same item being carried.
	var itemsData:Dictionary = inventory.get_items()
	for itemName in itemsData:
		
		var itemData:Dictionary = itemsData[itemName]
		var item = itemData["item"]
		
		var slot = slot_scene.instantiate()
		grid_container.add_child(slot)
		
		slot.display(item)
		slot.set_count(itemData["count"])
		#

	
func _close_dialog():
	"""
	This will make sure to hide the inventory and make the mouse 
	back to its default mode.
	"""
	# now you don't see it anymore.
	hide()
	
	# setting mouse mode
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


func _on_close_btn_pressed():
	# lets hide the inventory
	_close_dialog()
	
	# un-pause the game
	get_tree().paused = 0
	
	

