building
itemFor: aNode groupIndex: aGroupIndex isTopLevel: aBoolean
	"Create a morph that separates groups in item views."
	
	| icon text balloonText item |	

	aBoolean ifFalse: [
		text := (aNode groups at: aGroupIndex) asText.
		text
			addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
			addAttribute: (TextColor color: (Color gray: 0.66)).
		item := text asMorph
			margins: (0@2 corner: 0@ -1);
			lock.
		item
			setProperty: #selectable toValue: false;
			setProperty: #drawLine toValue: false;
			setProperty: #hideIfFirst toValue: false;
			setProperty: #hideIfEmpty toValue: true;
			setProperty: #hideIfSingle toValue: true.
		^ item].
	
	text := (aNode groups at: aGroupIndex) asText.
	text
		addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
		addAttribute: (TextColor color: (Color gray: 0.66)).
			
	icon := nil.
	balloonText := nil.
		
	item := Morph new color: Color transparent.
		
	icon ifNotNil: [item addMorphBack: icon asMorph].
	text ifNotNil: [item addMorphBack: text asMorph lock].
	balloonText ifNotNil: [item balloonText: balloonText].
	
	self doLayoutFor: item.	
	
	item
		setProperty: #selectable toValue: false;
		setProperty: #drawLine toValue: true;
		setProperty: #hideIfFirst toValue: self hideIfFirst;
		setProperty: #hideIfEmpty toValue: self hideIfEmpty;
		setProperty: #hideIfSingle toValue: true.
	
	^ item