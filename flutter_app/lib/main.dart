import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled2/Start/login_page.dart';
import 'package:untitled2/auth%20system/auth_controller.dart';
import "package:get/get.dart";
import 'package:untitled2/auth%20system/firebase_options.dart';
import 'package:untitled2/Start/start_screen.dart';
import 'package:untitled2/auth%20system/splash_screen.dart';
import 'package:untitled2/screens/components/AllCourses/Component/defaultElements.dart';
import 'package:untitled2/screens/components/AllCourses/Screens/colors.dart';
import 'package:untitled2/screens/components/Wallet/Wallet%20settings/credit_card_input_form.dart';
import 'package:untitled2/screens/components/Wallet/data.dart';
import 'package:untitled2/screens/components/Wallet/widgets/card_section.dart';
import 'package:untitled2/screens/components/Wallet/widgets/expenses.dart';
import 'package:untitled2/screens/components/Wallet/widgets/header.dart';
import 'package:untitled2/screens/components/AllCourses/Screens/screens/Review/constants.dart';
import 'package:untitled2/screens/components/AllCourses/Screens/screens/Review/form_field.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));;
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static final String title = 'Magister';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            backgroundColor: Colors.transparent
          ),
          title: title,
          home: const SplashScreen(),
    );
  }
}

class Wallet extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 10.0),
          Container(
            height: 100,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: Expense(),
          ),
        ],
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class CardHolder extends StatefulWidget {
  @override
  State<CardHolder> createState() => _CardHolderState();
}

class _CardHolderState extends State<CardHolder> {
  // translate and customize captions
  final Map<String, String> customCaptions = {
    'PREV': 'Prev',
    'NEXT': 'Next',
    'DONE': 'Done',
    'CARD_NUMBER': 'Card Number',
    'CARDHOLDER_NAME': 'Cardholder Name',
    'VALID_THRU': 'Valid Thru',
    'SECURITY_CODE_CVC': 'Security Code (CVC)',
    'NAME_SURNAME': 'Name Surname',
    'MM_YY': 'MM/YY',
    'RESET': 'Reset',
  };

  final buttonStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(30.0),
    gradient: LinearGradient(
        colors: [
          const Color(0xfffcdf8a),
          const Color(0xfff38381),
        ],
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp),
  );

  final cardDecoration = BoxDecoration(
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black54, blurRadius: 15.0, offset: Offset(0, 8))
      ],
      gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.blue,
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
      borderRadius: BorderRadius.all(Radius.circular(15)));

  final buttonTextStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            child: Stack(children: [
              CreditCardInputForm(
                showResetButton: true,
                onStateChange: (currentState, cardInfo) {
                  print(currentState);
                  print(cardInfo);
                },
                // initialAutoFocus: false,
                // customCaptions: customCaptions,
                // cardCVV: '222',
                // cardName: 'Jeongtae Kim',
                // cardNumber: '1111111111111111',
                // cardValid: '12/12',
                // intialCardState: InputState.DONE,
                // frontCardDecoration: cardDecoration,
                // backCardDecoration: cardDecoration,
                // prevButtonStyle: buttonStyle,
                // nextButtonStyle: buttonStyle,
                // prevButtonTextStyle: buttonTextStyle,
                // nextButtonTextStyle: buttonTextStyle,
                // resetButtonTextStyle: buttonTextStyle,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  List<String> _questions = [
    'How satisfied are you with the app UI?',
    'How much do you recommend our app to your friends?',
    'How was your overall experience?',
  ];

  List<int> _feedbackValue = [];

  List<bool> _isFormFieldComplete = [];

  late String additionalComments;

  void _handleRadioButton(int group, int value) {
    setState(() {
      _feedbackValue[group] = value;
      _isFormFieldComplete[group] = false;
    });
  }

  void handleSubmitFeedback() {
    bool complete = true;
    for (int i = 0; i < _feedbackValue.length; ++i) {
      if (_feedbackValue[i] == -1) {
        complete = false;
        _isFormFieldComplete[i] = true;
      } else {
        _isFormFieldComplete[i] = false;
      }
    }
    setState(() {});
    if (complete == true) {
      // setState(() => loading = true);
    }
  }

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < _questions.length; ++i) {
      _feedbackValue.add(-1);
      _isFormFieldComplete.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Leave Review about this course',
                style: kFeedbackFormFieldTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '😍 - Very Satisfied',
                style: kFeedbackFormFieldTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '☺ - Satisfied',
                style: kFeedbackFormFieldTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '😐 - Somehow Satisfied',
                style: kFeedbackFormFieldTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '😕 - Dissatified',
                style: kFeedbackFormFieldTextStyle,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '😠 - Very Dissatisfied',
                style: kFeedbackFormFieldTextStyle,
              ),
              Divider(
                height: 25.0,
              ),
            ]
              ..addAll([
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  decoration: kFeedbackFormFieldDecoration.copyWith(
                    hintText: 'Additional Comments (Optional)',
                  ),
                  maxLines: 5,
                  onChanged: (value) => additionalComments = value,
                ),
                SizedBox(
                  height: 20.0,
                ),
              ]),
          ),
        ),
      ),
    );
  }
}

final ThemeData kAppThemeData = _buildThemeData();

ThemeData _buildThemeData() {
  final base = ThemeData.light();
  final baseTextTheme = GoogleFonts.interTextTheme(base.textTheme);
  return base.copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: baseTextTheme.copyWith(
      titleLarge: baseTextTheme.titleLarge!.copyWith(
        height: 32.0 / 22.0,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      titleMedium: baseTextTheme.titleMedium!.copyWith(
        fontSize: 17.0,
        height: 27.0 / 17.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: baseTextTheme.titleSmall!.copyWith(
        fontSize: 15.0,
        height: 25.0 / 15.0,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyLarge: baseTextTheme.bodyLarge!.copyWith(
        fontSize: 17.0,
        height: 27.0 / 17.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyMedium: baseTextTheme.bodyMedium!.copyWith(
        fontSize: 15.0,
        height: 25.0 / 15.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodySmall: baseTextTheme.bodySmall!.copyWith(
        height: 15.0 / 12.0,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
    ),
  );
}