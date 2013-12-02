accessing
iconicState

	^ (self threshold notNil and: [self value > self threshold])
		ifTrue: [UiDiagonaIcons icon0150Normal]
		ifFalse: [UiSilkIcons acceptIcon]