extends Control

var gameName: String = "Duck&Light"
var version: String  = "V0.0.1"
var firstBoot: bool  = true
var config: Array[bool]
var configValues: Dictionary
var finalTime: float = 0
var currentLevel: int = 0

enum {
	FIRSTBOOT,
	SHOWFPS,
	SENSIVITY,
	MUTED
}

func initialConfig(numberOfConfigs: int) -> void:
	config.resize(numberOfConfigs)
	config[FIRSTBOOT] = true
	config[SHOWFPS]   = false
	config[SENSIVITY] = false
	config[MUTED] 	  = false
	
func _ready():
	initialConfig(4)
	print(gameName + " " + version)
	
func setSensivity(sensv):
	config[SENSIVITY] = true
	configValues[SENSIVITY] = sensv
	return sensv
