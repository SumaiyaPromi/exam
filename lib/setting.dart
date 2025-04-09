class SettingsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Settings', style: TextStyle(fontSize: 24)),
            decoration: BoxDecoration(color: Colors.grey[850]),
          ),
          SwitchListTile(
            title: Text('Night Mode'),
            value: true,
            onChanged: (val) {},
          ),
          CheckboxListTile(
            title: Text('High-speed Mode supported'),
            value: true,
            onChanged: (val) {},
          ),
          ListTile(title: Text('Mi Phone Settings')),
          ListTile(title: Text('Help & Feedback')),
          ListTile(title: Text('Ratings'), trailing: Icon(Icons.star, color: Colors.green)),
          ListTile(title: Text('About')),
        ],
      ),
    );
  }
}
