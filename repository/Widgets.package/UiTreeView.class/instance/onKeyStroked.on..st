event handling
onKeyStroked: aKeyboardEvent on: aModelIndex
	"Default keyboard interaction."

	aKeyboardEvent keyCharacter = $*
		ifTrue: [self expandAllIndices: aModelIndex].
	aKeyboardEvent keyCharacter = Character arrowRight
		ifTrue: [self expandIndex: aModelIndex].
	aKeyboardEvent keyCharacter = Character arrowLeft
		ifTrue: [self collapseIndex: aModelIndex].
		
	super onKeyStroked: aKeyboardEvent on: aModelIndex.