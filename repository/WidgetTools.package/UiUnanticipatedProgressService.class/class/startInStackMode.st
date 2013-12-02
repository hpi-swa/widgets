as yet unclassified
startInStackMode
	"self startInStackMode."
	
	Default ifNotNil: [self stop].
	Default := self new.
	Default startInStackMode.