public class AccountHandler {
    public static Account insertNewAccount(string nm){
        try {
        	Account acct = new Account(Name=nm);
        	system.debug(acct.name);
        	insert acct;
       		return acct;
        } catch (Dmlexception erro) {
            system.debug(erro.getMessage());            
            return null;
        }
    }
}