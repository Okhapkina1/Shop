import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/API.dart';
import 'dart:async';
import 'dart:convert';

class DataDumper{
    static List<ProductModel> _inCart = List<ProductModel>();

    static List<ProductModel> getProducts() {
        List<ProductModel> models = List<ProductModel>();
        models.add(ProductModel(
            "Ботинки", 
            "Черные на каблуке", 
            200, 
            "https://static9.depositphotos.com/1594308/1110/i/600/depositphotos_11107478-stock-photo-fantasy.jpg"
        ));
        models.add(ProductModel("Шорты", "Летние пляжные", 120 , "https://static9.depositphotos.com/1594308/1110/i/600/depositphotos_11107478-stock-photo-fantasy.jpg"));
        models.add(ProductModel("Носки", "Черные мужские", 20 , "https://static9.depositphotos.com/1594308/1110/i/600/depositphotos_11107478-stock-photo-fantasy.jpg"));
        models.add(ProductModel("Футболка", "Красного цвета", 200 , "https://static9.depositphotos.com/1594308/1110/i/600/depositphotos_11107478-stock-photo-fantasy.jpg"));
        models.add(ProductModel("Куртка", "Крутая и модная", 1000 , "https://static9.depositphotos.com/1594308/1110/i/600/depositphotos_11107478-stock-photo-fantasy.jpg"));
        models.add(ProductModel("Джинсы", "Темно синие", 700 , "https://static9.depositphotos.com/1594308/1110/i/600/depositphotos_11107478-stock-photo-fantasy.jpg"));

        return models;
    }

    static getProductsOnline() async {
        var data = await API.getProducts();
        if (data != null) {
            List <dynamic> jsonData = json.decode(utf8.decode(data.bodyBytes));
            List<ProductModel> models = List<ProductModel>();
            jsonData.forEach((element) {
                models.add(ProductModel.fromJson(element));
            });
            print (models);
            return models;
        }
        else {
            return getProducts();
        }  
    }


    static List<ProductModel> getCart(){
        return _inCart;
    }

    static addCart(ProductModel model) {
        _inCart.add(model);
    }

    static removeCart(ProductModel model) {
        _inCart.remove(model);
    }

    static getCartPrice() {
        var cost = 0.0;
        _inCart.forEach((element) {
            cost += element.cost;
        });

        return cost;
    }
}