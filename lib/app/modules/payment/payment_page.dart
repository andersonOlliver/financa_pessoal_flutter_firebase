import 'package:flutter_modular/flutter_modular.dart';
import 'package:financa_pessoal/app/modules/payment/payment_store.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  final String title;
  const PaymentPage({Key? key, this.title = 'PaymentPage'}) : super(key: key);
  @override
  PaymentPageState createState() => PaymentPageState();
}
class PaymentPageState extends State<PaymentPage> {
  final PaymentStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}