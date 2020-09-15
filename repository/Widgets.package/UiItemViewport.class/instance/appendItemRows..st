add/remove - appending
appendItemRows: data
	"group -> row -> column -> model index -> item/morph"
	
	data withIndexDo: [:group :groupIndex | | indent |
		indent := nil.
		self appendGroupSeparator: group key.
		
		group value do: [:row | row do: [:indexToItem |
			indent ifNotNil: [
				indexToItem value
					setProperty: #indent
					toValue: (indexToItem key column = 1 ifTrue: [indent] ifFalse: [0])].
			self
				appendMorph: indexToItem value
				inRow: (self appendRowFor: indexToItem key)
				forIndex: indexToItem key.
			indent ifNil: [
				indent := indexToItem value valueOfProperty: #indent]]].
	
		indent ifNotNil: [:i |
			group key setProperty: #indent toValue: i].
	].