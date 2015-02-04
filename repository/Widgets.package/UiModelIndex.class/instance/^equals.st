comparing
= anotherModelIndex

	^ ((super = anotherModelIndex
		and: [self group = anotherModelIndex group])
		and: [self parent = anotherModelIndex parent])
"		and: [(self node isNil
			or: [anotherModelIndex node isNil])
			or: [self node = anotherModelIndex node]]"