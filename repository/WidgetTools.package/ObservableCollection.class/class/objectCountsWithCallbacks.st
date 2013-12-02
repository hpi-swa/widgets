as yet unclassified
objectCountsWithCallbacks

	| histogram object lastObject i |
	self signal: 'Not working.'.
	
	histogram := Bag new.
	object := self someObject.
	lastObject := Object new.
	i := 1.
	
	UiUnanticipatedProgressService
		beginTask: #objects
		label: 'Collecting objects...'
		startValue: i
		maxValue: nil.
	
	[lastObject == object] whileFalse: [
		histogram add: object class.
		object := object nextObject.
		
"		UiUnanticipatedProgressService
			updateTask: #objects
			currentValue: (i := i + 1).
"
		].
	
	UiUnanticipatedProgressService
		endTask: #objects.


	^ histogram	