as yet unclassified
addMorph: aMorph

	"Avoid unnecessary #layoutChanged."
	aMorph owner == self ifTrue: [^ self].

	super addMorph: aMorph.