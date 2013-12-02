convenience
briefComment

	^ (self comment first: (self comment findString: '.'))
		ifEmpty: [self comment]