import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hm_shopping/models/album.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';//'whoisrishav.com/pk/better-buys/api/';

  //get list of albums
 Future<List<Album>> getAlbums() async {
   try {
     List<Album> albums = [];
     http.Response response = await http.get(Uri.parse('$_baseUrl/albums/'));
     if (response.statusCode == 200) {
       // If the server did return a 200 OK response,
       // then parse the JSON.
        List mapList =  jsonDecode(response.body);
        for ( Map m in mapList) {
          albums.add(Album.fromJson(m));
        }
     } else {
       // If the server did not return a 200 OK response,
       // then throw an exception.
       throw Exception('Failed to load album');
     }
     return albums;

   } catch(e) {
     print('Server error: ' + e.toString());
     rethrow;
   }
 }
}