as yet unclassified
keyStroke: evt

	evt keyCharacter = Character escape
		ifTrue: [ self delete ]
		ifFalse: [ self updateKeyStroke: evt ].