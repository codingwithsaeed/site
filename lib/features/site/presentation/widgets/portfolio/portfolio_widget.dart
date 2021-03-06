import 'package:codingwithsaeed/features/site/data/models/portfolio.dart';
import 'package:codingwithsaeed/features/site/presentation/pages/responsive.dart';
import 'package:flutter/material.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({Key? key, required this.list, required this.onTap})
      : super(key: key);

  final List<Portfolio> list;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var portfolio = list[index];
        return Column(
          children: [
            if (index == 0) const SizedBox(height: 5),
            ListTile(
              onTap: () => onTap(index),
              title: Text(portfolio.title, style: context.normalStyle),
              subtitle: Text(portfolio.subtitle, style: context.smallStyle),
              leading: const Icon(Icons.extension),
            ),
            const SizedBox(height: 5),
            if (index != list.length - 1)
              Column(
                children: const [
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(height: 5),
                ],
              ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}
