public class AccountHandler2 {
    public static Account insertNewAccount(string fn, string ln){
        try {
            string nm = fn + ' ' + ln;
        	Account acct = new Account(Name=nm, First_Name__c=fn, Last_Name__c=ln);
        	system.debug(acct.name);
        	insert acct;
       		return acct;
        } catch (Dmlexception e) {
            system.debug(e.getMessage());            
            return null;
        }
    }
}