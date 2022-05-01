import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/portfolio.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({Key? key, required this.list, required this.onTap})
      : super(key: key);

  final List<Portfolio> list;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var portfolio = list[index];
        return Column(
          children: [
            if (index == 0) const SizedBox(height: 10),
            ListTile(
              onTap: () => onTap(index),
              title: Text(portfolio.title, style: context.normalStyle),
              subtitle: Text(portfolio.subtitle, style: context.smallStyle),
              leading: const Icon(Icons.extension),
            ),
            const SizedBox(height: 10),
            if (index != list.length - 1)
              Column(
                children: const [
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                ],
              ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}
