An ACController is the object handling the keyboard input and controlling the ACModel and ACMenuMorph, initiating the calculation of suggestions and the displaying of those.

Instance Variables
	acmodel:					ACModel
	context:					instance of contextClass
	contextClass:				ACContext class
	correctionTimestamp:		Timestamp
	editor:						Editor passed by the system
	expanded:					Boolean
	menuMorph:				ACMenuMorph
	model:						Workspace (legacy from OController)

correctionTimestamp
	- used fot a delay in re-opening the menu once the user deleted something

editor
	- passed to the controller by the system
	- used to get the full content of the current StringHolder for the context

expanded
	- used to save if the extended menu is displayed

model
	- NOT THE ACModel!!!
	- legacy from OController, apparently still needed
