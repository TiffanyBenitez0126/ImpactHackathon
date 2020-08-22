extends Control

onready var http : HTTPRequest = $HTTPRequest
onready var username : LineEdit = $MarginContainer2/VBoxRegister/Register_Fields/Username_Hbox/Username
onready var password : LineEdit = $MarginContainer2/VBoxRegister/Register_Fields/Password_Hbox/Password
onready var confirm : LineEdit = $MarginContainer2/VBoxRegister/Register_Fields/ConfirmPass_Hbox/Confirm 
onready var notification : Label = $MarginContainer2/VBoxRegister/Notification


func _on_RegisterButton_pressed():
	print ("one")
	if password.text != confirm.text or username.text.empty() or password.text.empty():
		print ("two")
		notification.text = "Invalid password or username"
		return
		
	Firebase.register(username.text, password.text, http)


func _on_HTTPRequest_request_completed(result: int, response_code: int, headers: PoolStringArray, body: PoolByteArray):
	var response_body := JSON.parse(body.get_string_from_ascii())
	if response_code != 200:
		notification.text = response_body.result.error.message.capitalize()
	else: 
		notification.text = "Registration successful!"
		yield(get_tree().create_timer(2.0), "timeout")
		get_tree().change_scene("res://Scenes/LoginPanel.tscn")
