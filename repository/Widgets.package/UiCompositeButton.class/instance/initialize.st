initialization
initialize

	super initialize.
	
	self
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		cellGap: 4;
		layoutInset: (2@0 corner: 2@0).
		
	self 
		checkable: true;
		updateSubmorphs.