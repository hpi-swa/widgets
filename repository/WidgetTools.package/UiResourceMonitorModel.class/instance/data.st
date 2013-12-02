specs
data

	^ {
		{'world submorphs'. [ActiveWorld submorphs size]. nil. 'The number of all submorphs in the active world (<b>PasteUpMorph</b>)' asHtmlText}.
		{'event handlers'. [EventHandler allInstances size]. 2000. 'The number of all <b>EventHandler</b> instances.' asHtmlText}.
		{'signal emitters'. [SignalConnectionsRepository instance size]. 500. 'The number of all registered objects that have signals connected to somewhere.'}.
		{'event signal emitters'. [SignalConnectionsRepository instance keys count: [:key | key isKindOf: UiEventHandler]]. 500. 'The number of all <b>UiEventHandler</b> signal emitters.' asHtmlText}.
		{'icons'. Form allInstances count: [:f | f extent = (16@16)]. nil. 'The number of all 16x16 forms.'}.
		{'packages'. [PackageOrganizer default packages size]. nil. 'The number of all packages in this image.'}.
		{'classes'. [Smalltalk allClasses size]. nil. 'The number of all classes in this image.'}.
		{'traits'. [Smalltalk allTraits size]. nil. 'The number of all traits in this image.'}.
		{'system change sends'. [((SystemChangeNotifier uniqueInstance instVarNamed: #eventSource) actionMap values collect: [:list | list size]) sum]. nil. 'The number of all targets if a system change event occurs.'}.
		{'running animations'. [AnimAnimationRegistry main graphicsAnimations count: [:anim | anim isRunning]]. 10. 'The number of all running animations.'}.
		{'finished animations'. [AnimAnimationRegistry main graphicsAnimations count: [:anim | anim finishedOnce]]. 100. 'The number of all finished animations which where not deleted yet.'}}