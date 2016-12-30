@isTest
private class LeadDisqualificationTest {
	
	@isTest static void createLead() {
		// Implement test code
		Lead newLead = new Lead();
		newLead.FirstName = 'john';
		newLead.LastName = 'test';
		newLead.Company = 'Great Company';

		insert newLead;
	}
	
}