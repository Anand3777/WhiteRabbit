import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:white_rabbit/Model/product_model.dart';
import 'package:white_rabbit/Utils/app_strings.dart';
import 'package:white_rabbit/Utils/custom_appbar.dart';
import 'package:white_rabbit/Utils/utils.dart';
import 'package:white_rabbit/app_colors.dart';
import 'package:white_rabbit/view_all_prdoct_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _currentSliderIndex = 0;
  late List<Widget> imageSliders;
  List<String> imgList = [];
  final controller = PageController(viewportFraction: 0.8, keepPage: false);

  ProductResponseModel? productResponseModel;

  ProductResponseModel? bannerResponseModel;

  double bannerViewHeight = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setImageSliders();

    setState(() {
      productResponseModel = ProductResponseModel();
      productResponseModel?.products = [
        Products(
          productTitle: AppStrings.trimmer,
          productImage: 'https://tinyurl.com/y4f5e96j',
          offerPercentage: 15,
        ),
        Products(
          productTitle: AppStrings.luggageCovers,
          productImage: 'https://tinyurl.com/y2szwrys',
          offerPercentage: 32,
        ),
        Products(
          productTitle: AppStrings.remoteControlToys,
          productImage: 'https://tinyurl.com/y4bfj5b7',
          offerPercentage: 41,
        ),
        Products(
          productTitle: AppStrings.sunglasses,
          productImage: 'https://tinyurl.com/y44marw5',
          offerPercentage: 65,
        ),
        Products(
          productTitle: AppStrings.mobileCover,
          productImage: 'https://tinyurl.com/y4urobx8',
          offerPercentage: 87,
        ),
        Products(
          productTitle: AppStrings.casualShoses,
          productImage: 'https://tinyurl.com/y2yhf95n',
          offerPercentage: 23,
        ),
        Products(
          productTitle: AppStrings.leatherWatch,
          productImage: 'https://tinyurl.com/y5n467o3',
          offerPercentage: 42,
        ),
        Products(
          productTitle: AppStrings.bearedOil,
          productImage: 'https://tinyurl.com/yxupqdll',
          offerPercentage: 19,
        ),
      ];

      bannerResponseModel = ProductResponseModel();
      bannerResponseModel?.products = [
        Products(
          productImage: 'https://tinyurl.com/y379jw6s',
        ),
        Products(
          productImage: 'https://tinyurl.com/y3pjtea4',
        ),
        Products(
          productImage: 'https://tinyurl.com/y2gersqn',
        ),
        Products(
          productImage: 'https://tinyurl.com/y3c6ksu5',
        ),
        Products(
          productImage: 'https://tinyurl.com/y4k2klen',
        ),
        Products(
          productImage: 'https://tinyurl.com/y3pccdrc',
        ),
        Products(
          productImage: 'https://tinyurl.com/y26fn9rm',
        ),
      ];
      bannerViewHeight = double.parse(
          ((bannerResponseModel?.products ?? []).length * 60).toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          AppStrings.appName,
        )),
        backgroundColor: AppColor.lightGreen,
        elevation: 0,
        // actions: [Icon(Icons.dehaze_sharp)],
      ),
      body: SafeArea(
          child: Column(
        children: [
          ClipPath(
            clipper: RoundShape(),
            child: Container(
              height: 40,
              color: AppColor.lightGreen,
            ),
          ),
          SizedBox(
            // color: Colors.orange,
            height: Utils.bodyHeight(context) - 40,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                    // color: Colors.pink,
                    child: Stack(
                      children: [
                        imgList.isEmpty
                            ? const Text('')
                            : SizedBox(
                                width: double.infinity,

                                // height: 200,
                                // color: Colors.red,
                                child: CarouselSlider(
                                  items: imageSliders,
                                  options: CarouselOptions(
                                      viewportFraction: 1.0,
                                      // enlargeCenterPage: true,
                                      // height: 200.0,
                                      autoPlay: true,
                                      aspectRatio: 1.0,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _currentSliderIndex = index;
                                          // controller.keepPage = index;
                                        });
                                      }),
                                ),
                              ),
                        imgList.isEmpty
                            ? const Text('')
                            : Positioned(
                                bottom: 50,
                                child: SizedBox(
                                  width: Utils.screenWidth(context),
                                  // color: Colors.green,
                                  child: Center(
                                    child: Container(
                                      width: imgList.length * 15,
                                      // color: AppColor.transparent,
                                      decoration: const BoxDecoration(
                                          color: AppColor.transparent,
                                          // border: Border.all(
                                          //   color: AppColor.transparent,
                                          // ),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: imgList.map((url) {
                                          int index = imgList.indexOf(url);
                                          return Container(
                                            // color: Colors.red,
                                            width: 8.0,
                                            height: 8.0,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 2.0),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: _currentSliderIndex ==
                                                      index
                                                  ? AppColor
                                                      .white //Color.fromRGBO(0, 0, 0, 0.9)
                                                  : AppColor.pageDelectedColor,
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    // color: AppColor.mainColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                AppStrings.disccountType,
                              ),
                              const Spacer(),
                              SizedBox(
                                width: 80,
                                child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Colors.blue,
                                      ),
                                    ),
                                    onPressed: () {
                                      //
                                    },
                                    child: const Text(
                                      AppStrings.viewAll,
                                      style: TextStyle(
                                        color: AppColor.white,
                                      ),
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            width: Utils.screenWidth(context) - 20,
                            height: 332,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GridView.count(
                                  physics: const NeverScrollableScrollPhysics(),
                                  crossAxisCount: 2,
                                  children: List<Widget>.generate(
                                      (productResponseModel?.products ?? [])
                                                  .length >
                                              4
                                          ? 4
                                          : (productResponseModel?.products ??
                                                  [])
                                              .length, (index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ViewALlProducts()));
                                      },
                                      child: buildProductView(
                                          index,
                                          (productResponseModel
                                                  ?.products?[index] ??
                                              Products())),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: bannerViewHeight,
                    // color: AppColor.mainColor,
                    width: double.infinity,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Image.network(
                                bannerResponseModel
                                        ?.products?.last.productImage ??
                                    '',
                                fit: BoxFit.cover,
                              );
                            })),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildProductView(int index, Products productDetails) {
    return SizedBox(
      height: 100,
      // color: Colors.blue.shade200,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.network(
            productDetails.productImage ?? '',
            fit: BoxFit.fitHeight,
            width: 150,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            productDetails.productTitle ?? '',
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Min ${(productDetails.offerPercentage ?? 0).toString()}% off',
            style: const TextStyle(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  setImageSliders() {
    imgList = [
      // 'https://tinyurl.com/y3w8oaah',
      // 'https://tinyurl.com/y4vaulog',
      // 'https://tinyurl.com/y3j7rq6g',
      // 'https://tinyurl.com/y28jpmyr',
      // 'https://tinyurl.com/y2w7fbdo',
      // 'https://tinyurl.com/yy2f6lha'

      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      // 'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];

    imageSliders = imgList
        .map((item) => Container(
              width: double.infinity,
              // height: 200,
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          color: AppColor.grey,
                          padding: const EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0.0),
                        ),
                      ),
                    ],
                  )),
            ))
        .toList();
  }
}
