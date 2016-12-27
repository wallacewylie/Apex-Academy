@isTest
private class WarrantySummaryTest {
	
	@isTest static void createCase() {
		Case c = new Case();
		c.Product_Purchase_Date__c = Date.today() - 1;
		c.Product_Total_Warranty_Days__c = 3;
		c.Status = 'New';
		c.Origin = 'Phone';

		insert c;
	}
	
	
}