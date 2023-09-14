@RestResource(urlMapping='/createAccounts')
global class CreateAccounts {
    
    @HttpPost
    global static String createAccounts(List<Account> accounts) {
        try {
            insert accounts;
            return 'Accounts created successfully.';
        } catch (Exception e) {
            return 'Error creating accounts: ' + e.getMessage();
        }
    }
}