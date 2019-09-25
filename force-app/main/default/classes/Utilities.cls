public class Utilities {
    
    public static String subject() {
      return 'Woof';
    }

    public static void send_email(String recipient, String subject, String body) {
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();  
      mail.setToAddresses(new String[] {recipient});
      mail.setSubject(subject());
      mail.setPlainTextBody(body);
      Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}