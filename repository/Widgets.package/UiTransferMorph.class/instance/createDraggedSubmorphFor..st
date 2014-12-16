as yet unclassified
createDraggedSubmorphFor: anObject

	| item |
	item := UiItemViewMorph new
		font: UiPlatform current standardListFont;
		labelColor: Color black;
		color: ((Color gray: 0.85) "alpha: 0.75");
		label: (self labelFor: anObject);
		form: (self iconFor: anObject).
	UiItemViewSimpleColumnSpec new doLayoutFor: item.
	item height: item height + 1. "nasty fonts.."
	^ item