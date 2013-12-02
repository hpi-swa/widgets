as yet unclassified
histogramWithHourGlass

	| histogram |
	histogram := Bag new.
	Cursor wait showWhile: [
		Smalltalk allClasses do: [:class |
			class selectors do: [:selector |
				(class >> selector) literals do: [:literal |
					histogram add: literal]]]].
	^ histogram