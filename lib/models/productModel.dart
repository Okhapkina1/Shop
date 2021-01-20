class ProductModel{
    final String title;
    final String description;
    final double cost;
    final String image;

    ProductModel(this.title, this.description, this.cost, this.image);

    static fromJson(jsonData){
        return ProductModel(jsonData['title'], jsonData['description'], 
            double.parse(jsonData['cost']), jsonData['image']);
    }
}