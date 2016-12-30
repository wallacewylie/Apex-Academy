@isTest
private class MultiTaskCreatorTest {
	
	@isTest static void createAccountWithSelectedItems() {
		// Create an account with multi-select items selected
		Account acc = new Account();
		acc.Name = 'Salesforce';
		acc.MSP__c = 'One;Two;Three';
		insert acc;
	}
	
}