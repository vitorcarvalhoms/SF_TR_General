trigger ClosedOpportunityTriggerR01 on Opportunity (after insert, after update) {
    ClosedOpportunity.ClosedOpportunityMethod(Trigger.New);
}