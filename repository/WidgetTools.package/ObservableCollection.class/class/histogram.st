as yet unclassified
histogram

	| histogram |
	histogram := Bag new.
	Smalltalk allClasses do: [:class |
		class selectors do: [:selector |
			(class >> selector) literals do: [:literal |
				histogram add: literal]]].
	^ histogram