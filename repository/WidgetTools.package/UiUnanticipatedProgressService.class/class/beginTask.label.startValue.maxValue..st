as yet unclassified
beginTask: identifier label: label startValue: start maxValue: max

	self isActive ifFalse: [self startInCallbackMode].
	self default addDeferredMessage: [
		self default
			beginTask: identifier
			label: label
			startValue: start
			maxValue: max].