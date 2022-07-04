@isTest
public class TestVerifyDate {
    @isTest static void CheckDatesTest(){
    	Date date1 = Date.newInstance(2022, 01, 01);
        Date date2 = Date.newInstance(2022, 01, 02);
        Date dateX = VerifyDate.CheckDates(date1,date2);
        system.assertEquals(date2, dateX);
    }
    @isTest static void CheckDates2Test(){
    	Date date1 = Date.newInstance(2022, 01, 01);
        Date date2 = Date.newInstance(2022, 08, 02);
        Date dateX = VerifyDate.CheckDates(date1,date2);
        Date coiso = Date.newInstance(2022, 01, 31);
        system.assertEquals(coiso, dateX);        
    }
}