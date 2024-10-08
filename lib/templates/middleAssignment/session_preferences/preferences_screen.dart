import 'package:fall_24_flutter_course/templates/middleAssignment/session_preferences/ui/cards/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:get_it/get_it.dart';

import '../ui/foundation/app_label.dart';
import '../ui/theme/theme.dart';

class SessionPreferencesScreen extends StatelessWidget {
  SessionPreferencesScreen({super.key});

  final AppTheme _theme = GetIt.instance<AppTheme>();

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: _theme.colors.background.primary,
        appBar: _appBar(context),
        body: _content(),
      );

  AppBar _appBar(BuildContext context) =>
      AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_rounded,
              color: _theme.colors.text.topBar,
            ),
        ),
        title: AppLabel(text: AppLocalizations.of(context)!.shower_prefs_top_bar),
        backgroundColor: _theme.colors.background.primary,
      );

  Widget _content() => Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: double.infinity,
    margin: EdgeInsets.only(bottom: _theme.dimensions.padding.large),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        PreferencesCards(),
      ],
    ),
  );
}
