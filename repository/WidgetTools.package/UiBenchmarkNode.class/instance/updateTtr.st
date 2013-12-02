benchmarks
updateTtr

	| block results |
	block := Compiler evaluate: self code.
	results :=  OrderedCollection new.
	5 timesRepeat: [results add: block timeToRun asInteger].

	self ttr: results average truncated.