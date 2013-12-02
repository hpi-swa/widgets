as yet unclassified
updateTask: identifier label: label

	self isActive ifFalse: [self startInCallbackMode].
	self default addDeferredMessage: [
		self default updateTask: identifier label: label].