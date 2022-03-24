import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/api/Data.dart';

class FetchData{

  fetchData() async{

    http.Response response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/550?api_key=30f5a27e638acd90bc10bb308d4ee19e'));

    if(response.statusCode==200) {
      Data data = Data.fromJson(jsonDecode(response.body));
      return data;
    }

    return null;

  }

}