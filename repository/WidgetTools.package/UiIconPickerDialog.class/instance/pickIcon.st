initialization
pickIcon

	self submorphs first delete.
	self
		borderWidth: 1;
		borderColor: (Color gray: 0.8) muchDarker;
		extent: 300@200.
	
	self connect: iconView signal: #clicked: toSelector: #chooseIconAndClose:.
	
	self openInWorld.
	[self isInWorld] whileTrue: [ActiveWorld doOneSubCycle].

	^icon