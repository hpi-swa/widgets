initialization
initialize

	super initialize.
	startTime := Time millisecondClockValue.
	onceShown := false.
	numUpdates := 0.
	startValue := 1.