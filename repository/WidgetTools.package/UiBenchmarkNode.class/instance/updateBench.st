benchmarks
updateBench

	Cursor wait showWhile: [  
		self bench: (Compiler evaluate: self code) bench].
		