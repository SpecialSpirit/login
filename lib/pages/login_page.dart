import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/main.dart';
import 'package:link_text/link_text.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool _rememberme = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // ignore: avoid_unnecessary_containers
          body: Stack(children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          child: AnimateGradient(
            primaryColors: const [
              Colors.pink,
              Colors.pinkAccent,
              Colors.white,
            ],
            secondaryColors: const [
              Colors.blue,
              Colors.blueAccent,
              Colors.white,
            ],
          ),
        ),
        Center(
          child: Container(
            color: Colors.white54,
            height: MediaQuery.of(context).size.height / 1.65,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment:  CrossAxisAlignment.start,
              children: <Widget>[
                _headername(),
                const SizedBox(height: 25),
                _buildusername(),
                const SizedBox(height: 20.0),
                _buildpassword(),
                const SizedBox(height: 10.0),
                _rows(),
                const SizedBox(height: 10.0),
                _button(),
                const SizedBox(height: 2.0),
                _register(),
                // Container(
                //   alignment: Alignment.centerRight,
                //   padding: const EdgeInsets.only(right: 10),
                //   child: const LinkText('Şifremi Unuttum', textAlign: TextAlign.center, )
                // )
              ],
            ),
          ),
        ),
      ])),
    );
  }

  InputDecoration customInputDecoration(String hintText, var preicon) {
    return InputDecoration(
      hintText: (hintText),
      prefixIcon: Icon(preicon),

      // enabledBorder: const UnderlineInputBorder(
      //     borderSide: BorderSide(color: Colors.grey)),
      // focusedBorder: const UnderlineInputBorder(
      //     borderSide: (BorderSide(color: Colors.blue))),
    );
  }

  Widget _headername() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Giriş Yap',
          style: GoogleFonts.farro(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildusername() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Kullanıcı Adı',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: const Color.fromARGB(153, 73, 73, 73),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      offset: Offset(0, 2)),
                ]),
            height: 40.0,
            width: MediaQuery.of(context).size.width / 1.05,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  hintText: 'Kullanıcı Adınızı Giriniz',
                  hintStyle: TextStyle(color: Colors.white70)),
            ),
          )
        ]);
  }

  Widget _buildpassword() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Şifreniz',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: const Color.fromARGB(153, 73, 73, 73),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                      offset: Offset(0, 2)),
                ]),
            height: 40.0,
            width: MediaQuery.of(context).size.width / 1.05,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintText: 'Şifrenizi Giriniz',
                  hintStyle: TextStyle(color: Colors.white70)),
            ),
          )
        ]);
  }

  Widget _forgerPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: InkWell(
            onTap: (() => {}),
            child: const Text('Şifremi Unuttum',
                style: TextStyle(color: Colors.blue)),
          ),
        ),
        // InkWell(
        //   onTap: (() => {}),
        //   child: const Text('Şifremi Unuttum'),
        // ),
        Container(
          width: double.infinity,
        )
      ],
    );
  }

  Widget _rows() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: const Padding(
              padding: EdgeInsets.zero,
              child: Text('Beni Hatırla'),
            ),
            checkColor: Colors.white,
            value: _rememberme,
            onChanged: (bool? value) {
              setState(() {
                _rememberme = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 90, right: 0),
          child: InkWell(
            onTap: (() => {}),
            child: const Text('Şifremi Unuttum',
                style: TextStyle(color: Colors.blue)),
          ),
        ))
      ],
    );
  }

  Widget _button() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      // width: MediaQuery.of(context).size.width / 2,
      child: ElevatedButton(
        // ignore: avoid_print
        onPressed: () => print('Giriş Butuna Tıklandı'),
        // ignore: sort_child_properties_last
        child: Text(
          'Giriş Yap',
          style: GoogleFonts.roboto(
            fontSize: 18,
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            fixedSize: const Size(300, 40),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
      ),
    );
  }

  Widget _register() {
    return Container(
      alignment: Alignment.center,
      child: InkWell(
          // ignore: avoid_print
          onTap: () => print('uye ol tiklandi'),
          child: Text(
            'Üye Değil Misin? O Zaman Üye Ol',
            style: GoogleFonts.roboto(color: Colors.pinkAccent),
          )),
    );
  }
}
