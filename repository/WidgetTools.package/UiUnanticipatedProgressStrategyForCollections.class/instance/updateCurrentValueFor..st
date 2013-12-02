updating
updateCurrentValueFor: ctxt

	currentValue := ((self knownNamesForIndex collect: [:ea | ctxt tempNames indexOf: ea])
			max in: [:maxIndex | maxIndex = 0
				ifTrue: ["no index variable found"]
				ifFalse: [ctxt namedTempAt: maxIndex]]).