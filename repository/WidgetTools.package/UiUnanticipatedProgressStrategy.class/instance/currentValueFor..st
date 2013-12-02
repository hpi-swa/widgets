accessing
currentValueFor: ctxt

	^ [
		currentValue ifNil: [self updateCurrentValueFor: ctxt].
		currentValue
	] on: Error do: [1]