as yet unclassified
addButtons: buttonDefinitions
	"buttons will be surrounded by separators, thus add nil as needed to addedDefinitions
	a buttonDefinition should look like: 
	{<tooltip text>. <icon object>. <object to be signaled>. <method to send to signaled object>. <button style>. <checkable>, <checked>}
	 e.g. {'Save'. UiSilkIcons diskIcon. Smalltalk. #saveSession. #iconOnly. false. false}."
	| group |
	buttonDefinitions ifEmpty: [^self].
	(self addedDefinitions isEmpty or: [self addedDefinitions last notNil])
		ifTrue: [addedDefinitions add: nil.].
	buttonDefinitions do: [:definition|
		self addedDefinitions add: definition].
	addedDefinitions add: nil.
	
	(World mainDockingBars first submorphs detect: [:m | m isKindOf: self] ifNone: [])
			ifNotNil: [:tool | ^tool updateButtons].