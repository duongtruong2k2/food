import 'package:flutter/material.dart';
import 'package:food/pages/change_password.dart';
import 'package:food/pages/forgot_password.dart';
import 'package:food/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String email = '';
  // String password = '';
  final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
  // Hàm xử lý đăng nhập
  void login() {
    // TODO: Xử lý đăng nhập
    
  }

  // Hàm xử lý đăng ký
  void register() {
    // TODO: Xử lý đăng ký
    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(),));
  }

  // Hàm xử lý thay đổi mật khẩu
  void changePassword() {
    // TODO: Xử lý thay đổi mật khẩu
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordPage(),));
  }

  // Hàm xử lý quên mật khẩu
  void forgotPassword() {
    // TODO: Xử lý quên mật khẩu
     Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng nhập'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                // onChanged: (value) {
                //   setState(() {
                //     email = value;
                //   });
                // },
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                // onChanged: (value) {
                //   setState(() {
                //     password = value;
                //   });
                // },
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Mật khẩu',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: login,
                child: Text('Đăng nhập'),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: register,
                    child: Text('Đăng ký'),
                  ),
                  SizedBox(width: 8.0),
                  TextButton(
                    onPressed: changePassword,
                    child: Text('Đổi mật khẩu'),
                  ),
                  SizedBox(width: 8.0),
                  TextButton(
                    onPressed: forgotPassword,
                    child: Text('Quên mật khẩu'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
