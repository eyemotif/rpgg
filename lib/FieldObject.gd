extends Node
class_name FieldObject

export(Texture) var field_texture
var coords: Vector2 setget set_coords, get_coords
var position: Vector2 setget set_position, get_position

func set_coords(value: Vector2) -> void:
	assert(ggField.in_bounds(value))
	coords = value
func set_position(value: Vector2) -> void:
	set_coords(ggField.to_field_coords(value))
func get_coords() -> Vector2:
	return coords
func get_texture() -> Texture:
	return field_texture
func get_position() -> Vector2:
	return ggField.from_field_coords(coords)

func _init(coords: Vector2) -> void:
	self.coords = coords
