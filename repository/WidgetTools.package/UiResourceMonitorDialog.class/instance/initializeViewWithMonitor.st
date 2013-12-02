as yet unclassified
initializeViewWithMonitor

	view removeAllColumns.
	view model: UiResourceMonitorModel new.
	
	view addColumns: {
		(UiItemViewColumnSpec newFrom: {#headerText -> 'Resource'. #text -> #label}).
		(UiItemViewColumnSpec newFrom: {#headerText -> 'Value'. #text -> #value}).
		(UiItemViewColumnSpec newFrom: {
			#headerText -> 'Threshold'.
			#text -> #threshold.
			#icon -> #iconicState}).
		(UiItemViewColumnSpec newFrom: {#headerText -> 'Comments'. #text -> #description})}.
	
	benchBtn hide.
	view setHAlignmentForColumn: 2 to: #right.
	view setHAlignmentForColumn: 3 to: #left.
	view setHAlignmentForColumn: 4 to: #left.