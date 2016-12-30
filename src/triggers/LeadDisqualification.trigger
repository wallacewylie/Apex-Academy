trigger LeadDisqualification on Lead (before insert) {

String illegalWord = 'test';

	for (Lead leadTest : Trigger.new) {
		if (leadTest.FirstName != null && leadTest.FirstName.containsIgnoreCase(illegalWord) || 
			leadTest.LastName != null && leadTest.LastName.containsIgnoreCase(illegalWord)) {
			leadTest.Status = 'Disqualified';
		}
	}

}