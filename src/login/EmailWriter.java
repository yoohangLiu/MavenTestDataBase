package login;

import java.util.Date;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailWriter {
    /* 本类为邮件功能接口，用于向指定的邮箱发送邮件 */
    /*
        类名：EmailWriter
        接收参数有: receiverEmail(String) -> 接收邮件者的邮箱
                   title(String) -> 邮件的主题
                   content(String) -> 邮件的内容
    */
    private String smtp = "smtp.sina.com";
    private String senderEmail = "ketang12306@sina.com";
    private String senderPassword = "ketang12306";

    public EmailWriter() {}
    public void GenerateEmail(String receiveEmail, String title, String content) {
        try {
            Properties props = new Properties();
            props.put("mail.smtp.host", this.smtp);
            props.put("mail.smtp.auth", "true");
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);
            MimeMessage msg = new MimeMessage(session);
            InternetAddress fromAddress = new InternetAddress(this.senderEmail);
            msg.setFrom(fromAddress);
            InternetAddress toAddress = new InternetAddress(receiveEmail);
            msg.addRecipient(Message.RecipientType.BCC, toAddress);
            msg.setSubject(title);
            BodyPart body = new MimeBodyPart();
            body.setContent(content, "text/html; charset=utf-8");
            Multipart part = new MimeMultipart();
            part.addBodyPart(body);
            msg.setContent(part);
            msg.setSentDate(new Date());
            msg.saveChanges();
            Transport transport = session.getTransport("smtp");
            transport.connect(this.smtp, this.senderEmail, this.senderPassword);
            transport.sendMessage(msg, msg.getAllRecipients());
        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }
}
