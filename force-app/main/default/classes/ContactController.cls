public with sharing class ContactController {

    // New method that just returns a static string
    @AuraEnabled(cacheable=true)
    public static String getWelcomeMessage() {
        return 'The component is connected to Apex successfully!';
    }

    // Existing method to get contacts
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        try {
            return [
                SELECT Id, Name, Title, Phone, Email
                FROM Contact
                WITH SECURITY_ENFORCED
                ORDER BY CreatedDate DESC
                LIMIT 5
            ];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}