extends FieldObject
class_name Movable

var tail: Vector2 setget ,get_tail

func get_tail() -> Vector2:
	return tail

func move(offset: Vector2) -> bool:
	var new_coords = coords + offset
	return move_to(new_coords)
func move_to(to_coords: Vector2) -> bool:
	if not ggField.in_bounds(to_coords): return false
	tail = coords
	coords = to_coords
	return true
