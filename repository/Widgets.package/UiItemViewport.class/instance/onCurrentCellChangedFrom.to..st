selection
onCurrentCellChangedFrom: oldCellIndex to: newCellIndex

	self
		invalidRect: ((self boundsFor: oldCellIndex) outsetBy: (0@0 corner: 0@1));
		invalidRect: ((self boundsFor: newCellIndex) outsetBy: (0@0 corner: 0@1)).
		
	self updateVisibilityForCheckBoxesFor: newCellIndex old: oldCellIndex.

	self
		updateFocus;
		currentIndexChanged: self selection currentIndex.
		
	(newCellIndex notNil and: [self editTriggers includes: #currentChanged])
		ifTrue: [self beginEditItem: (self morphAt: newCellIndex)].