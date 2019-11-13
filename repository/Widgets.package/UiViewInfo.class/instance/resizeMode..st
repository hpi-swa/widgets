accessing
resizeMode: aSymbol
	"#rigid, #shrinkWrap, #spaceFill"

	resizeMode = aSymbol ifTrue: [^ self].
	
	resizeMode := aSymbol.
	
	self headerItem ifNotNil: [:hi |
		hi resizeable: resizeMode == #rigid].