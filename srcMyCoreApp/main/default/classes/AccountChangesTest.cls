@IsTest
private class AccountChangesTest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description');
        insert acc;
        acc = AccountChanges.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}