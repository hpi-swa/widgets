progress updating
updateTasksFor: aContextPart

	| taskId |	
	taskId := 1.

	(aContextPart stackOfSize: 100) reverseDo: [:ctxt |
		(self currentStrategyFor: ctxt) ifNotNil: [:strategy |
			strategy resetCaches.
			(strategy currentValueFor: ctxt) ifNotNil: [:currentValue |
				entries ifNil: [entries := OrderedCollection new].
				
				taskId > entries size
					ifTrue: ["Append new task."
						taskId := taskId + 1.
						(self beginTask: ctxt)
							label: (strategy labelFor: ctxt);
							startValue: (strategy startValueFor: ctxt);
							maxValue: (strategy maxValueFor: ctxt);								
							currentValue: currentValue]
					ifFalse: ["Try find old task."
						(entries at: taskId) context == ctxt
							ifTrue: ["Found!"
								(entries at: taskId) currentValue: currentValue.
								"Try updating max value."
								(entries at: taskId) maxValue ifNil: [
									(entries at: taskId) maxValue: (
										strategy maxValueFor: ctxt)].
								taskId := taskId + 1]
							ifFalse: ["Miss! Remove this and all following."
								entries removeLast: entries size - taskId + 1.
								taskId := taskId + 1.
								(self beginTask: ctxt)
									label: (strategy labelFor: ctxt);
									startValue: (strategy startValueFor: ctxt);
									maxValue: (strategy maxValueFor: ctxt);
									currentValue: currentValue
							]
					].
		] "current value not nil" ] "strategy not nil" ] "reverse do".

	"If no active tasks were found, clean up."
	taskId = 1 ifTrue: [entries := nil].