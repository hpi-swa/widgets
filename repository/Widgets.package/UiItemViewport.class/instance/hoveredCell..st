accessing
hoveredCell: newCellIndex
		
	newCellIndex = hoveredCell
		ifTrue: [^ self].
				
	self
		invalidRect: ((self boundsFor: newCellIndex) outsetBy: (0@0 corner: 0@1));
		invalidRect: ((self boundsFor: hoveredCell) outsetBy: (0@0 corner: 0@1)).

	"Show/hide checkboxes."
	self updateVisibilityForCheckBoxesFor: newCellIndex old: hoveredCell.
	
	"Set new value."
	hoveredCell := newCellIndex.
	
	self hovered: (self modelIndexFor: hoveredCell).