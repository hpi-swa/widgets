initialization
clear

	self setProperty: #isClearing toValue: true. 
	self selection clear.
	self removeProperty: #isClearing.
	
	columns do: [:col | col clear]. "Keep column-specific settings." self flag: #inconsistency.
	rows removeAll.
	
	"Help garbage collector ... *sigh* ... in case the model will be used elsewhere and we just made the models expectations and my items inconsistent..."
	self submorphsDo: [:m |
		(m valueOfProperty: #modelIndex ifAbsent: [])
			ifNotNil: [:index | index disconnectNode] ].
	
	self
		removeAllMorphs;
		extent: 1@1.