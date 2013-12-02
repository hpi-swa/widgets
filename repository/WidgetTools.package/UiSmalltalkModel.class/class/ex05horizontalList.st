examples
ex05horizontalList

	UiListView new
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #yourself})
			textConverter: [:node | node package name];
			iconConverter: [:node | UiSilkIcons packageIcon]);
		listOrientation: #horizontal;
		model: UiSmalltalkModel new;
		topLeft: 50@50;
		extent: 600@300;
		openInWorld.