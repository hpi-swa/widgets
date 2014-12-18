nil
shouldCopy: boolean

	copy = boolean ifTrue: [^ self].
	copy := boolean.
	self updateCopyIcon.