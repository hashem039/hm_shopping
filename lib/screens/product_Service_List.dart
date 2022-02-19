import 'package:flutter/material.dart';
import 'package:hm_shopping/screens/star_line.dart';

class ProductServiceList extends StatelessWidget {
  const ProductServiceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text(
                          '00.00',
                          style: Theme.of(context).textTheme.subtitle2,
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
                child:  Text("Product Service \nTitle Product",style: Theme.of(context).textTheme.headline1,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
