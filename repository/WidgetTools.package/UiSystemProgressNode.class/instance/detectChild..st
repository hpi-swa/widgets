queries
detectChild: blockOrId
	"Search for the child that has the given id or matches the detect-block."

	^ blockOrId isBlock
		ifTrue: [self children detect: blockOrId ifNone: []]
		ifFalse: [self children detect: [:child | child id = id] ifNone: []]