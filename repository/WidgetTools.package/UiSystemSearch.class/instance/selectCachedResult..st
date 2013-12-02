actions
selectCachedResult: anItem

	"faster than lookup index in view via #modelIndicesFor:."	
	self ui view expandIndex: (anItem at: #index).
	
	self ui view currentNode: (anItem at: #index) node.