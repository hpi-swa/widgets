rows/columns - resizing
setTextLineWrapForColumn: anIndex to: aSymbol

	(self viewport columnAt: anIndex) textLineWrap = aSymbol
		ifTrue: [^ self].
		
	(self viewport columnAt: anIndex)
		textLineWrap: aSymbol.
				
	self updateViewportLayout.