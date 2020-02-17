nodes - enumeration
allNodesDo: aBlock
	"Iterate the tree structure."
	
	self
		allNodesDo: aBlock
		ifRecursive: [true]