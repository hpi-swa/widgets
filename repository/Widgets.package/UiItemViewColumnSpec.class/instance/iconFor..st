accessing - nodes
iconFor: aNode

	^ (self data: iconSelector for: aNode) in: [:icon |
		self iconConverter
			ifNil: [icon]
			ifNotNil: [:c | c value: icon]]