formatting
toText: aString
	"Parse all known HTML attributes in the given string to text attributes."
	
	^ [self toTextUnsafe: aString]
		on: Error
		do: [:e | aString asText]