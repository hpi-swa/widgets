as yet unclassified
nextPutWidgetTOC: aWidgetNode

	self mode: #toc.
	
	out
		cr;
		nextPutAll: '== Properties =='.
		
	aWidgetNode propertyNodes do: [:node | self visitNode: node].
	
	aWidgetNode theClass allSuperclasses do: [:cls |
		(cls class selectors includes: #widgetProperties) ifTrue: [ | p1 p2 |
			p1 := cls widgetProperties gather: [:category | category value].
			p2 := (cls superclass class canUnderstand: #widgetProperties)
				ifTrue: [cls superclass widgetProperties gather: [:category | category value]]
				ifFalse: [#()].
			out
				cr;
				nextPutAll: (' * {1} properties inherited from {2}' format: {
					p1 count: [:prop | (p2 includes: prop) not].
					self classLabel: cls})]].

	out
		cr;
		nextPutAll: '== Signals =='.
	
	aWidgetNode signalNodes do: [:node | self visitNode: node].
	
	aWidgetNode theClass allSuperclasses do: [:cls | | signals |
		signals := cls signals.
		signals ifNotEmpty: [
			out
				cr;
				nextPutAll: (' * {1} signals inherited from {2}' format: {
					signals size.
					self classLabel: cls})]].