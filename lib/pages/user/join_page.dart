import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_form_field.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: const Text(
                "회원가입",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _joinForm(context)
          ],
        ),
      ),
    );
  }

  // 리턴 타입은 항상 최상위 타입으로 잡아주는 것이 좋음
  Widget _joinForm(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const CustomTextFormField(hint: "아이디를 입력하세요"),
        const CustomTextFormField(hint: "비밀번호를 입력하세요"),
        const CustomTextFormField(hint: "이메일을 입력하세요"),
        CustomElevatedButton(
          buttonText: "회원가입",
          fun: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));},
        ),
      ],
    ));
  }

}

void showToast(String msg){
  Fluttertoast.showToast(msg: "$msg", toastLength: Toast.LENGTH_SHORT);
}


