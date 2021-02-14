tool
extends Node

export(NodePath) var world
export(int) var tile_width = 64
export(int) var tile_height = 64
export(int) var field_width = 10
export(int) var field_height = 10

func _ready() -> void:
	pass

func _get_configuration_warning() -> String:
	if not world:
		return 'Must initialize property "world"'
	else: return ''
