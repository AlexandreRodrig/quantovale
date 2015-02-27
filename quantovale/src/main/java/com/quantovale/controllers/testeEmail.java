package com.quantovale.controllers;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class testeEmail {

	public static void main(String[] args) throws EmailException {

		SimpleEmail email = new SimpleEmail();
		// Utilize o hostname do seu provedor de email
		System.out.println("alterando hostname...");
		email.setHostName("smtp.gmail.com");
		// Quando a porta utilizada não é a padrão (gmail = 465)
		email.setSmtpPort(587);
		// Adicione os destinatários
		email.addTo("alexanrodrig@gmail.com", "Jose");
		// Configure o seu email do qual enviará
		email.setFrom("alexanrodrig@gmail.com", "Alexandre");
		// Adicione um assunto
		email.setSubject("Test message");
		// Adicione a mensagem do email
		email.setMsg("This is a simple test of commons-email");
		// Para autenticar no servidor é necessário chamar os dois métodos
		// abaixo
		System.out.println("autenticando...");
		email.setSSL(true);
		email.setAuthentication("alexanrodrig@gmail.com", "81640792");
		System.out.println("enviando...");
		email.send();
		System.out.println("Email enviado!");

	}

}
