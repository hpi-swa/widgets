nodes - enumeration
allNodesDo: aBlock ifRecursive: anExceptionBlock

	| previousNodes nextNodes currentNode |
	previousNodes := OrderedCollection new: 100.
	nextNodes := OrderedCollection new: 100.
	nextNodes add: self.
	
	[nextNodes isEmpty] whileFalse: [
		currentNode := nextNodes removeFirst.

		(currentNode depth > 10 or: [previousNodes includes: currentNode])
			ifTrue: [(anExceptionBlock cull: previousNodes last cull: currentNode) == true ifTrue: [^ self]].
		
		previousNodes add: currentNode.
		aBlock value: currentNode.
		nextNodes addAll: currentNode nodes.
	].