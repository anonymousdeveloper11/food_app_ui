import 'package:food_app/data/api/api_client.dart';
import 'package:food_app/data/repository/popular_product_repo.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/popular_product_controllers.dart';
import '../controllers/recommended_controller.dart';
import '../data/repository/recommende_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductControllers(popularProductRepo: Get.find()));
  Get.lazyPut(() => RecommendedProductControllers(recommendedProductRepo: Get.find()));
}
