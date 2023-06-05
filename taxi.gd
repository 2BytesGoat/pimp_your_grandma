extends VehicleBody3D

var horse_power = 100
var accel_speed = 100

var seteer_angle = deg_to_rad(25)
var steer_speed = 3

var brake_power = 40
var brake_speed = 40


func _physics_process(delta):
	var throt_input = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	engine_force = lerp(engine_force, throt_input * horse_power, accel_speed * delta)
	
	var steer_input = Input.get_action_strength("ui_left") - Input.get_action_strength("ui_right")
	steering = lerp_angle(steering, steer_input * seteer_angle, steer_speed * delta)
	
