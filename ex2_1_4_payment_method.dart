abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  String cardNumber;

  CreditCard(this.cardNumber);

  @override
  void pay(double amount) {
    print('Paid \$$amount using Credit Card ($cardNumber)');
  }
}

class PromptPay implements PaymentMethod {
  String phoneNumber;

  PromptPay(this.phoneNumber);

  @override
  void pay(double amount) {
    print('Paid \$$amount using PromptPay ($phoneNumber)');
  }
}

class CashOnDelivery implements PaymentMethod {
  String address;

  CashOnDelivery(this.address);

  @override
  void pay(double amount) {
    print('Will collect \$$amount via Cash on Delivery at: $address');
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard('1234-5678-9012'),
    PromptPay('081-234-5678'),
    CashOnDelivery('123 Science Rd, Sector 7'),
  ];

  for (var method in payments) {
    method.pay(1500.0);
  }
}