import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/models/popular_products_model.dart';
import 'package:get/get.dart';

class PopularProductControllers extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopularProductControllers({required this.popularProductRepo});

  List<ProductModel> _popularProductList = [];

  List<ProductModel> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode==200) {

      print("gt products");
      _popularProductList=[];
      _popularProductList.addAll(PopularProductsModel.fromJson(response.body).products);
      //  print(_popularProductList);
      _isLoaded = true;
      update();
    } else {}
  }
}
