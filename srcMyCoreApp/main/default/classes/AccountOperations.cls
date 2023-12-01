public class AccountOperations {
    public static Account setDefaultDescription(Account a) {        
        if (a.Description == null) {
            a.Description = 'Default Test Description';
            update a;
        }
        
        return a;
    }
}
