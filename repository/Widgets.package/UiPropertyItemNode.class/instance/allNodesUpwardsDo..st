nodes - enumeration
allNodesUpwardsDo: aBlock
	"Iterate the tree structure. This is *not* tail-recursive by intention! Enables aggregation functions from the leaves to the root node."
	
	self children valuesDo: [:nodesInGroup |
		nodesInGroup do: [:node |
			node allNodesUpwardsDo: aBlock]].
	
	aBlock value: self.