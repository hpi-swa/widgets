geometry - layout
noLayoutChangeDuring: aBlock

	self setProperty: #noLayoutChange toValue: true.   
	^ aBlock ensure: [
		self removeProperty: #noLayoutChange]