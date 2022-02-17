import 'package:flutter/material.dart';
import 'package:hm_shopping/head_line.dart';
import 'package:hm_shopping/image_with_footer.dart';
import 'package:hm_shopping/star_line.dart';

import 'heading_widget.dart';
import 'main_category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'USell Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle? titleStyle = Theme.of(context).textTheme.subtitle1;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fire_extinguisher,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.black54,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.black54,
            ),
            label: "Home",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      /* Clear the search field */
                    },
                  ),
                  hintText: 'Search...',
                  border: InputBorder.none),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 8.0),
          child: Text('Uselling UP'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.headphones),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.av_timer),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            HeadingWidget(titleStyle),
            ImageWithFooter(),
            //// main category part
            HeadLine(),
            ////
            MainCategory(titleStyle),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                child: Text(
                  '#BEST TITLE',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
            ),

            Container(
              //alignment: Alignment.topCenter,
              height: 250.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 150.0,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            const AspectRatio(
                              aspectRatio: 14 / 16, //aspect ratio for Image
                              child: Image(
                                image: AssetImage('assets/shopping.png'),
                                fit: BoxFit
                                    .fill, //fill type of image inside aspectRatio
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 6.0),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    child: StarLine(3),
                                    padding:
                                        EdgeInsets.only(right: 2.0, left: 2.0),
                                  ),
                                  new Spacer(),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    //color: Colors.pink,
                                    child: Text(
                                      "3 KM",
                                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black26,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 4.0, top: 4.0),
                        color: Colors.white.withOpacity(0.3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: Text(
                                  '00.00',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                              ),
                              flex: 0,
                            ),
                            SizedBox(width: 60.0,),


                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(4.0),
                                //color: Colors.pink,
                                child: const Text(
                                  "00%",
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              flex: 0,
                            ),
                            

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
                        child: const Text("Product Service \nTitle Product",),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                child: Text(
                  '#Top TITLE',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.greenAccent,
                            child: Icon(
                              Icons.person,
                            ),
                          )),
                      Text(
                        'Main \n Category' + (index + 1).toString(),
                        style: titleStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 15.0, left: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    Text(
                      '#Top TITLE',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.start,
                    ),
                    new Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text("View All"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 200.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) => Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40.0,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.keyboard_arrow_right,
                            ),
                          )),
                      Text(
                        'Sub \n Category' + (index + 1).toString(),
                        style: titleStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
            Card(
              child: ListTile(
                  title: Text('Motivation $int'),
                  subtitle: Text('this is a description of the motivation')),
            ),
          ],
        ),
      ), /*Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: SingleChildScrollView(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50.0,
                color: Colors.grey[100],
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text("Head til 1")),
                    Expanded(child: Text("Head til 2")),
                    Expanded(child: Text("Head til 3")),
                    Expanded(child: Text("Head til 4")),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: AssetImage("assets/shopping.png"),
                      fit: BoxFit.fill,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          child: Text('300AED'),
                          padding: EdgeInsets.only(right: 8.0, left: 8.0),
                        ),
                        new Spacer(),
                        Container(
                            child: Text('50% Off'),
                            padding: EdgeInsets.only(right: 8.0, left: 8.0)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 8.0, left: 8.0),
                color: Colors.grey[100],
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                margin: EdgeInsets.only(top: 15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text('Best practice Definition & Meaning '),
                        ),
                        new Spacer(),
                        Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Shopping'),
                            ),
                            padding: EdgeInsets.only(right: 8.0, left: 8.0)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),*/
    );
  }
}
