as yet unclassified
histogramWithSystemProgress

	| histogram |
	histogram := Bag new.
	Smalltalk allClasses
		do: [:class |
			class selectors
				do: [:selector |
					(class >> selector) literals
						do: [:literal |
							histogram add: literal]
						"displayingProgress: [:literal | literal]"]
				"displayingProgress: [:selector | selector]"]
		displayingProgress: [:class | class].

	^ histogram