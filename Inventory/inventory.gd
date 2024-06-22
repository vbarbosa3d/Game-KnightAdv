class_name Inventory

var _content:Dictionary = {}

func add_item(item:Item):
	if item.name not in _content:
		_content[item.name] = {"item":item, "count":1}
	else:
		_content[item.name]["count"] += 1
	
func remove_item(item:Item):
	_content.erase(item)

func get_items() -> Dictionary:
	return _content
