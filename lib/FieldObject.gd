extends Node
class_name FieldObject

export(Texture) var field_texture
var coords: Vector2 setget set_coords, get_coords

func set_coords(value: Vector2) -> void:
	assert(ggField.in_bounds(value))
	coords = value
func get_coords() -> Vector2:
	return coords
func get_texture() -> Texture:
	return field_texture

func _init(coords: Vector2) -> void:
	self.coords = coords
