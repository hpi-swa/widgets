mapping
mapTagToAttribute: aTag

	aTag = '<b>' ifTrue: [^ {TextEmphasis bold}].
	aTag = '<i>' ifTrue: [^ {TextEmphasis italic}].
	aTag = '<u>' ifTrue: [^ {TextEmphasis underlined}].
	aTag = '<code>' ifTrue: [^ {TextFontReference toFont: UiPlatform current standardCodeFont}].
	(aTag beginsWith: '<font') ifTrue: [^ self mapFontTag: aTag].
	(aTag beginsWith: '<a') ifTrue: [^ self mapATag: aTag].

	^ {}