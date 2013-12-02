actions
findNextAsynchronous

	self finder reset.
	self ui results clear.
	self finder
		nextSatisfying: self checkBlock
		forkAt: 35.
	self ui searchEdit readOnly: true.
	