as yet unclassified
longLabel

	self isIndeterminate
		ifTrue: [^ self currentValue asString].

	^ self timeElapsed >= 1000
		ifTrue: [self label, ' (', self remainingDuration asString, ')']
		ifFalse: [self label]