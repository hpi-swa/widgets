drawing
restoreDisplayIfNecessary

	"Undo window highlight."
	self disableWindowHighlight.
	lastWindowBounds := nil.

	lastExtent ifNotNil: [
		Display getCanvas 
			clipBy: ((Display width // 2) - (lastExtent x // 2) @ (Display height // 2) extent: lastExtent)
			during: [:c | ActiveWorld fullDrawOn: c].
			lastExtent := nil].