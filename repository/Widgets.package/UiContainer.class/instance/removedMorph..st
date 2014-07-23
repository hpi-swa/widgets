as yet unclassified
removedMorph: aMorph
	"Walk the owner chain until somebody cares."

	self flag: #context. "mt: Should be say the owner where this morph was originally removed?"
	self owner ifNotNil: [:o |
		o removedMorph: aMorph].