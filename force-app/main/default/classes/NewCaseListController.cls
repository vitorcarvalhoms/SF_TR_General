public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> caseList = [SELECT Id, CaseNumber FROM Case WHERE Status='New'];   
        system.debug(caseList);
        return caseList;
    }
}