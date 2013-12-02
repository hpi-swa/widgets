as yet unclassified
objectCounts

	| histogram object lastObject |
	histogram := Bag new.
	object := self someObject.
	lastObject := Object new.
	[lastObject == object] whileFalse: [
		histogram add: object class.
		object := object nextObject].
	^ histogram