import 'package:flutter/material.dart';
import 'package:pegas_solutions/pages/homepage/home_page.dart';
import 'package:pegas_solutions/providers/theme_provider.dart';
import 'package:pegas_solutions/providers/utility_provider.dart';
import 'package:pegas_solutions/utilities/strings.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UtilityProvider>(create: (_) => UtilityProvider()),
    ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider())
  ], child: SolutionsApp()));
}

class SolutionsApp extends StatefulWidget {
  @override
  _SolutionsAppState createState() => _SolutionsAppState();
}

class _SolutionsAppState extends State<SolutionsApp> {
  double deviceWidth;
  double deviceHeight;


  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: sTitle,
        theme: themeProvider.getTheme,
        home: Scaffold(
            body: Scrollbar(radius: Radius.circular(12), child: HomePage())));
  }
}
