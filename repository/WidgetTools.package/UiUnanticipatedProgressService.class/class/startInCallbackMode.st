as yet unclassified
startInCallbackMode
	"self startInCallbackMode."
	
	Default ifNotNil: [self stop].
	Default := self new.
	Default startInCallbackMode.