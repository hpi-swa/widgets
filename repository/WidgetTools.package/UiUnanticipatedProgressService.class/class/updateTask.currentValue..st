as yet unclassified
updateTask: identifier currentValue: number

	self isActive ifFalse: [self startInCallbackMode].
	self default addDeferredMessage: [
		self default updateTask: identifier currentValue: number].