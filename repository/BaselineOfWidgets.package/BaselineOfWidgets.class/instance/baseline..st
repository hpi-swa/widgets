baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec project: 'Signals' with: [
			spec
				className: 'BaselineOfSignals';
				repository: 'github://marceltaeumel/signals:master/repository'].

		spec project: 'Animations' with: [
			spec
				className: 'BaselineOfAnimations';
				repository: 'github://marceltaeumel/animations:master/repository'].

		spec package: 'VB-Regex' with: [spec repository: 'http://www.squeaksource.com/Regex'].
					
		spec
			package: 'Icons' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'];
			package: 'WidgetTools' with: [spec
				requires: #('Widgets' 'Icons')];
			package: 'WidgetTests' with: [spec
				requires: #('Widgets')];
			package: 'Widgets' with: [spec
				requires: #('Animations' 'Signals' 'VB-Regex');
				postLoadDoIt: #postLoad].

		spec
			group: 'default' with: #('core');
			group: 'core' with: #('Widgets');
			group: 'tools' with: #('WidgetTools');
			group: 'tests' with: #('WidgetTests');
			group: 'full' with: #('tools' 'tests');
			group: 'TravisCI' with: #('WidgetTests')].
		
	spec for: #squeak do: [
		spec
			package: 'WidgetSqueakPlatform' with: [
				spec requires: #('Widgets')];	
			package: 'Widgets' with: [
				spec includes: #('WidgetSqueakPlatform')]].
	spec for: #pharo do: [
		spec
			package: 'WidgetPharoPlatform' with: [
				spec requires: #('Widgets')];
			package: 'Widgets' with: [
				spec includes: #('WidgetPharoPlatform')]].