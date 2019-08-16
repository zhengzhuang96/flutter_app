import 'package:flutter/material.dart';

/* *
 * 仿注册登录页面
 */
class FormRegister extends StatefulWidget {
  @override
  _FormRegisterState createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final registerFormKey = GlobalKey<FormState>();
  String username;
  String password;
  bool autovalidata = false;

  void submitRegisterForm() {
    if (registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      registerFormKey.currentState.validate();

      print('username：$username');
      print('password: $password');

      // Scaffold.of(context).showSnackBar(
      //   SnackBar(
      //     content: Text('123...'),
      //   )
      // );
    } else {
      setState(() {
        autovalidata = true;
      });
    }
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return '用户名未填写.';
    }

    return null;
  }

  String validatePassword(value) {
    if (value.isEmpty) {
      return '密码未填写.';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单'),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Form(
              key: registerFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'UserName',
                      helperText: '',
                    ),
                    onSaved: (value) {
                      username = value;
                    },
                    validator: validateUsername, // 表单验证
                    autovalidate: autovalidata, // 自动验证功能
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'PassWord',
                      helperText: '',
                    ),
                    onSaved: (value) {
                      password = value;
                    },
                    validator: validatePassword,
                    autovalidate: autovalidata,
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text('Register',
                          style: TextStyle(color: Colors.white)),
                      elevation: 0.0,
                      onPressed: submitRegisterForm,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
