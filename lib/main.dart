import 'package:flutter/material.dart';

void main() => runApp(FileManagerApp());

class FileManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'File Manager',
      theme: ThemeData.dark(),
      home: FileManagerHome(),
    );
  }
}

class FileManagerHome extends StatelessWidget {
  final List<Map<String, dynamic>> files = [
    {'title': 'Documents', 'count': 45, 'desc': 'Includes Word, PPT, Excel', 'icon': Icons.description},
    {'title': 'Ebooks', 'count': 88, 'desc': 'Includes .txt, .epub', 'icon': Icons.book},
    {'title': 'Apks', 'count': 0, 'desc': 'Includes .apk files', 'icon': Icons.android},
    {'title': 'Archives', 'count': 4, 'desc': 'Includes .zip, .rar', 'icon': Icons.archive},
    {'title': 'Big files', 'count': 41, 'desc': 'Files > 50MB', 'icon': Icons.insert_drive_file},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Phone Storage')),
      drawer: SettingsDrawer(),
      body: ListView.builder(
        itemCount: files.length,
        itemBuilder: (context, index) {
          final file = files[index];
          return ListTile(
            leading: Icon(file['icon'], color: Colors.blue),
            title: Text('${file['title']} (${file['count']})'),
            subtitle: Text(file['desc']),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          );
        },
      ),
    );
  }
}
