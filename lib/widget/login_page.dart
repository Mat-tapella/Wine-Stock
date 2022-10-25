import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://www.canva.com/design/DAFQDY6vKqI/yxS2-fNL9t9CekmfOU49OQ/edit?utm_content=DAFQDY6vKqI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton');
  }
}
