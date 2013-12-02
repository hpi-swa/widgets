as yet unclassified
visitPropertyNode: aPropertyNode

	self mode == #toc ifTrue: [
		out
			cr;
			nextPutAll: (' * [#property{1} {2}] : {3}' format: {
				aPropertyNode symbol asLowercase.
				aPropertyNode symbol.
				aPropertyNode typeString})].

	self mode == #details ifTrue: [
		out
			cr;
			nextPutAll: ('=== {1} : {2} === #property{3}' format: {
				aPropertyNode symbol.
				aPropertyNode typeString.
				aPropertyNode symbol asLowercase});
			cr;
			nextPutAll: aPropertyNode comment;
			cr; cr;
			nextPutAll: ('By default, this property is ''''''{1}''''''.' format: {
				aPropertyNode defaultValueString}).
			"cr; cr;
			nextPutAll: '''''''Accessors:''''''';
			cr"
			
	].