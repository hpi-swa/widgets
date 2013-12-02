accessing
codeSnippetFor: aDict

	aDict ifNil: [^ ''].
	
	^ self iconSet name, ' ', (aDict at: #selector)