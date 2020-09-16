geometry
optimalSize
	"Return the width of the largest item."
	
	| max |
	max := self resizeMode == #spaceFill
		ifTrue: [(TextStyle defaultFont widthOf: $x) * 50]
		ifFalse: [0].
	items do: [:item | 
		item hResizing == #spaceFill
			ifTrue: [max := max max: (TextStyle defaultFont widthOf: $x) * 50]
			ifFalse: [(item hasProperty: #isGroupSeparator)
				ifFalse: [max := max max: (item fullBounds width + (item valueOfProperty: #indent))]]].
	self headerItem ifNotNil: [:hi | hi submorphs ifNotEmpty: [
		max := max max: self headerItem submorphBounds width + 5. "font rendering bugfix" ]].
	^ max