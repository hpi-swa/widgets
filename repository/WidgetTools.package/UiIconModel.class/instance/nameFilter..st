accessing
nameFilter: aString

	nameFilter := aString ifEmpty: [nil].
	self modelReset.