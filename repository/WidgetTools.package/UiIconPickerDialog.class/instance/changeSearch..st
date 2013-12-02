actions
changeSearch: nameFilter

	Cursor wait showWhile: [
		iconView model nameFilter: nameFilter asString].