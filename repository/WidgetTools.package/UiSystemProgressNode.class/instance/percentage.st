accessing
percentage

	((self maximum isNil or: [self minimum isNil]) or: [self current isNil])
		ifTrue: [^ -1].
	
	self range = 0 ifTrue: [^ -1].
		
	^ self current - self minimum / self range