import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mailboxes'),
        ),
        body: MailboxMenu(),
      ),
    );
  }
}

class MailboxMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MailboxMenuItem(title: 'Today', icon: Icons.today),
        MailboxMenuItem(title: 'Unread', icon: Icons.mark_email_unread),
        MailboxMenuItem(title: 'Inbox', icon: Icons.mail),
        MailboxMenuItem(title: 'Archive', icon: Icons.archive),
        MailboxMenuItem(title: 'Junk', icon: Icons.report_problem),
        MailboxMenuItem(title: 'Trash', icon: Icons.delete),
      ],
    );
  }
}

class MailboxMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;

  MailboxMenuItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        print('Seleccionaste: $title');
      },
    );
  }
}
