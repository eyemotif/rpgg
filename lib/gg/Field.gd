extends Node

enum Direction {UP, LEFT, DOWN, RIGHT}

onready var _engine = get_node('/root/Engine')

func to_field_coords(coords: Vector2) -> Vector2:
	return Vector2(int(coords.x / _engine.tile_width), int(coords.y / _engine.tile_height))
func from_field_coords(coords: Vector2) -> Vector2:
	return Vector2(coords.x * _engine.tile_width, coords.y * _engine.tile_height)
func in_bounds(coords: Vector2) -> bool:
	return coords.x > 0 and coords.y > 0 and coords.x < _engine.field_width and coords.y < _engine.field_height
