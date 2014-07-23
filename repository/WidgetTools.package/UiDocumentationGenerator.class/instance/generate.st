as yet unclassified
generate

	| root exporter |
	root := UiDocNode new.
	"(PackageInfo named: #Widgets) classes"
	{Morph} do: [:cls | "((cls inheritsFrom: Morph) and: [cls isWidgetClass] and: [cls isExperimentalWidgetClass not])" true ifTrue: [
		| classNode |
		classNode := UiDocWidgetNode new theClass: cls.
		root add: classNode.
		
		((cls superclass canUnderstand: #widgetProperties)
			ifTrue: [cls widgetProperties copyWithoutAll: cls superclass widgetProperties]
			ifFalse: [cls widgetProperties]) do: [:category |
			category value do: [:property | | method |
				method := cls lookupSelector: property key.
				classNode add: (UiDocPropertyNode new
					symbol: property key;
					type: property value;
					comment: (self commentForMethod: method);
					defaultValue: (cls new perform: property key))]].
			
		cls signals do: [:selector | | method |
			method := cls lookupSelector: selector.
			classNode add: (UiDocSignalNode new
				symbol: selector;
				comment: (self commentForMethod: method))]
		]].

	exporter := UiDocTracWikiExporter new.
	"exporter visitNode: root." "root accept: exporter ???"
	root nodes first accept: exporter.
	^ exporter contents