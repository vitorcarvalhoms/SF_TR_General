public class ContactAndLeadSearch {
    public static List<list<sObject>> searchContactsAndLeads(string ln) {
    List<list<sObject>> lst = [FIND :ln IN ALL FIELDS RETURNING Lead(Name),Contact(Name)];
    system.debug(lst);
    return lst;
    }
}