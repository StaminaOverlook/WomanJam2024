extends Control


func _on_StartGame_pressed() -> void:
	get_tree().change_scene_to_file("res://Apartment.tscn")

func _on_Options_pressed() -> void:
	pass # Replace with function body.

func _on_Credits_pressed() -> void:
	pass # Replace with function body.

func _on_Exit_pressed() -> void:
	get_tree().quit()
