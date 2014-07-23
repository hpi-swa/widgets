as yet unclassified
offsetTruncated: point
	"Fix jerky scrolling."

	| offset |
	offset := point.
	self isHorizontalScrollBarVisible ifFalse: [offset := 0 @ offset y].
	self isVerticalScrollBarVisible ifFalse: [offset := offset x @ 0].
	^ offset