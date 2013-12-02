actions
findPrev

		self ui concurrentChk checked
		ifTrue: [self findPrevAsynchronous]
		ifFalse: [self findPrevSynchronous]