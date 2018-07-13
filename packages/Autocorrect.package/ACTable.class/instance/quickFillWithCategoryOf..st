updating
quickFillWithCategoryOf: aClass
	(self classesInCategory: aClass theNonMetaClass category) do: [:e | self quickFillWithClass: e]