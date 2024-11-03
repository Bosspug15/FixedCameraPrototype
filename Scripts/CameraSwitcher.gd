extends Area3D

@onready var cameras = get_tree().get_nodes_in_group("CamerasToSwitchTo")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func PlayerEntered(body):
	if body.name == "Player":
		for c in cameras:
			c.current = false
		get_parent().current = true
		player.camera = get_parent().current
		
