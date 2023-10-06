import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  BottonColor(),
    );
  }
}

class BottonColor extends StatefulWidget {
  @override
  _BottonColorState createState() => _BottonColorState();
}

class _BottonColorState extends State<BottonColor> {
  Color selectedColor = Colors.amber; // Default selected color
  String selectedSize = 'Medium'; // Default selected size

  void _changeButtonColorAndShowSnackbar(String newSize) {
    setState(() {
      selectedColor = Colors.white10; // Change the color of the tapped button
      selectedSize = newSize; // Update the selected size
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Size Selector'),
      ),
      body: Center(
        child: ListView(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _changeButtonColorAndShowSnackbar('Small'),
                  style: ElevatedButton.styleFrom(primary: selectedColor),
                  child: Text('S'),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => _changeButtonColorAndShowSnackbar('Medium'),
                  style: ElevatedButton.styleFrom(primary: selectedColor),
                  child: Text('M'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => _changeButtonColorAndShowSnackbar('Large'),
                  style: ElevatedButton.styleFrom(primary: selectedColor),
                  child: Text('L'),
                ),
                ElevatedButton(
                  onPressed: () => _changeButtonColorAndShowSnackbar('Large'),
                  style: ElevatedButton.styleFrom(primary: selectedColor),
                  child: Text('XL'),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _changeButtonColorAndShowSnackbar('Large'),
                  style: ElevatedButton.styleFrom(primary: selectedColor),
                  child: Text('XXL'),
                ),
                ElevatedButton(
                  onPressed: () => _changeButtonColorAndShowSnackbar('Large'),
                  style: ElevatedButton.styleFrom(primary: selectedColor),
                  child: Text('XXXL'),
                ),

              ],
            )
          ],
        )

      ),
    );
  }
}