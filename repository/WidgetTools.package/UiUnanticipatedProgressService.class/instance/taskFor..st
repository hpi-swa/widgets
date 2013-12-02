as yet unclassified
taskFor: identifier

	^ entries
		detect: [:e | e context == identifier]
		ifNone: []