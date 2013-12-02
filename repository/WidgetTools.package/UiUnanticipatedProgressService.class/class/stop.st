start/stop
stop
	"self stop."
	
	Default ifNil: [^ self].
	Default stop.
	Default := nil.