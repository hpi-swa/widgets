progress updating - callback mode
updateTask: identifier label: label

	(self taskFor: identifier) ifNotNil: [:t |
		t label: label].