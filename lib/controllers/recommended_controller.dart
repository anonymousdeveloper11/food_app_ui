import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/models/popular_products_model.dart';
import 'package:get/get.dart';

import '../data/repository/recommende_product_repo.dart';

class RecommendedProductControllers extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;

  RecommendedProductControllers({required this.recommendedProductRepo});

  List<ProductModel> _recommendedProductList = [];

  List<ProductModel> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode==200) {

      print("gt products");
      _recommendedProductList=[];
      _recommendedProductList.addAll(PopularProductsModel.fromJson(response.body).products);
      //  print(_popularProductList);
      _isLoaded = true;
      update();
    } else {}
  }
}
