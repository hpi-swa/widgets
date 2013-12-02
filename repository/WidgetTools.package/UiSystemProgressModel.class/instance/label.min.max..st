nodes
label: shortDescription min: minValue max: maxValue

	| node |
	self assureOpenView.
	
	node := self openCurrentNode: (UiSystemProgressNode new
		text: shortDescription;
		minimum: minValue;
		maximum: maxValue).
	
	^ [:currentValueOrLabel | | index |	
			currentValueOrLabel isNumber
				ifTrue: [node current: currentValueOrLabel]
				ifFalse: [node text: currentValueOrLabel].
			index := self currentIndex.
			self rowsChangedFor: index parent from: index row to: index row]