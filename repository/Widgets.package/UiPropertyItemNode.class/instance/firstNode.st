as yet unclassified
firstNode

	^ (self children detect: [:group | group notEmpty] ifNone: []) ifNotNil: [:group | group first]