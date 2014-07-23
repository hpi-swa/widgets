as yet unclassified
commentForMethod: aCompiledMethod

	| parser |
	parser := RBParser parseMethod: aCompiledMethod getSource asString.
	
	^ parser comments
		ifEmpty: ['']
		ifNotEmpty: [parser source
			"Adjust index to skip comment delimiters."
			copyFrom: parser comments first first + 1
			to: parser comments first last - 1]