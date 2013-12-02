as yet unclassified
initializeViewWithBenchmarks

	view removeAllColumns.
	view model: UiBenchmarkModel new.
	
	view addColumns: {
		(UiItemViewColumnSpec newFrom: {#headerText -> 'Action'. #text -> #label})
			textConverter: [:label | label asHtmlText].
		(UiItemViewColumnSpec newFrom: {#headerText -> 'TTR+GC'. #text -> #ttr}).
		(UiItemViewColumnSpec newFrom: {#headerText -> 'TTR'. #text -> #ttrNoGC}).
		(UiItemViewColumnSpec newFrom: {
			#headerText -> 'Runs per second'.
			#text -> #bench.
			#menu -> #benchMenu}).
		((UiItemViewColumnSpec newFrom: {
			#headerText -> 'Code'.
			#text -> #code.
			#menu -> #traceMenu})												
			textConverter: [:code | SHTextStylerST80 new styledTextFor: code asText])}.
			
	benchBtn show.
	view setHAlignmentForColumn: 2 to: #right.
	view setHAlignmentForColumn: 3 to: #right.
	view setHAlignmentForColumn: 4 to: #right.
	
	self connect: benchBtn signal: #clicked: to: view model selector: #doAllBenchmarks.