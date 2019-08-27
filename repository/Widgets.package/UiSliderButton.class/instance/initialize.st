initialization
initialize

	super initialize.
	
	self
		color: (Color gray: 0.9);
		listCentering: #center;
		cellGap: 1;
		layoutInset: 2;  
		orientation: #horizontal;
		disableTableLayout: true.
		
	self eventHandler setProperty: #handlesMouseDown toValue: [false].