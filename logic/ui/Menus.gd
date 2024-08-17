extends Control

class_name Menus

func play_click() -> void:
	Sound.get_node("menu_click_sound").play(0.0)

func play_bip() -> void:
	Sound.get_node("selection_sound").play(0.0)

func _ready():
	theme = load("res://logic/configuration/DefaultTheme.tres")
	for i: Button in get_tree().get_nodes_in_group("menu_btn"):
		i.custom_minimum_size = Vector2(200, 50)
		i.connect("pressed", play_click)
		i.connect("mouse_entered", play_bip)
		
