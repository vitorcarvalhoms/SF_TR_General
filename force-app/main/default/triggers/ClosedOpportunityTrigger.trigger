trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Opportunity> OppList = [SELECT Id, StageName FROM Opportunity WHERE Id IN :Trigger.new];
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