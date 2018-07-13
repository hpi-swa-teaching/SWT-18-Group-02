updating
quickFillWithClass: aClass
	aClass methodsDo: [:e | self justCompiled: e selector in: aClass]