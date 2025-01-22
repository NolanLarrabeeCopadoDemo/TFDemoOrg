public class UpdateAccountDescription {
    public static void updateDescription() {
        List<Account> accountsToUpdate = [SELECT Id, Description FROM Account];
        for(Account acc : accountsToUpdate) {
            acc.Description = 'Updated by Apex';
        }
        update accountsToUpdate;
    }
}