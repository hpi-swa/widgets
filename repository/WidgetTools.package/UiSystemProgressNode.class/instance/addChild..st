accessing
addChild: aNode

	(self children includes: aNode)
		ifTrue: [^ aNode].
		
	self children add: aNode.
	aNode parent: self.
	
	self childAdded: aNode.
	
	^ aNode