start/stop
start: updateBlock

	| delay |
	Timer ifNotNil: [self error: 'Already displaying progress in UI process if necessary!'].
	
	delay := Delay forMilliseconds: 250.
	Timer := [
		[delay wait.
		updateBlock value.
		self display.
		self processEvents.
		] repeat
		] newProcess.
	Timer name: 'Unanticipated Progress Bars'.
	Timer priority: Processor timingPriority - 2. "allow message tally"
	Timer resume.