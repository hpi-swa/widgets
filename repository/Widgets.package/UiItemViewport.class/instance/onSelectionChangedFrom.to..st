selection
onSelectionChangedFrom: oldCells to: newCells

	(self hasProperty: #isClearing) ifTrue: [^ self].

	oldCells do: [:c | self invalidRect: ((self boundsFor: c) outsetBy: (0@0 corner: 0@1))].
	newCells do: [:c | self invalidRect: ((self boundsFor: c) outsetBy: (0@0 corner: 0@1))].

	self
		"updateFocus;" "never call here -> only on current cell change"
		selectionChanged: self selection selectedIndices.