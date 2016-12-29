@isTest
private class CheckSecretInformationTest {
	
	@isTest static void createCaseWithSecretInfo() {
		// Create a case with all required inputs
		Case myCase = new Case();
		myCase.Subject = 'HELP!!!';
		myCase.Description = 'My bodyweight is 180 pounds.';
		insert myCase;
		System.debug('Case ' + myCase.Id + ' created with description ' + myCase.Description);
	}
	
}