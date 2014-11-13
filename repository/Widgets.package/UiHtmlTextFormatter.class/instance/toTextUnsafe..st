as yet unclassified
toTextUnsafe: aString
	
	^ Text
		string: (self parseString:
			(aString copyReplaceAll: '<br>' with: String cr))
		runs: runArray