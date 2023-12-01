import 'package:flutter/material.dart';

class ChangePasswordPage extends StatefulWidget {
  @override
  _ChangePasswordPageState createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  // String currentPassword = '';
  // String newPassword = '';
  // String confirmPassword = '';
 final TextEditingController currentPasswordController = TextEditingController();
 final TextEditingController newPasswordController = TextEditingController();
 final TextEditingController confirmPasswordController = TextEditingController();
 
  // // Hàm xử lý thay đổi mật khẩu
  // void changePassword() {
  //   if (newPassword == confirmPassword) {
  //     // TODO: Xử lý thay đổi mật khẩu thành công
  //   } else {
  //     // TODO: Hiển thị thông báo lỗi
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Đổi mật khẩu'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                obscureText: true,
                // onChanged: (value) {
                //   setState(() {
                //     currentPassword = value;
                //   });
                // },
                controller: currentPasswordController,
                decoration: InputDecoration(
                  hintText: 'Mật khẩu hiện tại',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                obscureText: true,
                // onChanged: (value) {
                //   setState(() {
                //     newPassword = value;
                //   });
                // },
                controller: newPasswordController,
                decoration: InputDecoration(
                  hintText: 'Mật khẩu mới',
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
                  hintText: 'Nhập lại mật khẩu mới',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Đổi mật khẩu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
