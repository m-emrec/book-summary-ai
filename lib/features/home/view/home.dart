import 'package:book_summary_ai/core/extensions/context_extension.dart';
import 'package:book_summary_ai/core/extensions/media_query_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../config/localization/lang/locale_keys.g.dart';
import '../../../core/constants/app_paddings.dart';
part 'widgets/welcome_text.dart';
part 'widgets/headline_text.dart';

///
class Home extends StatefulWidget {
  /// Home Screen
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.horizontalSSymmetric(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(),
              HeadlineText(),
            ],
          ),
        ),
      ),
    );
  }
}
