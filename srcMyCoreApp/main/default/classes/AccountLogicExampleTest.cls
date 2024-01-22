@isTest
private class AccountLogicExampleTest {
    @isTest
    static void testSetDefaultDescription() {
        // Test case 1: Description is not null
        Account accountWithDescription = new Account(Description = 'Existing Description');
        Account result1 = AccountLogicExample.setDefaultDescription(accountWithDescription);
        System.assertEquals(accountWithDescription, result1, 'Description should not be changed');

        // Test case 2: Description is null
        Account accountWithoutDescription = new Account();
        Account result2 = AccountLogicExample.setDefaultDescription(accountWithoutDescription);
        System.assertEquals('Default Description', result2.Description, 'Description should be set to default');
    }
}