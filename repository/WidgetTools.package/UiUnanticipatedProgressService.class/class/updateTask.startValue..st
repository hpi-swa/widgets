as yet unclassified
updateTask: identifier startValue: number

	self isActive ifFalse: [self startInCallbackMode].
	self default addDeferredMessage: [
		self default updateTask: identifier startValue: number].