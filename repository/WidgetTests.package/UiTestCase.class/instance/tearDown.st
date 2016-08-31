running
tearDown

	hand showHardwareCursor: true. "Nasty side-effect"
	sut isMorph ifTrue: [sut delete].
	super tearDown.