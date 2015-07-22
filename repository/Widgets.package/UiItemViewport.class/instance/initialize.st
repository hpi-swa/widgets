initialization
initialize

	super initialize.
	
	self initializeEventHandler.
	
	self color: Color transparent.
		
	rows := OrderedCollection new.
	columns := OrderedCollection new.
	
	rowOrder := UiItemOrder new.
	columnOrder := UiItemOrder new.
	
	cellToBounds := Array new.
	
	self selectionMode: UiViewSingleSelection.