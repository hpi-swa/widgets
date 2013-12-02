updating
updateCurrentValueFor: ctxt

	currentValue := (ctxt namedTempAt: (ctxt tempNames indexOf: #count))
		ifNil: [1].