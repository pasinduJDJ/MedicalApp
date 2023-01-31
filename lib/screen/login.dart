import 'package:flutter/material.dart';
import 'package:medi_app/component/default.dart';
import 'package:medi_app/screen/CustomerScreen.dart';

class login_Screen extends StatefulWidget {
  const login_Screen({super.key});

  @override
  State<login_Screen> createState() => _login_ScreenState();
}

class _login_ScreenState extends State<login_Screen> {
  TextEditingController _userPassword = TextEditingController();
  TextEditingController _userEmail = TextEditingController();
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(
                color: KPrimaryColor,
                // fontFamily: 'Lato',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            _comboBox(),
            _buildEmail(),
            _buildPassword(),
            _buildForgotPasswordBtn(),
            _buildRememberMeCheckbox(),
            _buildLoginBtn(),
            _buildSignInWithText(),
            _buildSignupBtn()
          ],
        ),
      ),
    );
  }

  Widget _comboBox() {
    return Container(
      width: 350,
      height: 80,
      // color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "User Type",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              height: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: KPrimaryColor, width: 1)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: value,
                  iconSize: 40,
                  icon: const Icon(Icons.arrow_drop_down, color: KPrimaryColor),
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      value: "Pharmacy",
                      child: Text(
                        "Pharmacy",
                        style: TextStyle(fontSize: 14, color: KPrimaryColor),
                      ),
                    ),
                    DropdownMenuItem(
                      value: "Customer",
                      child: Text("Customer",
                          style: TextStyle(fontSize: 14, color: KPrimaryColor)),
                    )
                  ],
                  onChanged: (value) => setState(() => this.value = value),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      width: 350,
      height: 78,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Username or Email',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 3.0),
          Container(
            alignment: Alignment.centerLeft,
            height: 45.0,
            decoration: BoxDecoration(
                color: KPrimaryColor, borderRadius: BorderRadius.circular(12)),
            child: TextFormField(
              controller: _userEmail,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                // hintText: 'Enter your Email',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      width: 350,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Password',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 3.0),
          Container(
            alignment: Alignment.centerLeft,
            height: 45.0,
            decoration: BoxDecoration(
                color: KPrimaryColor, borderRadius: BorderRadius.circular(12)),
            child: TextFormField(
              controller: _userPassword,
              obscureText: true,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                // hintText: 'Enter your Password',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      // color: Color.fromARGB(255, 59, 118, 255),
      width: 350,
      height: 30,
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Forgot Password?',
          style: TextStyle(fontSize: 11, color: KPrimaryColor),
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    bool _rememberMe = false;
    return Container(
      width: 350,
      height: 13.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: KPrimaryColor),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: KPrimaryColor,
              onChanged: (value) {},
            ),
          ),
          const Text(
            'Remember me',
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      width: 350,
      child: MaterialButton(
        onPressed: () {
          if (_userEmail.text == "Customer") {
            _navigateToCuserScreen(context);
          }
        },
        color: KPrimaryColor,
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  void _navigateToCuserScreen(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => CusScreen()));
  }

  Widget _buildSignInWithText() {
    return Column(
      children: const <Widget>[
        Text(
          '- OR -',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 13),
        ),
        SizedBox(height: 10.0),
        // Text(
        //   'Sign in with',
        // ),
      ],
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () {
        // _navigateToSignUpScreen(context);
      },
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0,
                // fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: KPrimaryColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
