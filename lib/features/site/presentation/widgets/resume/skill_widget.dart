import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:site/features/site/data/models/skill.dart';

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
          child: Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 4,
                          child: Text(
                            skills[index].name,
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: RatingBarIndicator(
                          itemSize: 20,
                          direction: Axis.horizontal,
                          rating: double.parse(skills[index].level),
                          itemBuilder: ((context, index) {
                            return const Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 42, 2, 49),
                            );
                          }),
                          itemCount: 5,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: skills.length,
            ),
          ),
        ),
      ],
    );
  }
}
