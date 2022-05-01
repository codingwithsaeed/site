import 'package:flutter/material.dart';
import 'package:site/features/site/data/models/portfolio.dart';

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
            ListTile(
              onTap: () => onTap(index),
              title:
                  Text(portfolio.title, style: const TextStyle(fontSize: 15)),
              subtitle: Text(
                portfolio.subtitle,
                style: const TextStyle(fontSize: 14),
              ),
              leading: const Icon(Icons.extension),
            ),
          ],
        );
      },
      itemCount: list.length,
    );
  }
}
