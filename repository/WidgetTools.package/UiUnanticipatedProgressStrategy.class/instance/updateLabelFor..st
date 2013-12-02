updating
updateLabelFor: ctxt

	label := ((ctxt stack
			detect: [:c | (c receiver class category beginsWith: 'Collections') not or: [
				c selector == #DoIt and: [c closure isNil]]]
			ifNone: [])
				ifNil: ['Unknown activity...']
				ifNotNil: [:c |
					c selector == #DoIt
						ifTrue: ['DoIt']
						ifFalse: [c receiver class name, ' >> ', c selector" category"]]).