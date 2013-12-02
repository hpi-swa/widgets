accessing
text: stringOrText

	| tmp |
	tmp := stringOrText isString
		ifTrue: [stringOrText withBlanksTrimmed]
		ifFalse: [stringOrText].

	(tmp isString or: [tmp isText])
		ifTrue: [text := tmp asHtmlText]
		ifFalse: [text := tmp asString].