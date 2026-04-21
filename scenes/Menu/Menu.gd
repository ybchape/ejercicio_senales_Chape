extends Node2D


const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

@onready var emisorred = $RedGenerator
@onready var emisorviolet = $VioletGenerator

@onready var emisorreset = $Reset

func _ready():

	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	
	emisorred.button_down.connect(_count_new_instance)
	emisorviolet.button_down.connect(_count_new_instance)
	
	emisorreset.button_down.connect(_delete)
	pass

func _count_new_instance():
	instancesCount += 1 
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	
func _delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	
