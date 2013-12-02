updating
updateCurrentValueFor: ctxt

	currentValue := (ctxt tempNames reversed
		detect: [:i | i endsWith: #LimiT]
		ifNone: []) ifNotNil: [:temp |
			ctxt namedTempAt: (ctxt tempNames indexOf: (temp allButLast: 5))]