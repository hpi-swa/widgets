testing
isHorizontalScrollBarVisible
	"Note that the visiblity of the horizontal scroll bar is secondary and is affected by the visiblity constraints of the vertical scroll bar. This avoids flickering effects."
	
	^ self horizontalScrollBarPolicy = #alwaysOn
		or: [self horizontalScrollBarPolicy = #asNeeded
			and: [self widget isNil or: [self viewportWidth < self widget width]]]