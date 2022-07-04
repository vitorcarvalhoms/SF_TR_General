public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer n, string ln){
        List<Contact> con = New List<Contact>();
        for (Integer j=0;j<n;j++){
            Contact ct = new Contact();
            ct.FirstName = 'Test ' + j;
            ct.LastName = ln;
            con.add(ct);
        }
    return con;
    }
}