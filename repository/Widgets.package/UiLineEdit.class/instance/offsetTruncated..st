as yet unclassified
offsetTruncated: point

	^ point < (10@010)
		ifTrue: [super offsetTruncated: point]
		ifFalse: [point]