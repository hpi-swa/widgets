accessing - model index
selectedIndices: someModelIndices

	self cells: (someModelIndices
		select: [:index | index node isNil or: [index selectable]]
		thenCollect: [:index | self viewport cellIndexFromModelIndex: index]).
