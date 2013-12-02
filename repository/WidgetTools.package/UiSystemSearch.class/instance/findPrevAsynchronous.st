actions
findPrevAsynchronous

	self finder reset.
	self ui results clear.
	self finder
		previousSatisfying: self checkBlock
		forkAt: 35.
	self ui searchEdit readOnly: true.