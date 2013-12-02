as yet unclassified
initialize

	super initialize.
	ui := UiSystemProgressMorphUi new.
	ui setupUi: self.
	ui view model: UiSystemProgressModel instance.
	
	ui view setHAlignmentForColumn: 2 to: #right.
	ui view moveColumn: 2 to: 1.
	
	ui view animated: false.  
	
	self connect: ui view model signal: #rowsInsertedFor:from:to: to: ui view selector: #expandIndex:.
	self connect: ui view model signal: #rowsInsertedFor:from:to: to: ui view selector: #scrollToBottom.
	
	self connect: ui view model signal: #nodeClosed: to: ui view selector: #collapseIndex:.
	
"	self connect: ui view model signal: #rowsInsertedFor:from:to: toSelector: #redraw."
	self connect: ui view model signal: #rowsChangedFor:from:to: to: ui view selector: #redraw.
	
	self connect: ui closeBtn signal: #clicked: toSelector: #delete.
	self connect: ui closeBtn signal: #clicked: to: UiSystemProgressModel selector: #reset.