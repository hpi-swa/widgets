as yet unclassified
selectFirst

	self rowsWithIndexDo: [:rowInfo :index |
		((rowInfo visible
			and: [rowInfo isSeparator not])
			and: [rowInfo items first valueOfProperty: #selectable])
				ifTrue: [
					self selection cells: {1@index}.
					^ self]].