import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:students/components/app_text_style.dart';
import 'package:students/generated/l10n.dart';
import 'package:students/models/service_model/service_model.dart';
import 'package:students/utils/app_colors.dart';

class CarouselItemWidget extends StatefulWidget {
  const CarouselItemWidget({
    super.key,
    required this.serviceModel,
    required this.carouselHeight,
    required this.carouselController,
  });

  final ServiceModel serviceModel;
  final double carouselHeight;
  final CarouselController carouselController;

  @override
  State<CarouselItemWidget> createState() => _CarouselItemWidgetState();
}

class _CarouselItemWidgetState extends State<CarouselItemWidget> {
  bool isHoover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (value) {
        setState(() {
          isHoover = true;
        });
      },
      onExit: (value) {
        setState(() {
          isHoover = false;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: isHoover ? _hooverWidget() : _defaultWidget(),
      ),
    );
  }

  Widget _defaultWidget() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(
            widget.serviceModel.image ?? '',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _hooverWidget() {
    return Stack(
      children: [
        _defaultWidget(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: widget.carouselHeight * 0.3,
            width: double.infinity,
            color: AppColors.backGround2,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  widget.serviceModel.name ?? '',
                  style: AppTextStyle.large.copyWith(
                    color: AppColors.titleHighlightColor,
                  ),
                ),
                Text(
                  (widget.serviceModel.price ?? 0).toString(),
                  style: AppTextStyle.medium,
                ),
                Text(
                  L10n.of(context).banner_content,
                  style: AppTextStyle.regular,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
