accessing
code: aString

	self at: #code put: aString.
	
	"Cached results are no longer valid."
	self
		ttr: nil;
		ttrNoGC: nil;
		bench: nil.