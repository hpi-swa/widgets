model data
textFor: aModelIndex

	| node value text |
	"No header text."
	(aModelIndex row = 0 or: [aModelIndex column = 0]) ifTrue: [^ nil].
	
	node := aModelIndex valueOfProperty: #node.
	value := node percentage.
	
	aModelIndex column = 1 ifTrue: [
		text := node text copy ifEmpty: ['<font color="#aaaaaa">Unknown activity happening...</font>' asHtmlText	]].
	aModelIndex column = 2 ifTrue: [
		(node id notNil or: [value = -1])
			ifTrue: [text := ' ' asText]
			ifFalse: [text := ('{1} %' format: {(value * 100) asInteger}) asText]].
	
	
	
	node finished ifTrue: [
		text addAttribute: (TextColor color: (Color r: 0 g: 0.5 b: 0))]. 

	^ text