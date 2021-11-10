import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';
import 'package:web_dashboard_docker/app/shared/base_images.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: Get.textTheme.headline6,
        ),
        const Spacer(flex: 2),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileContainer()
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Buscar',
        hintStyle: Get.textTheme.bodyText1!.copyWith(color: Colors.white30),
        fillColor: BaseColors.secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        suffixIcon: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: BaseColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            BaseImages.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: BaseColors.secondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white10,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.person,
            size: 38,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Renan Santos'),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
