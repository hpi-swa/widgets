actions
findNext

	self ui concurrentChk checked
		ifTrue: [self findNextAsynchronous]
		ifFalse: [self findNextSynchronous]