import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    theme: ThemeData(),
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _current = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      pane: NavigationPane(
        selected: _current,
        onChanged: (ind){
          setState(() {
            _current = ind;
          });
        },
        header: Icon(FluentIcons.accept),
        items: [
          PaneItem(icon: Icon(FluentIcons.dashboard_add)),
          PaneItem(icon: Icon(FluentIcons.dashboard_add)),
          PaneItem(icon: Icon(FluentIcons.dashboard_add)),
        ],
        footerItems: [
          PaneItem(icon: Icon(FluentIcons.waffle), infoBadge: InfoBadge(source: Text("3"),)),
          PaneItem(icon: Icon(FluentIcons.waffle)),
          PaneItem(icon: Icon(FluentIcons.waffle)),
        ]
        ),
      appBar: NavigationAppBar(
        automaticallyImplyLeading: true,
        actions:
          Icon(FluentIcons.a_a_d_logo),
        title: Text("New Title"),
      ),
      content: NavigationBody(
        index: _current,
        children: [
          Center(child: Text("test"),),
          Center(child: Text("dashboard"),),
          Center(child: Text("calm"),),
        ],
      )
    );
  }
}
