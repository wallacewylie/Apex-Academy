trigger PicklistCounter on Account (before insert, before update) {

	for (Account acc : Trigger.new) {
		if (acc.MSP__c != null) {
			// Update the counter if our MSP field has items
			Integer count = acc.MSP__c.countMatches(';') + 1;
			acc.Counter__c = count;
			System.debug('Number of itmes found for ' + acc.Name + ': ' + count);
		} else {
			// Reset the counter if our MSP field has no items
			acc.Counter__c = 0;
			System.debug('No items found for ' + acc.Name);
		}
	}

}