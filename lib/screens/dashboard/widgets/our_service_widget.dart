import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/assets.gen.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/models/service_model/service_model.dart';
import 'package:students/screens/dashboard/widgets/carousel_item.dart';

class OurServiceWidget extends StatefulWidget {
  const OurServiceWidget({super.key, required this.serviceKey,});

  final GlobalKey serviceKey;

  @override
  State<OurServiceWidget> createState() => _OurServiceWidgetState();
}

class _OurServiceWidgetState extends State<OurServiceWidget> {
  static const carouselHeight = 500.0;
  late CarouselController carouselController;

  List<ServiceModel> dummyData = <ServiceModel>[
    ServiceModel(
      image: Assets.dummyImage.spa1.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
    ServiceModel(
      image: Assets.dummyImage.spa2.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
    ServiceModel(
      image: Assets.dummyImage.spa3.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
    ServiceModel(
      image: Assets.dummyImage.spa4.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
    ServiceModel(
      image: Assets.dummyImage.spa6.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
    ServiceModel(
      image: Assets.dummyImage.spa6.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
    ServiceModel(
      image: Assets.dummyImage.spa8.path,
      name: 'Spa 1',
      price: 30000,
      duration: 20,
    ),
  ];

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: widget.serviceKey,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Text(
            L10n.of(context).Services,
            style: AppTextStyle.extraLarge,
          ),
          const SizedBox(height: 10),
          CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: dummyData.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return CarouselItemWidget(
                serviceModel: dummyData.elementAt(index),
                carouselHeight: carouselHeight,
                carouselController: carouselController,
              );
            },
            options: CarouselOptions(
              height: carouselHeight,
              autoPlay: true,
              aspectRatio: 4/3,
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
