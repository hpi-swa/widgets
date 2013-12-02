progress updating - callback mode
processDeferredMessages

	| nextMsg |
	[(nextMsg := deferredMessages nextOrNil) notNil]
		whileTrue: [nextMsg value].