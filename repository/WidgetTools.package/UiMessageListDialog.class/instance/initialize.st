initialization
initialize

	super initialize.
	
	self ui messageList
		verticalScrollBarPolicy: #alwaysOff;
		horizontalScrollBarPolicy: #alwaysOff;    
		selectionBehavior: UiViewNullSelection;
		color: Color transparent.
		
	self connect: self ui okButton signal: #clicked: toSelector: #result: pattern: #(=true).
	self connect: self ui cancelButton signal: #clicked: toSelector: #result: pattern: #(=false).