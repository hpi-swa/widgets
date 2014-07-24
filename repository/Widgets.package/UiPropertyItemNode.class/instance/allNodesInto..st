as yet unclassified
allNodesInto: result

	(result includes: self)
		ifFalse: [result add: self]
		ifTrue: [^ result "avoid cycles"].
	
	self children collect: [:nodes |
		nodes do: [:node |
			node allNodesInto: result]].
	
	^ result