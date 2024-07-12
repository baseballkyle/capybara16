public with sharing class ApplicationsController {
    @AuraEnabled(cacheable=true)
    public static List<Application__c> getApplications() {
        return [
            SELECT
                Id,
                Name,
                State__c,
                Award_Amount__c
            FROM Application__c
            WITH USER_MODE
        ];
    }
}