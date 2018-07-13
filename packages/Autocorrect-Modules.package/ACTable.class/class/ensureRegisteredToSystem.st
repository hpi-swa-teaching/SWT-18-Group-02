as yet unclassified
ensureRegisteredToSystem

	SystemChangeNotifier uniqueInstance
		noMoreNotificationsFor: self; "avoid double registration"
		notify: self ofSystemChangesOfItem: #method using: #methodChanged:.