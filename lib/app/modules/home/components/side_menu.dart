import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:web_dashboard_docker/app/shared/base_colors.dart';
import 'package:web_dashboard_docker/app/shared/base_images.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Renan',
                    style: Get.textTheme.headline2?.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Kanu;',
                        style: Get.textTheme.headline2?.copyWith(
                          color: BaseColors.burntSienna,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DrawerListTitle(
              title: 'Dashboard',
              leadIcon: BaseImages.dashboard,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Transação',
              leadIcon: BaseImages.transaction,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Tarefa',
              leadIcon: BaseImages.task,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Documentos',
              leadIcon: BaseImages.document,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Loja',
              leadIcon: BaseImages.cart,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Notificação',
              leadIcon: BaseImages.bell,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Profile',
              leadIcon: BaseImages.user,
              onPress: () {},
            ),
            DrawerListTitle(
              title: 'Configuração',
              leadIcon: BaseImages.settings,
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    Key? key,
    required this.title,
    required this.leadIcon,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final String leadIcon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        leadIcon,
        color: Colors.white54,
        height: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
      onTap: onPress,
    );
  }
}
