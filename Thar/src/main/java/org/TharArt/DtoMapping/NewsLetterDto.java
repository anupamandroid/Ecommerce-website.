package org.TharArt.DtoMapping;

public class NewsLetterDto {
	
	private int newsLetterId;
	private String newsLetterEmail;
	private boolean newsLetterActive;
	
	public NewsLetterDto() {}

	public int getNewsLetterId() {
		return newsLetterId;
	}

	public void setNewsLetterId(int newsLetterId) {
		this.newsLetterId = newsLetterId;
	}

	public String getNewsLetterEmail() {
		return newsLetterEmail;
	}

	public void setNewsLetterEmail(String newsLetterEmail) {
		this.newsLetterEmail = newsLetterEmail;
	}

	public boolean isNewsLetterActive() {
		return newsLetterActive;
	}

	public void setNewsLetterActive(boolean newsLetterActive) {
		this.newsLetterActive = newsLetterActive;
	}

}
