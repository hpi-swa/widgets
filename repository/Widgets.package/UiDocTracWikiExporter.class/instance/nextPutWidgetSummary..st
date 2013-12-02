as yet unclassified
nextPutWidgetSummary: aWidgetNode

	out
		cr;
		nextPutAll: '''''''System Category:'''''' '.
	(aWidgetNode theClass category findTokens: '-')
		do: [:token | out nextPutAll: '!', token]
		separatedBy: [out nextPutAll: ' - '].

	out
		cr;
		nextPutAll: ('= {1} (!{2}) =' format: {aWidgetNode theClass widgetClassName. aWidgetNode theClass});
		cr;
		nextPutAll: aWidgetNode briefComment.
		
	aWidgetNode briefComment size < aWidgetNode comment size
		ifTrue: [out nextPutAll: ' [#details More...]'].
		
	out
		cr; cr;
		nextPutAll: '''''''Inherits:'''''' '.

	aWidgetNode theClass allSuperclasses
		do: [:cls | self nextPutClassLabel: cls]
		separatedBy: [out nextPutAll: ' -> '].

	out
		cr; cr;
		nextPutAll: '''''''Inherited by:'''''' '.
		
	aWidgetNode theClass subclasses
		do: [:cls | self nextPutClassLabel: cls]
		separatedBy: [out nextPutAll: ', '].