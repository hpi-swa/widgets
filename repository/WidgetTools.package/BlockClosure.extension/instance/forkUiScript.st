*widgettools-scripts
forkUiScript

	ActiveMorphScripts add:
		(UiMorphScript on: self)
			run;
			yourself.
	^ ActiveMorphScripts last