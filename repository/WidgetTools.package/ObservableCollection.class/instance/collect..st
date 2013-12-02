as yet unclassified
collect: aBlock 

	| newCollection |
	newCollection := self species new: self size.
	
	UiUnanticipatedProgressService
		beginTask: self
		label: 'Collect... (', self identityHash asString, ')'
		startValue: firstIndex
		maxValue: lastIndex.
	
	firstIndex to: lastIndex do:
		[:index |
			newCollection addLast: (aBlock value: (array at: index)).
			UiUnanticipatedProgressService
				updateTask: self
				currentValue: index].
	
	UiUnanticipatedProgressService
		endTask: self.
			
	^ newCollection