counts
rowCountFor: aParentModelIndex

	^ aParentModelIndex
		ifNil: [self rootNode children size]
		ifNotNil: [:i | (i valueOfProperty: #node) children size]
	
	