as yet unclassified
visitSignalNode: aSignalNode

	self mode == #toc ifTrue: [
		out
			cr;
			nextPutAll: (' * [#signal{1} {2}]' format: {
				aSignalNode symbol asLowercase.
				aSignalNode symbol})].

	self mode == #details ifTrue: [
		out
			cr;
			nextPutAll: ('=== {1} (Signal) === #signal{2}' format: {
				aSignalNode symbol.
				aSignalNode symbol asLowercase});
			cr;
			nextPutAll: aSignalNode comment].