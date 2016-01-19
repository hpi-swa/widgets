initialization
initializeEventHandler

	super initializeEventHandler.
		
	self connect: self eventHandler signal: #focusLost toSelector: #restoreCursor.