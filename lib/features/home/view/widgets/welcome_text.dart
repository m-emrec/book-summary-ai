part of "../home.dart";

///
class WelcomeText extends StatefulWidget {
  /// Welcome Text
  /// A widget that displays a welcome text.
  ///
  /// This widget is typically used on the home screen to greet the user.
  ///
  /// {@tool snippet}
  /// This example shows how to use the `WelcomeText` widget:
  ///
  /// ```dart
  /// WelcomeText();
  /// ```
  /// {@end-tool}
  ///
  /// See also:
  ///  * [Text], which is used to display the welcome message.
  const WelcomeText({super.key});

  @override
  State<WelcomeText> createState() => _WelcomeTextState();
}

class _WelcomeTextState extends State<WelcomeText> {
  String _greeting = "";

  @override
  void initState() {
    _greeting = _getGreeting();
    super.initState();
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return tr(LocaleKeys.home_morning);
    }
    if (hour < 17) {
      return tr(LocaleKeys.home_afternoon);
    }
    return tr(LocaleKeys.home_evening);
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      "$_greeting user",
      style: context.textTheme.titleMedium,
    );
  }
}
