import 'package:financa_pessoal/app/core/util/theme.dart';
import 'package:financa_pessoal/app/modules/start/start_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key? key, this.title = "StartPage"}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends ModularState<StartPage, StartController> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RouterOutlet(),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.currentIndex,
          onTap: controller.setIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/home.svg',
                height: 20,
                color:
                    controller.currentIndex == 0 ? primaryColor : Colors.grey,
              ),
              label: 'Início',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/transfer.svg',
                height: 20,
                color: controller.currentIndex == 1
                    ? primaryColor
                    : Colors.grey[600],
              ),
              label: 'Lançamentos',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/car.svg',
                height: 20,
                color: controller.currentIndex == 2
                    ? primaryColor
                    : Colors.grey[600],
              ),
              label: 'Veículo',
            ),
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset(
            //     'assets/images/credit-card.svg',
            //     height: 20,
            //     color: controller.currentIndex == 3
            //         ? primaryColor
            //         : Colors.grey[600],
            //   ),
            //   label: 'Cartões',
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: controller.currentIndex == 3
                    ? primaryColor
                    : Colors.grey[600],
              ),
              label: 'Menu',
            ),
          ],
        );
      }),
    );
  }
}
