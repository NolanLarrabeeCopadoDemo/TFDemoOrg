@isTest
private class AccountHandlerTest {
    @isTest
    static void testUpdateAccountRating() {
        Account acc = new Account(Name='Test Account', Rating='Cold');
        insert acc;

        Test.startTest();
        AccountHandler.updateAccountRating(acc, 'Hot');
        Test.stopTest();

        Account updatedAcc = [SELECT Rating FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Hot', updatedAcc.Rating, 'Rating should be updated to Hot');
    }
}