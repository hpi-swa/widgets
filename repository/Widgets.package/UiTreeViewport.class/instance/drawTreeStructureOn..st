drawing
drawTreeStructureOn: aCanvas
	
	columns ifEmpty: [^ self].
	
	(self columnBoundsAt: 1) right < aCanvas clipRect left
		ifTrue: [^ self].
	
	((self visibleRowsIndices: aCanvas)
		collect: [:rowIndex | rowIndex -> (self rowAt: rowIndex)])
		select: [:rowAssoc | rowAssoc value visible
			and: [self rootIsDecorated or: [rowAssoc value parentModelIndex notNil]]]
		thenDo: [:rowAssoc |
		| colIndex item cellBounds form |
		colIndex := self columnOrder unmapIndex: 1.
		cellBounds := self cellBoundsFor: colIndex@rowAssoc key.
		item := self columnOrder items: rowAssoc value items at: colIndex.
		form := (item valueOfProperty: #hasChildren)
			ifFalse: [nil]
			ifTrue: [(item valueOfProperty: #isExpanded)
				ifFalse: [self collapsedIcon]
				ifTrue: [self expandedIcon]].

		form ifNotNil: [
			aCanvas
				translucentImage: form
				at: (cellBounds left + (item valueOfProperty: #indent) - form width)
					@ (cellBounds top + (cellBounds height - form height // 2))]].