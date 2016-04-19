as yet unclassified
morphFor: aNode

	^ (self data: morphSelector for: aNode) in: [:morph |
		self morphConverter
			ifNil: [morph]
			ifNotNil: [:c | c value: morph]]