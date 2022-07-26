# gradation_button
Package in pub dev which provide shorter code for call gradation button

# Example Code
###### void main() {
###### runApp(const MyApp());
###### }

###### class MyApp extends StatelessWidget {
######  const MyApp({Key? key}) : super(key: key);

######  // This widget is the root of your application.
######  @override
######  Widget build(BuildContext context) {
######    return MaterialApp(
######      home: Center(
######        child: GradationButton(
######          ontap: () {},
######          width: 50,
######          height: 60,
######          gradient1: Colors.blue,
######          gradient2: Colors.green,
######        ),
######      ),
######    );
######  }
###### }

# Notes
* Here are Required Parameter : 
    * width
    * height
    * content
    * gradient1 = First Color
    * gradient2 = Second Color
    * width

* To use Radius Just define the radius for each edge (topLeft, topRight, bottomLeft, bottomRight)