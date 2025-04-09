import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FileManagerUI(),
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}

class FileManagerUI extends StatefulWidget {
  @override
  _FileManagerUIState createState() => _FileManagerUIState();
}

class _FileManagerUIState extends State<FileManagerUI> {
  bool nightMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Storage'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              title: const Text('Night Mode'),
              trailing: Switch(
                value: nightMode,
                onChanged: (value) {
                  setState(() {
                    nightMode = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Mi Phone Settings'),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help & Feedback'),
              leading: const Icon(Icons.help_outline),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Ratings'),
              leading: const Icon(Icons.star),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About'),
              leading: const Icon(Icons.info_outline),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Total: 244GB    Available: 135GB', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 10),
          buildStorageTile('Documents', 45, Icons.description),
          buildStorageTile('Ebooks', 88, Icons.menu_book),
          buildStorageTile('Apks', 0, Icons.android),
          buildStorageTile('Archives', 4, Icons.archive),
          buildStorageTile('Big files', 41, Icons.folder),
        ],
      ),
    );
  }

  Widget buildStorageTile(String title, int count, IconData icon) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text('$title ($count)'),
        subtitle: Text('Includes relevant files'),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
