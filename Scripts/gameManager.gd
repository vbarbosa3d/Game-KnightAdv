extends Node

var score = 0
@onready var playerScore = %PlayerScore
@onready var final_score = $FinalScore

func add_point():
	score += 1
	playerScore.display_score(score)
	final_score.text = "You collected {0} coins.".format([score])
