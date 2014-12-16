as yet unclassified
initDraggedMorphFor: someObjects

	| objects hidden |
	draggedMorph := Morph new
		changeTableLayout;
		listDirection: #topToBottom;
		color: Color transparent;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		cellPositioning: #topLeft.
	
	objects := someObjects size > 5
		ifFalse: [someObjects]
		ifTrue: [someObjects first: 5].
	hidden := someObjects size - 5 max: 0.
	
	draggedMorph addAllMorphs: (objects collect: [:object | 
		self createDraggedSubmorphFor: object]).

	draggedMorph submorphBounds width + 5 in: [:maxWidth |
		draggedMorph submorphsDo: [:m | m width: maxWidth]].

	"Indicate hidden items."
	hidden > 0 ifTrue: [draggedMorph addMorphBack:
		(self labelMorphFor: ('{1} more' format: {hidden}))].

	self addMorphBack: draggedMorph.
	self updateCopyIcon.
	self changed; fullBounds