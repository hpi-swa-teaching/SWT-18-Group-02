stringHolderRelated
testControllerAttatchedToStringholder

	ACSystemIntegration setAsDefault.
	self assert: (StringHolder new correctionController isKindOf: ACController).
	ACSystemIntegration resetDefault.
	self assert: (StringHolder new correctionController isKindOf: ACController) not