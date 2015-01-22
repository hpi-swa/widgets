*widgettools-scripts
breaktime: milliseconds

	| ctxt script |
	ctxt := thisContext.
	[ctxt receiver isKindOf: UiMorphScript] whileFalse: [
		ctxt := ctxt sender].
	script := ctxt receiver.
		
	script shouldStop ifFalse: [
		ActiveWorld
			addAlarm: #value
			withArguments: #()
			for: [script run]
			at: Time millisecondClockValue + milliseconds].
	
	script yield.