updating
updateMaxValueFor: ctxt

	maxValue := (ctxt tempNames reversed
		detect: [:i | i endsWith: #LimiT]
		ifNone: []) ifNotNil: [:temp |
			ctxt namedTempAt: (ctxt tempNames indexOf: temp)]