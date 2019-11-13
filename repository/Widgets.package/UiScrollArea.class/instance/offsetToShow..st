scrolling - private
offsetToShow: aRectangle
	"Calculate the offset necessary to show the rectangle."
	
	| offset scrollRange target scroller |
	self fullBounds. "We calculate stuff based on our correct width."

	scroller := self transformMorph.
	offset := scroller offset.
	scrollRange := self widget extent.

	"Normalize the incoming rectangle."
	target := 
			"(scroller width < aRectangle width
				ifTrue: [offset x < aRectangle left <-- coming from left?
					ifTrue: [aRectangle right - scroller width]
					ifFalse: [aRectangle left]]
				ifFalse: [aRectangle left])"
			aRectangle left
		@
			(scroller height < aRectangle height
				ifTrue: [offset y < aRectangle top "Coming from top?"
					ifTrue: [aRectangle bottom - scroller height]
					ifFalse: [aRectangle top]]
				ifFalse: [aRectangle top])
		corner: 
			(scroller width < aRectangle width
				ifTrue: [aRectangle left + scroller width]
				ifFalse: [aRectangle right])
		@
			(scroller height < aRectangle height
				ifTrue: [offset y + scroller height > aRectangle bottom "Coming from bottom?"
					ifTrue: [aRectangle top + scroller height]
					ifFalse: [aRectangle bottom]]
				ifFalse: [aRectangle bottom]).

	"Vertical Scrolling: bottom edge before top edge to avoid strange layout effects for large focus rectangles"
	target bottom > (offset y + scroller height)
		ifTrue: [offset := offset x @ (target bottom - scroller height)].
	target top < offset y
		ifTrue: [offset := offset x @ target top].	
	
	"Horizontal Scrolling"
	target left < offset x
		ifTrue: [offset := target left @ offset y].
	target right > (offset x + scroller width)
		ifTrue: [offset := (target right - scroller width) @ offset y].

	^ (offset min: scrollRange - scroller extent) max: 0@0