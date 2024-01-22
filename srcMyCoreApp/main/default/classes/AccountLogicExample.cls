public class AccountLogicExample {
    public static Account setDefaultDescription(Account a) {
        // If statements must use braces
        if (a.Description != null) {
            return a;
        } else {
            a.Description = 'Default Description';
        }

        // Avoid SOQL inside loops
        List<Account> accounts = [SELECT Id FROM Account]; // Moved outside the loop
        for (Integer i = 0; i < 10; i++) {
            // Use the queried list 'accounts' instead of querying inside the loop
        }

        // Avoid DML Statements inside loops
        update a; // Moved outside the loop

        return a;
    }
}