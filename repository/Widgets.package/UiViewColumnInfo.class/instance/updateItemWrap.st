geometry
updateItemWrap

	self textLineWrap ifFalse: [
		self items do: [:item |
			item vResizing: #rigid].
		^ self].

	self items do: [:item | 
		
		item vResizing: #shrinkWrap.
		item width: self width.
		
		item submorphs
			detect: [:sm | sm class == TextMorph]
			ifFound: [:tm | 
				self flag: #reset. "mt: How to reset this value? Reconstruct all items?"
				tm hResizing: #rigid.
				
				self flag: #refactor. "mt: Only works if text is the last morph in the item?!"
				tm width: tm width - (tm right - item right)]
			ifNone: []].