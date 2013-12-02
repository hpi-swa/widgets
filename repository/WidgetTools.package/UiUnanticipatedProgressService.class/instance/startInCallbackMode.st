start/stop
startInCallbackMode

	entries := OrderedCollection new.
	deferredMessages := SharedQueue new.
	self start: [self processDeferredMessages].