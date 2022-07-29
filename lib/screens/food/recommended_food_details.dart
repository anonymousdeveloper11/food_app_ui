import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/Expanable_text.dart';
import 'package:food_app/widgets/app_icon.dart';
import 'package:food_app/widgets/big_text.dart';
import 'package:get/get.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(preferredSize: Size.fromHeight(20),
              child:Container(
                child: Center(child: BigText(size: Dimension.font26,text: "Nepali Cousin")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.radius20),
                      topRight: Radius.circular(Dimension.radius20))
                ),
              ),
                ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/food.jpg",
              width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimension.width20, right: Dimension.width20),
                  child: ExpandableText(text: "The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation.The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation. The Nepali staples consist primarily of rice, wheat, corn and lentils, in addition to fresh vegetables and meats. A typical Nepali everyday meal can be characterized by Dal (lentil soups), Bhat (steamed rice), and Tarkari (vegetable preparations), also known as “The Trinity,” supplemented by some meat preparation."
          ),)

              ],
            )
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: Dimension.width20*2.5,
            right: Dimension.width20*2.5,
            top: Dimension.height10,
            bottom: Dimension.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimension.iconSize24,
                    backgroundColor:  AppColors.mainColor,iconColor: Colors.white,icon: Icons.remove),

                BigText(text: "\$12.88 "+" X "+" 0 ", color: AppColors.mainBlackColor,size: Dimension.font26,),
                AppIcon( iconSize: Dimension.iconSize24,
                    backgroundColor:  AppColors.mainColor,iconColor: Colors.white,icon: Icons.add)
              ],
            ),
          ),
          Container(
            height: Dimension.bottomHeightBar,
            padding: EdgeInsets.only(top:Dimension.height30, bottom: Dimension.height30, left: Dimension.width20, right: Dimension.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimension.radius20*2),
                  topRight: Radius.circular(Dimension.radius20*2),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimension.height20, bottom: Dimension.height20, left: Dimension.width20, right: Dimension.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                      color: Colors.white
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ) ,
                ),
                Container(
                  padding: EdgeInsets.only(top: Dimension.height20, bottom: Dimension.height20, left: Dimension.width20, right: Dimension.width20),

                  child: BigText(text: "\$10 | Add to cart", color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimension.radius20),
                      color: AppColors.mainColor
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
