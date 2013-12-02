initialization
initialize

	super initialize.
	
	self
		changeTableLayout;
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		listDirection: #leftToRight;
		borderWidth: 0;
		color: Color transparent;
		height: 22;
		layoutInset: (0@1 corner: 0@0);
		cellInset: 5.
	
	self updateButtons.