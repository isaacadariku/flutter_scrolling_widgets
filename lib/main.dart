import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Widgets',
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollViewExample(),
    );
  }
}

class SingleChildScrollViewExample extends StatelessWidget {
  const SingleChildScrollViewExample({Key key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Single Child Scroll View Example',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: buildTextWidgetExample()),
      ),
    );
  }

  Widget buildTextWidgetExample() {
    return Text(
      " 1. Text that is too long in text format(Here Data is coming from API) >>> Zuri & I4G training in FLUTTER " +
          "\n \n 2. Description that is too long in text format(Here Data is coming from API)  >>> Zuri & I4G training in FLUTTER " +
          "\n \n 3. Description that is too long in text format(Here Data is coming from API) >>> Zuri & I4G training in FLUTTER " +
          "\n \n 4. Description that is too long in text format(Here Data is coming from API) >>> Zuri & I4G training in FLUTTER " +
          "\n \n 5. Description that is too long in text format(Here Data is coming from API) >>> Zuri & I4G training in FLUTTER " +
          "\n \n 6. Description that is too long in text format(Here Data is coming from API) >>>  Zuri & I4G training in FLUTTER" +
          "\n \n 7. Description that is too long in text format(Here Data is coming from API) >>>  Zuri & I4G training in FLUTTER " +
          "\n \n 8. Description that is too long in text format(Here Data is coming from API) >>> Zuri & I4G training in FLUTTER " +
          "\n \n 9. Description that is too long in text format(Here Data is coming from API) >>>  Zuri & I4G training in FLUTTER " +
          "\n \n 10. Description that is too long in text format(Here Data is coming from API) >>> Zuri & I4G training in FLUTTER ",
      style: TextStyle(
        fontSize: 28.0,
        color: Colors.black,
      ),
    );
  }

  Widget buildRowWidgetExample() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellowAccent,
          width: 150,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Width Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 500,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Width Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.redAccent,
          width: 150,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Width Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }

  Widget buildColumnWidgetExample() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellowAccent,
          height: 400,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Height Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.green,
          height: 400,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Height Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
