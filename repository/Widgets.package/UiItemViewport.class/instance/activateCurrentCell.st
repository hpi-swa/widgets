events
activateCurrentCell

	self selection currentIndex ifNotNil: [:index |
		self
			activated: index;
			returnPressed: index].