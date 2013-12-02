start/stop
start
	"self start."
	
	Default ifNotNil: [self stop].
	Default := self new.
	Default start.