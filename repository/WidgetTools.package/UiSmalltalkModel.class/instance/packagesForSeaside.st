accessing
packagesForSeaside

	^ PackageOrganizer default packages select: [:pkg | pkg name beginsWith: #Seaside]