as yet unclassified
nodesDo: aBlock
	"Iterate the tree structure. This is *not* tail-recursive by intention! Enables aggregation functions from the leaves to the root node."
	
	self flag: #hmpf. "mt: We should get rid of #children being a dictionary."
	self children collect: [:nodes |
		nodes do: [:node |
			node nodesDo: aBlock]].
	
	aBlock value: self.