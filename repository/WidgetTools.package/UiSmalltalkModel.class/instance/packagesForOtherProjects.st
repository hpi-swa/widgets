accessing
packagesForOtherProjects

	^ PackageOrganizer default packages reject: [:pkg | pkg name beginsWith: #Seaside]