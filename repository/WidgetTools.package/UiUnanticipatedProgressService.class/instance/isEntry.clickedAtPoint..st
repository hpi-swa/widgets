event handling
isEntry: entry clickedAtPoint: pt

	^  entry isVisible and: [entry bounds containsPoint:
		pt - "box offset" ((Display extent // 2) - ((lastExtent x // 2) @ 0))]