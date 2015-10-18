accessing
optimalSize

	| preferredRowCount preferredColumnCount |	
	columns ifEmpty: [^ 1@1].

	self orientation = #default ifTrue: [
		^ columns first optimalSize @ self height].

	preferredRowCount := 20 min: self submorphs size.
	preferredColumnCount := 4.
	
	self orientation = #vertical ifTrue: [
		^ (maxItemExtent x * preferredColumnCount) @ (maxItemExtent y * (self submorphs size / preferredColumnCount) ceiling)].
	
	self orientation = #horizontal ifTrue: [
		^ (maxItemExtent x * (self submorphs size / preferredRowCount) ceiling)
			@ (maxItemExtent y * preferredRowCount)].