accessing
maxValueFor: ctxt

	^ [
		maxValue ifNil: [self updateMaxValueFor: ctxt].
		maxValue
	] on: Error do: [1]