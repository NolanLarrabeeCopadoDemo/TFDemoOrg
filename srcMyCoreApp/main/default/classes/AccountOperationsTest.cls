@IsTest
public class AccountOperationsTest {
    @IsTest
    public static void testSetDefaultDescription() {
        // Create a test Account
        Account testAccount = new Account();
        testAccount.Name = 'Test Account';
        testAccount.Description = null;
        insert testAccount;
        
        // Call the method being tested
        Account updatedAccount = AccountOperations.setDefaultDescription(testAccount);
        
        // Verify that the Description field has been updated
        System.assertEquals('Default Test Description', updatedAccount.Description);
    }
}