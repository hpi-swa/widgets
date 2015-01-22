*widgettools-scripts
breakhere: cycles

	| ctxt script |
	ctxt := thisContext.
	[ctxt receiver isKindOf: UiMorphScript] whileFalse: [
		ctxt := ctxt sender].
	script := ctxt receiver.
		
	script shouldStop ifFalse: [
		WorldState addDeferredUIMessage: (cycles = 1
			ifTrue: [ [script run] ]
			ifFalse: [ [script run] ])
		
	].
	
	script yield.