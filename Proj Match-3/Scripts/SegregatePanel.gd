extends Control

onready var spoints : Label = $MarginContainer/VBoxContainer/HBoxContainer/SCounter/HBoxContainer/PointsLabel

var current_scount = 0

func _on_MetalsButton_pressed():

	current_scount += 10
	spoints.text = String(current_scount)

func _on_PaperButton_pressed():
	current_scount += 5
	spoints.text = String(current_scount)

func _on_MasksButton_pressed():
	current_scount += 15
	spoints.text = String(current_scount)

func _on_GlassButton_pressed():
	current_scount += 10
	spoints.text = String(current_scount)

func _on_PlasticButton_pressed():
	current_scount += 5
	spoints.text = String(current_scount)

func _on_PPEButton_pressed():
	current_scount += 20
	spoints.text = String(current_scount)


func _on_STotalButton_pressed():
	yield(get_tree().create_timer(2.0), "timeout")
	get_tree().change_scene("res://Scenes/Game_Menu.tscn")


func _on_SClearButton_pressed():
	current_scount = 0
	spoints.text = String(current_scount)


