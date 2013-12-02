testing
isVisible

	^ onceShown or: [
		self timeElapsed > 500
		and: [self isIndeterminate not and: [self timeRemaining > 500]]]