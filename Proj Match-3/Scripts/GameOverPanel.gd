extends CanvasLayer


func slide_in():
	$AnimationPlayer.play("slide_in")

func slide_out():
	$AnimationPlayer.play_backwards("slide_in")


func _on_Restart_Button_pressed():
	get_tree().change_scene("res://Scenes/MainMenuPanel.tscn")
	pass # Replace with function body.


func _on_Quit_Button_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_grid_game_over():
	slide_in()
	pass # Replace with function body.
