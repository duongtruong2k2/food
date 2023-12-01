import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // String email = '';
  // String password = '';
  // String confirmPassword = '';
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final TextEditingController confirmPasswordController = TextEditingController();
  // Hàm xử lý đăng ký
  // void register() {
  //   if (password == confirmPassword) {
  //     // TODO: Xử lý đăng ký thành công
  //   } else {
  //     // TODO: Hiển thị thông báo lỗi
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đăng ký'),
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
              TextField(
                obscureText: true,
                // onChanged: (value) {
                //   setState(() {
                //     confirmPassword = value;
                //   });
                // },
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  hintText: 'Nhập lại mật khẩu',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Đăng ký'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
