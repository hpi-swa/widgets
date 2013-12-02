examples
ex03table

	UiTableView new
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself})
			textConverter: [:node | node package name];
			iconConverter: [:node | UiSilkIcons packageIcon]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #childCount})
			textConverter: [:integer | ('<font color="#555555">', integer asString, '</font>') asHtmlText]);
		addColumn: ((UiItemViewColumnSpec newFrom: {#text -> #yourself})
			textConverter: [:node | '<font color="#555555">package</font>' asHtmlText]);
		model: UiSmalltalkModel new;
		setHAlignmentForColumn: 2 to: #right;
		setHAlignmentForColumn: 3 to: #center;
		topLeft: 50@50;
		extent: 600@300;
		openInWorld.