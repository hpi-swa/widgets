as yet unclassified
histogramWithSpecialCollection

	| histogram |
	histogram := Bag new.
	(Smalltalk allClasses as: ObservableCollection) do: [:class |
		(class selectors as: ObservableCollection) do: [:selector |
			((class >> selector) literals as: ObservableCollection) do: [:literal |
				histogram add: literal]]].
	^ histogram