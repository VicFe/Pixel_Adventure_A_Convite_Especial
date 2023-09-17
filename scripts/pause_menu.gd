extends CanvasLayer

@onready var resume_btn_computer = $menu_holder/resume_btn_computer
@onready var restart_btn_computer = $menu_holder/restart_btn_computer
@onready var quit_btn_computer = $menu_holder/quit_btn_computer

func _ready():
	visible = false 

func _process(delta):
	pass

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true
		resume_btn_computer.grab_focus()

func _on_restart_btn_computer_pressed():
	pass

func _on_quit_btn_computer_pressed():
	get_tree().quit()
	
func _on_resume_btn_computer_pressed():
	get_tree().paused = false
	visible = false
