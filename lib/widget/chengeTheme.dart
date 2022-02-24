import 'package:flutter/material.dart';
import 'package:flutter_submission/provider/theme_provider.dart';
import 'package:flutter_submission/theme/theme.dart';

import 'package:provider/provider.dart';

class ChangeThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Icon(themeProvider.darkTheme
                  ? Icons.mode_night
                  : Icons.light_mode),
              SizedBox(width: 15),
              Text(
                themeProvider.darkTheme ? 'Dark Mode' : 'Light Mode',
                style: titleCategory.copyWith(fontWeight: FontWeight.w600),
              ),
              Spacer(),
              // Switch.adaptive(
              //   value: themeProvider.isDarkMode,
              //   onChanged: (value) {
              //     final provider =
              //         Provider.of<ThemeProvider>(context, listen: false);
              //     provider.toggleTheme(value);
              //   },
              // ),
              Consumer<ThemeProvider>(
                builder: (context, value, child) {
                  return Switch.adaptive(
                    activeColor: Colors.black,
                    value: value.darkTheme,
                    onChanged: (newValue) {
                      value.toggleTheme();
                    },
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
