accessing
ttr: aNumber

	self at: #ttr put: aNumber.
	self propertyChanged: #ttr.