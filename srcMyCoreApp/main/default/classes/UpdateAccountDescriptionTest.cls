@isTest
private class UpdateAccountDescriptionTest {
    @isTest static void testUpdateDescription() {
        // Set up test data
        Account testAccount = new Account(Name='Test Account');
        insert testAccount;
        
        // Test the updateDescription method
        Test.startTest();
        UpdateAccountDescription.updateDescription();
        Test.stopTest();
        
        // Verify the Description field was updated
        testAccount = [SELECT Description FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals('Updated by Apex', testAccount.Description, 'The Description should be updated.');
    }
}