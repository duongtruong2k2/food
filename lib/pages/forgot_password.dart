import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
 
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  // String email = '';
   final TextEditingController emailController = TextEditingController();

  // Hàm xử lý quên mật khẩu
  void forgotPassword() {
    // TODO: Xử lý quên mật khẩu
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quên mật khẩu'),
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
              ElevatedButton(
                onPressed: forgotPassword,
                child: Text('Gửi yêu cầu đặt lại mật khẩu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
