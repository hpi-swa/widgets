actions
addResult: aModelIndex

	self ui results addItem: (UiPropertyItemNode new
		at: #index put: aModelIndex;
		at: #text put: ('{1} <font color="#AAAAAA">{2}</font>' format: {aModelIndex node label. (aModelIndex node class name allButFirst: 11) allButLast: 4}) asHtmlText);
		yourself.