accessing
rootNode

	^ rootNode ifNil: [rootNode := UiSystemProgressNode new text: '(root)']