as yet unclassified
nextPutWidgetDetails: aWidgetNode

	self mode: #details.
	
	out
		cr;
		nextPutAll: '== Detailed Description == #details';
		cr;
		nextPutAll: aWidgetNode comment.
	
	out
		cr;
		nextPutAll: '== Property Documentation =='.
		
	aWidgetNode propertyNodes do: [:node | self visitNode: node].

	out
		cr;
		nextPutAll: '== Method Documentation =='.
	
	aWidgetNode signalNodes do: [:node | self visitNode: node].