import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    ///Screen rebuilds multiple times on keyboard opening closing
    ///when we pass child widget in home parameter of material app
    ///but it doesn't rebuild multiple times when we pass child widget in
    /// child parametr of screen util.

    if(false){
      return ScreenUtilInit(
        designSize: const Size(360, 690),
        // minTextAdapt: true,
        // splitScreenMode: true,
        // useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            // home: MyHomePage(),
          );
        },
        child: MyHomePage(),
      );
    }

    ///Without screenUtil
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }


}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {

    print('build function of home called');

    return Scaffold(
      body: Center(
        child: TextFormField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Enter your name',
            border: OutlineInputBorder(),
          ),
        ),
      )
    );
  }
}
