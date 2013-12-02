as yet unclassified
showBenchmarks: aBoolean

	aBoolean
		ifTrue: [self initializeViewWithBenchmarks]
		ifFalse: [self initializeViewWithMonitor]. 