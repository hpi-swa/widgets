building
itemFor: aNode

	| icon text balloonText item checkbox itemColor morph |	
	icon := self iconFor: aNode "ifNil: [Morph new extent: 16@16; color: Color transparent]".
	morph := self morphFor: aNode.
	text := self textFor: aNode.
	balloonText := self balloonTextFor: aNode.
	itemColor := self colorFor: aNode.
	
	item := Morph new.
	
	itemColor
		ifNil: [item color: Color transparent]
		ifNotNil: [:c | item color: c; cornerStyle: #rounded; setProperty: #cornerRadius toValue: 3; borderWidth: 1 "transparent border"].
	
	"A checkbox is created if this column was configured to have checkable nodes."
	(self checkableFor: aNode) ifTrue: [
		checkbox := UiCheckBox basicNew initializeNoText.
		checkbox checked: (self checkedFor: aNode).
		self connect: checkbox signal: #toggled: to: aNode selector: (self checkedSelector, #:) asSymbol.
		self connect: checkbox signal: #toggled: to: checkbox selector: #visible:.
		item addMorphBack: checkbox].
	
	"Workaround for item layouting if item is empty."
	(((text isNil
		and: [icon isNil])
		and: [morph isNil])
		and: [checkbox isNil]) ifTrue: [text := ' ' asText].
	
	icon ifNotNil: [item addMorphBack: icon asMorph].
	morph ifNotNil: [item addMorphBack: morph].
	text ifNotNil: [
		text isString ifTrue: [text := text asText].
		text isString | text isText ifFalse: [text := text asString asText].
		self overrideStandardListFont ifFalse: [text addAttribute: (TextFontReference toFont: UiPlatform current standardListFont)].
		item addMorphBack: text asMorph lock].
	balloonText ifNotNil: [
		item balloonText: balloonText].
	
	"Store morphs in properties for later access."
	item
		setProperty: #text toValue: text;
		setProperty: #icon toValue: icon;
		setProperty: #morph toValue: morph;
		setProperty: #balloonText toValue: balloonText;
		setProperty: #checkBox toValue: checkbox;
		setProperty: #selectable toValue: (self selectableFor: aNode).

	self doLayoutFor: item.	
	checkbox ifNotNil: [checkbox hide].
	
	^ item