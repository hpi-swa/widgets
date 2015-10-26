events
mousePressCell: evt

	| cell morph |
	cell := self cellIndexFromPoint: evt position.
	cell ifNil: [^ self].
	
	((self editTriggers includes: #selectedClicked)
		and: [self selection cells includes: cell])
		ifTrue: [self beginEditCell: cell].
	
	morph := self morphAt: cell.
	self selectCell: cell event: evt.
	
	"Pass event to item."
	morph mouseDown: evt.