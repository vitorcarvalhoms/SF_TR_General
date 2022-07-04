@isTest
public class TestRestrictContactByName {
    @isTest static void testContactTrigger(){
        Contact con = new Contact(LastName = 'INVALIDNAME');
        insert con;        
    }
}