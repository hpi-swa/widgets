as yet unclassified
visitWidgetNode: aWidgetNode

	out nextPutAll: '[[PageOutline(1-2)]]'.

	self
		nextPutWidgetSummary: aWidgetNode;
		nextPutWidgetTOC: aWidgetNode;
		nextPutWidgetDetails: aWidgetNode.
