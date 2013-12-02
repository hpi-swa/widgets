index generation
indexRow: aRowNumber column: aColumnNumber parent: aParentModelIndex

	| node |
	(aRowNumber = 0 or: [aColumnNumber = 0])
		ifTrue: [^ (UiSimpleModelIndex row: aRowNumber column: aColumnNumber)
			model: self;
			parent: aParentModelIndex].
	
	aParentModelIndex
		ifNil: [node := self rootNode childAt: aRowNumber]
		ifNotNil: [:i | node := (i valueOfProperty: #node) childAt: aRowNumber].

	^ (UiSimpleModelIndex row: aRowNumber column: aColumnNumber)
		model: self;
		parent: aParentModelIndex;
		setProperty: #node toValue: node