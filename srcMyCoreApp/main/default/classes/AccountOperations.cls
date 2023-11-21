public class AccountOperations {
    public static Account setDefaultDescription(Account a) {        
        if (a.Description != null) {
            return a;
        } else {
            a.Description = 'Default Description';
        }
        
        List<Account> accounts = [SELECT Id FROM Account];
        
        for (Integer i = 0; i < 10; i++) {
            // Use the accounts list here
        }
        
        update a;
           
        return a;
    }
}
