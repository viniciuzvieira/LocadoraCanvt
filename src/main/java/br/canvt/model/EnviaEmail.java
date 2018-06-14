package br.canvt.model;

import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EnviaEmail {

    public void EnviarnEmail(String email) {
        Properties prop = new Properties();
        /**
         * Parâmetros de conexão com servidor Gmail
         */
        prop.put("mail.smtp.host", "smtp.gmail.com");

        prop.put("mail.smtp.auth", "true");
        prop.put("mail.debug", "true");
        prop.put("mail.smtp.debug", "true");
        prop.put("mail.mime.charset", "ISO-8859-1");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.socketFactory.port", "587");
        prop.put("mail.smtp.socketFactory.fallback", "false");
        prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("LocadoraCanvt@gmail.com", "LocadoraCanvt2018");
            }
        });

        /**
         * Ativa Debug para sessão
         */
        session.setDebug(true);

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("LocadoraCanvt@gmail.com")); //Remetente

            Address[] toUser = InternetAddress //Destinatário(s)
                    .parse(email);

            message.setRecipients(Message.RecipientType.TO, toUser);
            message.setSubject("Canvt agradece  a preferência");//Assunto
            message.setText("	\n"
                    + " \n"
                    + "Sua conta foi criada!\n"
                    + "Nós da equipe Canvt agradecemos sua preferencia \n"+
                    "-Suporte Canvt");

           
            /**
             * Método para enviar a mensagem criada
             */
            Transport.send(message);

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }

    }
}
