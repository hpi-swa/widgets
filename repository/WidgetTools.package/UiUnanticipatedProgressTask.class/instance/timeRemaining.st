as yet unclassified
timeRemaining

	currentValue ifNil: [^ 0].
	self isIndeterminate ifTrue: [^ 0].
	
	^ (self timeElapsed asFloat
		/ (currentValue - initialValue max: 1) "time for one step"
		* (maxValue - currentValue)) "time for remaining steps"
			truncated