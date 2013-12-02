examples
ex01silk

	UiListView new
		listOrientation: #vertical;
		listSpec: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. #balloonText -> #yourself})
			iconConverter: [:dict | dict at: #form];
			balloonTextConverter: [:dict | (dict at: #selector) allButLast: 4 "remove iconsuffix"]);
		model: (UiIconModel new iconSet: UiSilkIcons);
		topLeft: 50@50;
		extent: 600@300;
		openInWorld.