as yet unclassified
objectCountsWithHourGlass

	| histogram object lastObject |
	histogram := Bag new.
	object := self someObject.
	lastObject := Object new.
	Cursor wait showWhile: [
		[lastObject == object] whileFalse: [
			histogram add: object class.
			object := object nextObject]].
	^ histogram	