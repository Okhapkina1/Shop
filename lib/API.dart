import 'package:http/http.dart' as http;
import 'dart:async';

class API{
    static Future<http.Response> getProducts() async {
        var result = 
            await http.get("https://5f7d7bdb834b5c0016b061c2.mockapi.io/products");
        if(result.statusCode == 200){
            return result;
        } else {
            return null;
        }
    }
}