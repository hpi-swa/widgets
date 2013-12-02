as yet unclassified
updateTask: identifier maxValue: number

	self isActive ifFalse: [self startInCallbackMode].
	self default addDeferredMessage: [
		self default updateTask: identifier maxValue: number].