actions
selectResult: aNode

	aNode
		ifNil: [
			self updateSearchButtons.
			self log: 'Search finished. No further results found.']
		ifNotNil: [:node |
			self ui view expandIndex: self finder currentIndex. "faster than lookup index in view via #modelIndicesFor:."	
			self ui view currentNode: node.
			self log: ('Found: ''{1}''' format: {node label})]