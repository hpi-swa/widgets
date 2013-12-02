as yet unclassified
histogramWithCallbacks

	| progress classes histogram selectors literals |
	progress := UiUnanticipatedProgressService.
	classes := Smalltalk allClasses.
	histogram := Bag new.
	progress
		beginTask: #classes
		label: 'Classes...'
		startValue: 1
		maxValue: classes size.

	1 to: classes size do: [:i |
		progress
			updateTask: #classes
			currentValue: i.
		selectors := (classes at: i) selectors.

		progress
			beginTask: #selectors
			label: 'Selectors...'
			startValue: 1
			maxValue: selectors size.

		1 to: selectors size do: [:j |
			progress
				updateTask: #selectors
				currentValue: j.
			literals := ((classes at: i) >> (selectors at: j))
							literals.
			1 to: literals size do: [:k |
				histogram add: (literals at: k)]].
		progress endTask: #selectors].
	progress endTask: #classes.
	^ histogram