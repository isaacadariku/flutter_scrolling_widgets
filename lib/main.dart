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
        Text('Text', style: TextStyle(fontSize: 140)),
        Text('Container', style: TextStyle(fontSize: 70)),
        Text('SafeArea', style: TextStyle(fontSize: 85)),
      ],
    );
  }
}
