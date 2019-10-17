import 'package:Bosch_Hackathon_Apps/LoginPage.dart';
import 'package:Bosch_Hackathon_Apps/ScanningPage.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key}):super(key: key);

  @override
  State<StatefulWidget> createState() => _CreatePaymentPage();
}

class _CreatePaymentPage extends State<PaymentPage> {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment'
        ),
      ),
      body: Container(
        child: Card(
          elevation: 0.8,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text(
                  'PBR094720348 - Rp. 2500',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text('Your Balance is Rp. 142.000'),
                
              ),
              ButtonTheme.bar( // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('CANCEL'),
                      onPressed: () { /* ... */ },
                    ),
                    FlatButton(
                      child: const Text('PAY NOW'),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => QRViewExample()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Connect',
        child: Icon(Icons.exit_to_app),
        onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
      ),
    );
  }
}