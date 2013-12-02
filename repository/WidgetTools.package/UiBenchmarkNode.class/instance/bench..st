accessing
bench: anInteger

	self at: #bench put: anInteger.
	self propertyChanged: #bench.