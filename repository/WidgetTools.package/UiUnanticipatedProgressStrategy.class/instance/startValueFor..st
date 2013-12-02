accessing
startValueFor: ctxt

	^ [
		startValue ifNil: [self updateStartValueFor: ctxt].
		startValue
	] on: Error do: [1]