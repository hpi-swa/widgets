as yet unclassified
nodesDo: aBlock
	"Iterate the tree structure. This is *not* tail-recursive by intention! Enables aggregation functions from the leaves to the root node."
	
	self children collect: [:nodes |
		nodes do: [:node |
			node nodesDo: aBlock]].
	
	aBlock value: self.