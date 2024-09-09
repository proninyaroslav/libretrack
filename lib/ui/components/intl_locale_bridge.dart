import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

/// Sets [Intl.defaultLocale] to the current locale of the app.
class InltLocaleBridge extends StatefulWidget {
  final Widget? child;

  const InltLocaleBridge({super.key, this.child});

  @override
  State<InltLocaleBridge> createState() => _IntlLocaelState();
}

class _IntlLocaelState extends State<InltLocaleBridge> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    Intl.defaultLocale = Localizations.localeOf(context).toString();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? widget;
  }
}
