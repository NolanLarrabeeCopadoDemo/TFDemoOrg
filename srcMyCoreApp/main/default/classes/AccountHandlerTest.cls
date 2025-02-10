@isTest
private class AccountHandlerTest {
    @isTest
    static void testUpdateAccountIndustry() {
        Account acc = new Account(Name='Test Account', Industry='Technology');
        insert acc;

        Test.startTest();
        AccountHandler.updateAccountIndustry(acc, 'Finance');
        Test.stopTest();

        Account updatedAcc = [SELECT Industry FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Finance', updatedAcc.Industry, 'Industry should be updated to Finance');
    }
}