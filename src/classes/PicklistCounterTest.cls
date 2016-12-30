@isTest
private class PicklistCounterTest {
	
	@isTest static void countMultiSelectItems() {
		// Create an account with MSP items
		Account acc = new Account();
		acc.Name = 'Patagonia';
		acc.MSP__c = 'One;Two;Three';
		insert acc;

		// Update the account to have no MSP items
		acc.MSP__c = null;
		update acc;
	}
	
}