accessing - nodes
balloonTextFor: aNode

	^ (self data: balloonTextSelector for: aNode) in: [:balloonText |
		self balloonTextConverter
			ifNil: [balloonText]
			ifNotNil: [:c | c value: balloonText]]