part of '../home.dart';

/// Headline Text
class HeadlineText extends StatelessWidget {
  ///
  const HeadlineText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.7),
      child: Text(
        tr(LocaleKeys.home_headline),
        style: context.textTheme.headlineMedium,
      ),
    );
  }
}
