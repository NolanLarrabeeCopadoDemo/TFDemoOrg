@isTest
private class UpdateAccountDescriptionTest {
    @isTest static void testUpdateDescriptionBulk() {
        // Set up test data with multiple accounts
        List<Account> testAccounts = new List<Account>();
        for(Integer i = 0; i < 200; i++) {
            testAccounts.add(new Account(Name='Test Account ' + i));
        }
        insert testAccounts;
        
        // Test the updateDescription method
        Test.startTest();
        UpdateAccountDescription.updateDescription();
        Test.stopTest();
        
        // Verify the Description field was updated for all accounts
        List<Account> updatedAccounts = [SELECT Description FROM Account WHERE Id IN :testAccounts];
        for(Account acc : updatedAccounts) {
            System.assertEquals('Updated by Apex', acc.Description, 'The Description should be updated.');
        }
    }
}