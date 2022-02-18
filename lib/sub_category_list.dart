import 'package:flutter/material.dart';

class SubCategoryList extends StatelessWidget {
  const SubCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) => Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.category_outlined,
                      size: 40.0,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  'Sub Category' + (index + 1).toString(),
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
