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
  final String productName = 'Example Product';
  final String productDescription = 'This is a sample product description.';
  final double productPrice = 19.99;
  final String productImageUrl =
      'https://via.placeholder.com/150'; // Replace with actual image URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Image.network(
                productImageUrl,
                height: 200,
                width: 200,
              ),
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
                color: Colors.green,
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
