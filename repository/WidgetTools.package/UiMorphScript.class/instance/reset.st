as yet unclassified
reset
	"Reset the generator, i.e., start it over"
	continue ifNotNil:[continue unwindTo: home].
	continue := thisContext.
	[ self fork ] value