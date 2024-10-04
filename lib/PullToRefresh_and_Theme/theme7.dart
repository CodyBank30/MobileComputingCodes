import 'package:flutter/material.dart';

class ThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Toggle and Pull to Refresh',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ThemeToggleScreen(),
    );
  }
}

class ThemeToggleScreen extends StatefulWidget {
  @override
  _ThemeToggleScreenState createState() => _ThemeToggleScreenState();
}

class _ThemeToggleScreenState extends State<ThemeToggleScreen> {
  bool _isDarkTheme = false;

  Future<void> _refreshContent() async {
    // Simulate a network call or data fetch
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      // This would typically refresh your data here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Toggle and Pull to Refresh'),
        actions: [
          Switch(
            value: _isDarkTheme,
            onChanged: (value) {
              setState(() {
                _isDarkTheme = value;
              });
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _refreshContent,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Pull down to refresh this content.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  'This is the content area. Pull down to refresh!',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
