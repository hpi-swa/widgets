examples
ex01iconicList

	UiListView new
		listOrientation: #vertical;
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself})
			textConverter: [:node | node package name];
			iconConverter: [:node | UiSilkIcons packageIcon];
			itemOrientation: #vertical);
		model: UiSmalltalkModel new;
		hAlignment: #center;		
		topLeft: 50@50;
		extent: 600@300;
		openInWorld.