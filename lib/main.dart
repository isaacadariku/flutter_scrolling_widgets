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
      home: Scrollbar(
        isAlwaysShown: true,
        // showTrackOnHover: true,
        child: GridViewExample()),
    );
  }
}

class GridViewExample extends StatelessWidget {
  final images = [
    "https://training.zuri.team/Favicon.png",
    "https://cdn.pixabay.com/photo/2019/04/04/15/17/smartphone-4103051__340.jpg",
    "https://cdn.pixabay.com/photo/2016/02/19/11/19/computer-1209641__340.jpg",
    "https://cdn.pixabay.com/photo/2017/09/25/11/55/cyberspace-2784907__340.jpg",
    "https://cdn.pixabay.com/photo/2017/06/18/22/10/smartphone-2417419__340.png",
    "https://cdn.hashnode.com/res/hashnode/image/upload/v1616259990246/o1IgkYlfA.jpeg",
    "https://pbs.twimg.com/profile_images/1083303099886985222/4vHpZnpa_400x400.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
        centerTitle: true,
      ),
      body: buildGridViewBuilderExample(),
    );
  }

  Widget buildGridViewBuilderExample() {
    return GridView.builder(
      // scrollDirection: Axis.horizontal,
      itemCount: images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Image.network(images[index]);
      },
    );
  }

  Widget buildGridViewCountExample() {
    return GridView.count(
      // scrollDirection: Axis.horizontal,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 3,
      children: [
        Container(
          color: Colors.yellow,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.blue,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.greenAccent,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.red,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.teal,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.indigo,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.blue,
          height: 90,
          width: 90,
        ),
        Container(
          color: Colors.black12,
          height: 90,
          width: 90,
        ),
      ],
    );
  }

  Widget buildMultipleRowsInsideAColumn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.yellow,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.greenAccent,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.red,
              height: 90,
              width: 90,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.teal,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.indigo,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.black12,
              height: 90,
              width: 90,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.yellow,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.greenAccent,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.red,
              height: 90,
              width: 90,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: Colors.teal,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.indigo,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.blue,
              height: 90,
              width: 90,
            ),
            Container(
              color: Colors.black12,
              height: 90,
              width: 90,
            ),
          ],
        ),
      ],
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
