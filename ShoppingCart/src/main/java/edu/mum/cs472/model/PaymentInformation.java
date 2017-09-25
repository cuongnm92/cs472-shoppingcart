package edu.mum.cs472.model;

public class PaymentInformation {

	private int paymentInfoId;
	private int userId;
	private String cardNumber;
	private String cardType;
	public int getPaymentInfoId() {
		return paymentInfoId;
	}
	public void setPaymentInfoId(int paymentInfoId) {
		this.paymentInfoId = paymentInfoId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	
	
	
}
