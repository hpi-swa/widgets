accessing
currentValue: anInteger

	currentValue
		ifNil: [initialValue := anInteger]
		ifNotNil: [numUpdates := numUpdates + 1].
	currentValue := anInteger.