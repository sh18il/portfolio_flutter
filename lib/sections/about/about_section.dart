import 'package:flutter/material.dart';
import 'package:web_app/components/default_button.dart';
import 'package:web_app/components/my_outline_button.dart';
import 'package:web_app/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  final Key? key;
  AboutSection({this.key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      """I am a passionate Flutter developer with expertise in building scalable and efficient applications. I excel in code review, adhering to best practices, and implementing Scrum and Agile methodologies to ensure seamless project delivery. As a self-learner, I continuously enhance my skills to stay updated with the latest technologies.



""",
                ),
              ),
              ExperienceCard(numOfExp: "02"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I have successfully developed numerous applications, showcasing my abilities in UI/UX design, API integration, and version control using Git. Additionally, I possess strong experience in debugging, optimizing code, and collaborating effectively with cross-functional teams.With a keen eye for detail and a proactive approach, I thrive in dynamic environments, delivering high-quality software solutions.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {},
                key: null,
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
