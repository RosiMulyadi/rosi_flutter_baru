import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/logo_livin.jpg'),
            fit: BoxFit.contain,
          ),
          SizedBox(height: 16.0),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.login),
            label: Text('Login'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.elliptical(60, 60),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.money, color: Colors.purple),
                tooltip: 'Tarik Tunai',
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.payment, color: Colors.orange),
                tooltip: 'E-Money',
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: Colors.yellow),
                tooltip: 'Quick Pick',
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.qr_code, color: Colors.blue),
                tooltip: 'QR Bayar',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
