updating
updateMaxValueFor: ctxt

	maxValue := ctxt receiver
		ifNil: [0]
		ifNotNil: [:o | o size].