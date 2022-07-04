public with sharing class ClosedOpportunity {
        public static void ClosedOpportunityMethod(List<Opportunity> OpportunityList){
        List<Opportunity> OppList = [SELECT Id, StageName FROM Opportunity WHERE Id IN :OpportunityList];
        List<Task> NewTask = New List<Task>();
        for (Opportunity opp : OppList){
            if (opp.StageName == 'Closed Won'){
                Task nt = new Task();
                nt.Subject = 'Follow Up Test Task';
                nt.WhatId = opp.Id;
                NewTask.add(nt);
            }
        }
        insert NewTask;
    }
}