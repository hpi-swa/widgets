accessing - nodes
textFor: aNode

	^ (self data: textSelector for: aNode) in: [:text |
		self textConverter
			ifNil: [text]
			ifNotNil: [:c | c value: text]]