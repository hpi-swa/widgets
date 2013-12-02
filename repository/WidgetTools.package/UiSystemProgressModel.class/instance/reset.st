initialization
reset

	self mutex critical: [
		currentNode := nil].
	
	super reset.