@isTest
public class AccountOperationsTest {
    @isTest static void testSetDefaultDescription() {
        // Create a test account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        // Call the method to set the default description
        Account updatedAccount = AccountOperations.setDefaultDescription(testAccount);

        // Retrieve the updated account from the database
        Account resultAccount = [SELECT Description FROM Account WHERE Id = :updatedAccount.Id];

        // Assert that the description has been set to the default value
        System.assertEquals('Default Description', resultAccount.Description);

        // Now set a description on the account and call the method again
        testAccount.Description = 'Non-default Description';
        update testAccount;
        updatedAccount = AccountOperations.setDefaultDescription(testAccount);

        // Retrieve the updated account from the database
        resultAccount = [SELECT Description FROM Account WHERE Id = :updatedAccount.Id];

        // Assert that the description has not been changed because it was not null
        System.assertEquals('Non-default Description', resultAccount.Description);
    }
}