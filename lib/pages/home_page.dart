import 'package:flutter/material.dart';
import 'package:site/pages/responsive.dart';
import 'package:site/utils/consts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: onMobile(context),
        tablet: onTablet(context),
        desktop: onDesktop(context),
      ),
    );
  }

  Widget onMobile(BuildContext context) => Container(
        padding: const EdgeInsets.all(8.0),
        decoration: context.isMobile ? gradientBox : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            if (context.isMobile) showImageAndTitle(context),
            const MenuItem(title: 'درباره من', icon: Icons.info_rounded),
            const MenuItem(
              title: 'رزومه',
              icon: Icons.text_snippet_rounded,
            ),
            const MenuItem(
              title: 'نمونه کارها',
              icon: Icons.work_rounded,
            ),
            const Spacer(),
            if (context.isMobile) showContactRow(),
          ],
        ),
      );

  Row showContactRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.telegram_rounded)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.whatsapp_rounded)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.gite_rounded)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.inbox_sharp)),
      ],
    );
  }

  Widget onTablet(BuildContext context) => onDesktop(context);
  Widget onDesktop(BuildContext context) => Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                decoration: gradientBox,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    showImageAndTitle(context),
                    const Spacer(),
                    showContactRow(),
                    const SizedBox(height: 10),
                  ],
                ),
              )),
          Expanded(flex: context.isTablet ? 2 : 1, child: onMobile(context))
        ],
      );

  Widget showImageAndTitle(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundImage: const AssetImage(
            'assets/images/pic.jpg',
          ),
          radius: context.isMobile ? 90 : 140,
        ),
        const SizedBox(height: 10),
        Text('سعید احمدی',
            style: TextStyle(
              fontSize: context.isMobile ? 24 : 40,
              shadows: const [
                Shadow(
                  blurRadius: 10,
                  color: Colors.white,
                  offset: Offset(5, 5),
                ),
              ],
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 42, 2, 49),
            )),
        const SizedBox(height: 10),
        Text('توسعه دهنده نرم افزار (فلاتر)',
            style: TextStyle(
              fontSize: context.isMobile ? 20 : 30,
              shadows: const [
                Shadow(
                  blurRadius: 10,
                  color: Colors.black,
                  offset: Offset(5, 5),
                ),
              ],
              fontWeight: FontWeight.w600,
              color: Colors.purple.shade50,
            )),
        const SizedBox(height: 10),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final IconData? icon;
  const MenuItem({Key? key, required this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(title),
        leading: Icon(icon),
      ),
    );
  }
}
