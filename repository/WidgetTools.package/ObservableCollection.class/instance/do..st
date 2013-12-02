as yet unclassified
do: aBlock 

	| index |
	index := firstIndex.

	UiUnanticipatedProgressService
		beginTask: self
		label: 'Do... (', self identityHash asString, ')'
		startValue: index
		maxValue: lastIndex.

	[index <= lastIndex] whileTrue: [
		aBlock value: (array at: index).
		UiUnanticipatedProgressService
			updateTask: self
			currentValue: index.
		index := index + 1].
	
	UiUnanticipatedProgressService
		endTask: self.