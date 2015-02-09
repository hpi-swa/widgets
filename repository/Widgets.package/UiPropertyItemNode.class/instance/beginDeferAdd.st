adding - deferred
beginDeferAdd

	ActiveWorld
		removeAlarm: #processDeferredAdditions
		for: self.
	 
	deferAdd := true.
	deferredAdditions := OrderedCollection new.

	ActiveWorld
		addAlarm: #processDeferredAdditions
		withArguments: #()
		for: self
		at: Time millisecondClockValue + 500.