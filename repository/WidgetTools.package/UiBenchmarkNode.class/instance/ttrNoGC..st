accessing
ttrNoGC: aNumber

	self at: #ttrNoGC put: aNumber.
	self propertyChanged: #ttrNoGC.