scrolling
scrollToShow: aRectangle
	"Scroll to include as much of aRectangle as possible, where aRectangle is in the scroller's local space."

	self flag: #todo. "mt: Restore this rectangle if I resize myself?"
	self transformMorph offset: (self offsetToShow: aRectangle).