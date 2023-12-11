import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Detail',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductDetailPage(),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  final String productName =
      'BARDI Smart Pet Feeder Otomatis WiFi (Lite Version)';
  final String productDescription =
      'Koneksi langsung Wi-Fi ke internet, tidak perlu gateway; Remote control pada Aplikasi BARDI Smart Home melalui 3G / 4G / Wi-Fi; Bekerja dengan Amazon Alexa';
  final double productPrice = 99.99;
  final String productImageUrl =
      'https://down-id.img.susercontent.com/file/id-11134207-7qukz-lk5b0rc65f6y2a';
  final String productImage2 =
      'https://down-id.img.susercontent.com/file/id-11134207-7qul0-lk5b0rc640mi76';
  final String productImage3 =
      'https://down-id.img.susercontent.com/file/id-11134207-7qul6-lk5b0rc62m22ab';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Product Detail',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(47, 47, 62, 1)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Image.network(
                productImageUrl,
                height: 300,
                width: 300,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    productImage2,
                    height: 80,
                    width: 80,
                  ),
                ),
                Image.network(
                  productImage3,
                  height: 80,
                  width: 80,
                )
              ],
            ),
            SizedBox(height: 20),
            Text(
              productName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Price: \$${productPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(255, 76, 175, 155),
              ),
            ),
            SizedBox(height: 20),
            Text(
              productDescription,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
