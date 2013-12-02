notifications
processNotification: anEvent

	| pkg pkgIndex sysIndex classIndex |
	(anEvent itemKind ~= #category and: [anEvent itemKind ~= #class])
		ifTrue: [^ self].
	
	pkg := PackageOrganizer default
		packageOfSystemCategory: anEvent itemCategory
		ifNone: [^ self].
	pkgIndex := (UiSimpleModelIndex
		row: (PackageOrganizer default packages indexOf: pkg)
		column: 1)
		model: self;
		setProperty: #package toValue: pkg.
	sysIndex := self
		indexRow: (pkg systemCategories indexOf: anEvent itemCategory)
		column: 1
		parent: pkgIndex.
	classIndex := self
		indexRow: ((SystemOrganization listAtCategoryNamed: anEvent itemCategory) indexOf: anEvent itemClass name)
		column: 1
		parent: sysIndex.
	
	anEvent itemKind = #category ifTrue: [
		anEvent isAdded ifTrue: [
			self rowsInsertedFor: pkgIndex from: sysIndex row to: sysIndex row.
			self rowsChangedFor: nil from: pkgIndex row to: pkgIndex row].
		anEvent isRemoved ifTrue: [
			self rowsRemovedFor: pkgIndex from: sysIndex row to: sysIndex row.
			self rowsChangedFor: nil from: pkgIndex row to: pkgIndex row].
		anEvent isRenamed ifTrue: [
			sysIndex := self
				indexRow: (pkg systemCategories indexOf: anEvent newName)
				column: 1
				parent: pkgIndex.
			self rowsChangedFor: pkgIndex from: sysIndex row to: sysIndex row]].

	anEvent itemKind = #class ifTrue: [
		anEvent isAdded ifTrue: [
			self rowsInsertedFor: sysIndex from: classIndex row to: classIndex row.
			self rowsChangedFor: pkgIndex from: sysIndex row to: sysIndex row].
		anEvent isRenamed ifTrue: [
			self rowsChangedFor: sysIndex from: classIndex row to: classIndex row].
		anEvent isRemoved ifTrue: [
			self rowsRemovedFor: sysIndex from: classIndex row to: classIndex row.
			self rowsChangedFor: pkgIndex from: sysIndex row to: sysIndex row]
		].
	
	anEvent itemKind = #method ifTrue: [
		].