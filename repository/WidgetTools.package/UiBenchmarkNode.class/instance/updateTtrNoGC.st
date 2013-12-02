benchmarks
updateTtrNoGC

	| block results |
	block := Compiler evaluate: self code.
	results :=  OrderedCollection new.
	5 timesRepeat: [results add: block timeToRunWithoutGC asInteger].

	self ttrNoGC: results average truncated.