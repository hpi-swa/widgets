start/stop
startOn: aBlock

	self start.
	^ aBlock ensure: [self stop]