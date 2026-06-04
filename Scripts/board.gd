extends Resource
class_name Board

@export var name : String
@export var listItems : Array[ListItem]

func _init(inName: String) -> void:
	name = inName
