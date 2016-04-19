accessing - nodes
colorFor: aNode

	^ (self data: colorSelector for: aNode) in: [:color |
		self colorConverter
			ifNil: [color]
			ifNotNil: [:c | c value: color]]