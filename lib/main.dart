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
      home: ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  final countryList = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas (the)",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia (Plurinational State of)",
    "Bonaire, Sint Eustatius and Saba",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List View Example'),
          centerTitle: true,
        ),
        body: buildListViewSeperatedExample());
  }

  Widget buildListViewCustomExample() {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ListTile(title: Text(countryList[index]));
        },
        childCount: countryList.length,
      ),
    );
  }

  Widget buildListViewSeperatedExample() {
    return ListView.separated(
      itemCount: countryList.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(countryList[index]));
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  Widget buildListViewBuilderExample() {
    return ListView.builder(
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(countryList[index]));
        });
  }

  Widget buildListViewExample() {
    return ListView(
      children: <Widget>[
        Text('AppBar', style: TextStyle(fontSize: 90)),
        Text('Scaffold', style: TextStyle(fontSize: 88)),
        Text('Text', style: TextStyle(fontSize: 160)),
        Text('Container', style: TextStyle(fontSize: 70)),
        Text('SafeArea', style: TextStyle(fontSize: 85)),
      ],
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
          width: 192,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Width Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 920,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Width Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.redAccent,
          width: 192,
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
          height: 600,
          alignment: Alignment.center,
          child: const Text(
            'Fixed Height Content',
            style: TextStyle(fontSize: 24),
          ),
        ),
        Container(
          color: Colors.green,
          height: 600,
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
