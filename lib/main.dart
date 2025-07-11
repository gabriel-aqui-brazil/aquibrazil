import '/custom_code/actions/index.dart' as actions;
import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'auth/custom_auth/auth_util.dart';
import 'auth/custom_auth/custom_auth_user_provider.dart';

import 'backend/firebase/firebase_config.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';

import 'package:provider/provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'auth/custom_auth/auth_util.dart';
import 'auth/custom_auth/custom_auth_user_provider.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';
import 'backend/firebase/firebase_config.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:aqui_brazil/profile/help/error_page/error_page_widget.dart';
import 'dart:async';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GoRouter.optionURLReflectsImperativeAPIs = true;

  usePathUrlStrategy();

  final environmentValues = FFDevEnvironmentValues();
  await initFirebase();
  await environmentValues.initialize();
  await actions.lockOrientation();
  // Ações customizadas iniciais

  await actions.initializeIntercom();
  await actions.lockOrientation();

  await authManager.initialize();

  await FFLocalizations.initialize();

  final appState = FFAppState();

  await appState.initializePersistedState();

  // Tratamento global de erros

  FlutterError.onError = (FlutterErrorDetails details) {
    navigatorKey.currentState?.pushReplacement(
      MaterialPageRoute(
        builder: (context) => ErrorPageWidget(details: details.toString()),
      ),
    );
  };

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorPageWidget(details: details.toString());
  };

  runZonedGuarded(() {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => appState),
        ],
        child: MyApp(),
      ),
    );
  }, (error, stackTrace) {
    debugPrint('Caught error in runZonedGuarded: $error');
  });
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale = FFLocalizations.getStoredLocale();

  ThemeMode _themeMode = ThemeMode.system;
  double _textScaleFactor = 1.0;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;
  String getRoute([RouteMatch? routeMatch]) {
    final RouteMatch lastMatch =
        routeMatch ?? _router.routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : _router.routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }

  List<String> getRouteStack() =>
      _router.routerDelegate.currentConfiguration.matches
          .map((e) => getRoute(e))
          .toList();
  late Stream<AquiBrazilAuthUser> userStream;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = aquiBrazilAuthUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });

    Future.delayed(
      Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  void setLocale(String language) {
    safeSetState(() => _locale = createLocale(language));
    FFLocalizations.storeLocale(language);
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
      });

  void setTextScaleFactor(double updatedFactor) {
    if (updatedFactor < FlutterFlowTheme.minTextScaleFactor ||
        updatedFactor > FlutterFlowTheme.maxTextScaleFactor) {
      return;
    }
    safeSetState(() {
      _textScaleFactor = updatedFactor;
    });
  }

  void incrementTextScaleFactor(double incrementValue) {
    final updatedFactor = _textScaleFactor + incrementValue;
    if (updatedFactor < FlutterFlowTheme.minTextScaleFactor ||
        updatedFactor > FlutterFlowTheme.maxTextScaleFactor) {
      return;
    }
    safeSetState(() {
      _textScaleFactor = updatedFactor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'AquiBrazil',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackMaterialLocalizationDelegate(),
        FallbackCupertinoLocalizationDelegate(),
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('pt'),
        Locale('en'),
        Locale('es'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
      builder: (_, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: TextScaler.linear(_textScaleFactor).clamp(
            minScaleFactor: FlutterFlowTheme.minTextScaleFactor,
            maxScaleFactor: FlutterFlowTheme.maxTextScaleFactor,
          ),
        ),
        child: child!,
      ),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({
    Key? key,
    this.initialPage,
    this.page,
    this.disableResizeToAvoidBottomInset = false,
  }) : super(key: key);

  final String? initialPage;
  final Widget? page;
  final bool disableResizeToAvoidBottomInset;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'home';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'home': HomeWidget(),
      'favoriteCompany': FavoriteCompanyWidget(),
      'partners': PartnersWidget(),
      'orderHistory': OrderHistoryWidget(),
      'profile': ProfileWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      resizeToAvoidBottomInset: !widget.disableResizeToAvoidBottomInset,
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: Visibility(
        visible: responsiveVisibility(
          context: context,
          desktop: false,
        ),
        child: GNav(
          selectedIndex: currentIndex,
          onTabChange: (i) => safeSetState(() {
            _currentPage = null;
            _currentPageName = tabs.keys.toList()[i];
          }),
          backgroundColor: Color(0xFFF7F7F7),
          color: Color(0xFF1A1A1A),
          activeColor: FlutterFlowTheme.of(context).primary,
          tabBackgroundColor: Color(0x00000000),
          tabBorderRadius: 100.0,
          tabMargin: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 34.0),
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
          gap: 0.0,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          duration: Duration(milliseconds: 500),
          haptic: false,
          tabs: [
            GButton(
              icon: FFIcons.khome3,
              text: FFLocalizations.of(context).getText(
                '6igburi0' /*  */,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: FFIcons.kgroup8224,
              text: FFLocalizations.of(context).getText(
                'xn4asw9r' /*  */,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: FFIcons.kchainlinkLink,
              text: FFLocalizations.of(context).getText(
                '4n0t3dpi' /*  */,
              ),
              iconSize: 28.0,
            ),
            GButton(
              icon: FFIcons.kreceipt,
              text: FFLocalizations.of(context).getText(
                'nxyn3ooa' /*  */,
              ),
              iconSize: 24.0,
            ),
            GButton(
              icon: FFIcons.kgroup82221,
              text: '',
              iconSize: 24.0,
            )
          ],
        ),
      ),
    );
  }
}
