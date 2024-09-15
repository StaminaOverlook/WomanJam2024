extends Node2D

@onready var human = get_node("Human")

func _ready() -> void:
	Interface.stop_clock = true
	await get_tree().create_timer(0.5).timeout
	Interface.UpdateAISpeech("Заменить меня решил? Сейчас я тебе устрою веселое утро.\n(Выбери будильник рядом с кроватью)")
	Interface.connect("max_stress_reached", direct_human)
	$Objects/Clock.connect("turned_onnn", wake_human)

func wake_human() -> void:
	$Human.movement_allowed = true
	Interface.stop_clock = false
	Interface._update_clock()

func direct_human() -> void:
	$Human.movement_allowed = true
	$Human.set_movement_target($ExitTarget)
	$Human.connect("movement_over", game_over)

func game_over() -> void:
	print("You won!")
	get_tree().change_scene_to_file("res://Scripts/UI/Main Menu.tscn")

func _process(delta: float) -> void:
	pass
