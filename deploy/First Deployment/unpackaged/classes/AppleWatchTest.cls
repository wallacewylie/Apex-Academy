@isTest
public class AppleWatchTest {
    
    @isTest static void createOpportunity(){
        Opportunity opp = new Opportunity();
        opp.Name = 'The Music Business';
        opp.StageName = 'Prospecting';
        opp.CloseDate = Date.today();
        
        insert opp;
    }

}