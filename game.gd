extends Node2D

var bal = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$Label/Label.text = str(bal)


func _on_roll_pressed() -> void:
	roll()

func roll():
	$AnimatedSprite2D.play("Roll")
	$AnimationPlayer.play("Roll")
	$Timer.start()
	

func _on_timer_timeout() -> void:
	var num = randi_range(1,6)
	if num == 1:
		$AnimatedSprite2D.play("1")
	if num == 2:
		$AnimatedSprite2D.play("2")
	if num == 3:
		$AnimatedSprite2D.play("3")
	if num == 4:
		$AnimatedSprite2D.play("4")
	if num == 5:
		$AnimatedSprite2D.play("5")
	if num == 6:
		$AnimatedSprite2D.play("6")
	if str(num) == $Bet.text:
		bal += str_to_var($Bet2.text)
	else:
		bal -= str_to_var($Bet2.text)
