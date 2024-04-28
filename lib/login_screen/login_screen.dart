import 'package:flutter/material.dart';
import 'package:ismprod_final_project/home/home_pages.dart';
import 'package:ismprod_final_project/model/request/login_request_model.dart';
import 'package:ismprod_final_project/services/auth_service.dart';
import 'package:ismprod_final_project/storage/auth_storage.dart';
import 'package:ismprod_final_project/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    getCredentialFromLocal();
  }

  getCredentialFromLocal() async {
    final String token = await AuthStorage().getCredentialFromLocal();
    if (token != null) {
      Navigator.pushAndRemoveUntil(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
          (route) => false);
    } else {
      print('Null Token');
    }
  }

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool isObscure = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Color(0xFF1650C0)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("assets/images/login.png"),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Silahkan Login",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1650C0),
                    fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextfield(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: "Masukan email"),
              const SizedBox(
                height: 16,
              ),
              CustomTextfield(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: "Masukan password",
                isObscure: isObscure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              const SizedBox(
                height: 24,
              ),
              Center(
                child: SizedBox(
                  width: 500,
                  height: 60,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF1650C0))),
                    onPressed: () {
                      AuthService()
                          .signinWithEmailAndPassword(
                              request: LoginRequestModel(
                                  email : emailController.text,
                                  password: passwordController.text))
                          .then((value) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                            (route) => false);
                            print("berhasil masuk");
                      });
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
