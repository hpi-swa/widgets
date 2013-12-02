accessing
parent: aNode

	| oldParent |
	parent = aNode
		ifTrue: [^ self].
	
	oldParent := parent.
	parent := aNode.
	
	self parentChanged: parent from: oldParent.