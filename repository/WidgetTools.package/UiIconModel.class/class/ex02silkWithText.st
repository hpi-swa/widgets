examples
ex02silkWithText

	UiListView new
		listOrientation: #vertical;
		listSpec: ((UiItemViewColumnSpec newFrom: {#icon -> #yourself. #text -> #yourself. #balloonText -> #yourself})
			iconConverter: [:dict | dict at: #form];
			textConverter: [:dict | (dict at: #selector) allButLast: 4 "remove icon suffix"];
			balloonTextConverter: [:dict | (dict at: #selector) allButLast: 4 "remove icon suffix"]);
		model: (UiIconModel new iconSet: UiSilkIcons);
		topLeft: 50@50;
		extent: 600@300;
		openInWorld.