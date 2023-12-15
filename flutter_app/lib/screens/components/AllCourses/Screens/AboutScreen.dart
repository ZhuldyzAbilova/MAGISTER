import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled2/Theme/color.dart';
import 'colors.dart';
import 'About.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          const AboutAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Python - Developer',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8.0),
                  DefaultTextStyle(
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: kSecondaryTextColor),
                    child: Row(
                      children: [
                        const SizedBox(width: 8.0),
                        const SizedBox(width: 8.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Divider(color: kOutlineColor, height: 1.0),
                  const SizedBox(height: 16.0),
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Python — идеальный язык для новичка. Код на Python легко писать и читать, язык стабильно занимает высокие места в рейтингах популярности, а «питонисты» востребованы почти во всех сферах IT — программировании, анализе данных, системном администрировании и тестировании. YouTube, Intel, Pixar, NASA, VK, Яндекс — вот лишь немногие из известных компаний, которые используют Python в своих продуктах.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: kSecondaryTextColor),
                  ),
                  const SizedBox(height: 16.0),
                  const SizedBox(height: 16.0),
                  const SizedBox(height: 16.0),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
