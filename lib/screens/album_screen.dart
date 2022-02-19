import 'package:flutter/material.dart';
import 'package:hm_shopping/network/http_Service.dart';

import '../models/album.dart';

class AlbumScreen extends StatefulWidget {
   AlbumScreen(this.appBarTitle);
  String? appBarTitle;

  @override
  State<AlbumScreen> createState() => _AlbumScreenState(appBarTitle!);
}

class _AlbumScreenState extends State<AlbumScreen> {
  _AlbumScreenState(this.appBarTitle);
  late Future<List<Album>> futureAlbum;
  String appBarTitle;

  @override
  void initState() {
    super.initState();
    futureAlbum = HttpService().getAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ),
      body: Center(
        child: FutureBuilder<List<Album>>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Album e = snapshot.data![index];
                    return Card(
                      elevation: 5,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 55.0,
                            backgroundColor: Colors.pink,
                            child:
                                Text("AlbumID: " + e.id.toString()),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(e.title, style: Theme.of(context).textTheme.subtitle1,),
                          ),
                        ],
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
