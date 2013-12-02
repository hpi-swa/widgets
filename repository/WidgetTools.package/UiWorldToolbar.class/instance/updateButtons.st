private
updateButtons

	| group |
	self removeAllMorphs.
	group := nil.
	self definitions do: [:definition | | button |
		definition
			ifNil: [group ifNotNil: [self addMorphBack: group]. self addMorphBack: self separator. group := nil.]
			ifNotNil: [
				group ifNil: [group := UiContainer new changeTableLayout; listDirection: #leftToRight; hResizing: #shrinkWrap; vResizing: #shrinkWrap; layoutInset: 0; cellInset: 0.].
				button := UiToolButton new
					text: definition first;
					icon: definition second;
					layoutInset: (2@2 corner: 2@2);
					balloonText: definition first;
					buttonStyle: definition fifth;
					checkable: definition sixth;
					autoRaise: true.
				definition sixth ifTrue: [button checked: definition seventh].
				
				definition third
					ifNil: [button enabled: false]
					ifNotNil: [:receiver |
						self flag: #hacky. "sp: button might be needed by observer"
						((definition fourth count: [:c| c = $: ]) = 2)
							ifTrue: [ self
										connect: button 
										signal: #clicked: 
										to: definition third 
										selector: definition fourth
										pattern: {1. #=. button}]
							ifFalse: [self
										connect: button 
										signal: #clicked: 
										to: definition third 
										selector: definition fourth]].
				group addMorphBack: button]].
		
	group ifNotNil: [self addMorphBack: group].