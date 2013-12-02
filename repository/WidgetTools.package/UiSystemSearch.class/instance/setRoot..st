actions
setRoot: aNode


	self finder rootIndex: (self ui view modelIndicesFor: aNode) first.
		
	self updateSearchButtons.