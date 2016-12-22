@isTest
public class HelloWorldTest {
    
    @isTest static void updateLead() {
        Lead myLead = new Lead();
        myLead.FirstName = 'Wallace';
        myLead.LastName = 'Wylie';
        myLead.Company = 'WNINS';
        insert myLead;
        
        myLead.Company = 'PluralSight';
        update myLead;
    }
        
}