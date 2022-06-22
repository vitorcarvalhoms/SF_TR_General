public class ContactSearch {
    public static Contact[] searchForContacts(string ln, string mail){
        Contact[] con = [SELECT Name FROM Contact WHERE LastName=:ln AND MailingPostalCode =:mail];
        system.debug('Contact:' + con);
        return con;
        }
}