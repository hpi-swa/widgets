as yet unclassified
doAllBenchmarks

	Cursor wait showWhile: [
		(1 to: self childCount)
			do: [:i | (self childAt: i inGroup: #data) updateBench]
			displayingProgress: [:i | (self childAt: i inGroup: #data) code]].