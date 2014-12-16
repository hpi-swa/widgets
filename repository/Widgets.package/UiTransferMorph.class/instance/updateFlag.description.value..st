as yet unclassified
updateFlag: symbol description: string value: set

	| item |
	item := self submorphWithProperty: symbol.
	(set and: [item isNil]) ifTrue: [
		self addMorphFront: ((self labelMorphFor: string)
			setProperty: symbol toValue: true;
			yourself).
		^ self].
	(set not and: [item notNil]) ifTrue: [
		item delete].