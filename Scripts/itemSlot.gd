extends PanelContainer

@onready var item_icon = %ItemIcon
@onready var label_item_count = %LabelItemCount

func set_count(value:int):
	label_item_count.text = "x{0}".format([value])

func display(item:Item):
	item_icon.texture = item.icon
