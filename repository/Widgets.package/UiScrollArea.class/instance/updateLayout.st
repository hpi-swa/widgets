layouting
updateLayout

	"viewport bounds can only be calculated right if transform morph has correct size..."
	self transformMorph disconnectSignal: #areaChanged from: self selector: #updateLayout.
	self transformMorph bounds: self viewportBounds.
	self connect: self transformMorph signal: #areaChanged toSelector: #updateLayout.

	"Migration code."
	self verticalScrollBar owner ifNil: [self addMorph: self verticalScrollBar].
	self horizontalScrollBar owner ifNil: [self addMorph: self horizontalScrollBar].
	self cornerWidget owner ifNil: [self addMorph: self cornerWidget].

	self verticalScrollBar
		visible: self isVerticalScrollBarVisible;
		extent: self scrollBarThickness @ (self transformMorph height - 2 + (self outerBorderWidth*2));
		topRight: (self right - 1 + self outerBorderWidth) @ (self top + 1 - self outerBorderWidth).
		
	self horizontalScrollBar
		visible: self isHorizontalScrollBarVisible;
		extent: (self transformMorph width - 2 + (self outerBorderWidth*2)) @ self scrollBarThickness;
		bottomLeft: (self left + 1 - self outerBorderWidth) @ (self bottom - 1 + self outerBorderWidth).
		
	self cornerWidget
		visible: self isHorizontalScrollBarVisible & self isVerticalScrollBarVisible;
		extent: (self scrollBarThickness + 2) asPoint;
		topLeft: self transformMorph bottomRight.
		
	self widget ifNil: [^ self].
	
	"Intelligent layout mechanisms."
	self widgetResizable ifTrue: [
		self horizontalScrollBarPolicy = #alwaysOff
			ifTrue: [self widget width: self transformMorph width / self transformMorph scale]
			ifFalse: [self verticalScrollBarPolicy = #alwaysOff
				ifTrue: [self widget height: self transformMorph height / self transformMorph scale]]].
	
	self areaResizable ifTrue: [
		self verticalScrollBarPolicy = #alwaysOff
		ifTrue: [
			self transformMorph verticalOffset: 0.
			self height: self widget height * self transformMorph scale + (self isHorizontalScrollBarVisible
				ifTrue: [self scrollBarThickness + 2 - self outerBorderWidth] ifFalse: [0])]
		ifFalse: [self horizontalScrollBarPolicy = #alwaysOff
			ifTrue: [
				self transformMorph horizontalOffset: 0.
				self width: self widget width * self transformMorph scale + (self isVerticalScrollBarVisible
					ifTrue: [self scrollBarThickness + 2 - self outerBorderWidth] ifFalse: [0])]]].