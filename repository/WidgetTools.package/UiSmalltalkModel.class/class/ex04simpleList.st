examples
ex04simpleList

	UiListView new
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself})
			textConverter: [:node | node package name];
			iconConverter: [:node | UiSilkIcons packageIcon]);
		model: UiSmalltalkModel new;
		topLeft: 50@50;
		extent: 600@300;
		openInWorld.