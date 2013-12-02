as yet unclassified
beginTask: identifier

	self isActive ifFalse: [self startInCallbackMode].
	self default addDeferredMessage: [
		self default beginTask: identifier].