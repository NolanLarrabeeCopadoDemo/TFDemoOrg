@IsTest
private class AccountLogicTest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description');
        insert acc;
        acc = AccountLogic.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}
