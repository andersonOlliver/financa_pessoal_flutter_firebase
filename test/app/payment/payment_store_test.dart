import 'package:flutter_test/flutter_test.dart';
import 'package:financa_pessoal/app/payment/payment_store.dart';
 
void main() {
  late PaymentStore store;

  setUpAll(() {
    store = PaymentStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}