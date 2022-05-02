import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:site/features/site/data/models/skill.dart';
import 'package:site/features/site/presentation/pages/responsive.dart';

class SkillWidget extends StatelessWidget {
  final String title;
  final List<Skill> skills;

  const SkillWidget({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(title, style: context.headerStyle),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var skill = skills[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Text(skill.name,
                                textAlign: TextAlign.center,
                                style: context.normalStyle)),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: RatingBarIndicator(
                            itemSize: 20,
                            direction: Axis.horizontal,
                            rating: double.parse(skill.level),
                            itemBuilder: ((context, index) {
                              return Icon(
                                Icons.circle,
                                color: findSkillColor(int.parse(skill.level)),
                              );
                            }),
                            itemCount: 5,
                          ),
                        ),
                      ],
                    ),
                    if (index != skills.length - 1)
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
              itemCount: skills.length,
            ),
          ),
        ),
      ],
    );
  }

  Color findSkillColor(int level) {
    if (level <= 2) return Colors.red.shade800;
    if (level == 3) return Colors.yellow.shade800;
    if (level == 4) return Colors.green.shade400;
    return Colors.green.shade800;
  }
}
