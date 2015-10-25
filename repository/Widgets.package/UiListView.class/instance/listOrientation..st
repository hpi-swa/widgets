accessing
listOrientation: aSymbol
	"#default ... no breaks, vertical scrolling if needed, full row selection
	#vertical ... items go from left to right and break at width -> vertical scrolling
	#horizontal ... items go from top to bottom and break at height -> horizontal scrolling
	#horizontalSingleRow ... like #horizontal but with only one row"

	| old |
	old := self listOrientation.
	
	self viewport orientation: aSymbol.
	old = aSymbol ifFalse: [self updateEventHandler].	
	
	aSymbol = #default
		ifTrue: [self
			horizontalScrollBarPolicy: #alwaysOff;
			verticalScrollBarPolicy: #asNeeded].
		
	aSymbol = #vertical
		ifTrue: [self
			horizontalScrollBarPolicy: #alwaysOff;
			verticalScrollBarPolicy: #asNeeded].
		
	aSymbol = #horizontal
		ifTrue: [self
			horizontalScrollBarPolicy: #asNeeded;
			verticalScrollBarPolicy: #alwaysOff].
	
	self updateViewportLayout.