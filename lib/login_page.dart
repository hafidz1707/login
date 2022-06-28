import 'package:flutter/material.dart';
import 'routes.dart';

class Page_Login extends StatefulWidget {
  const Page_Login({Key? key}) : super(key: key);

  @override
  State<Page_Login> createState() => _Page_LoginState();
}

class _Page_LoginState extends State<Page_Login> {
  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),

              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/OwoBotPNG.png'),
              ),

              SizedBox(height: 15),

              Row(
                  children: [
                    Expanded(
                      child: Divider(
                        endIndent: 10,
                        thickness: 1,
                      ),
                    ),

                    Text('LOGIN',
                      style: TextStyle(fontFamily: 'Righteous',
                          fontSize: 16,
                          color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),

                    Expanded(
                      child: Divider(
                        indent: 10,
                        thickness: 1,
                      ),
                    ),

                  ]
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Enter Your Username/Email',
                        labelText: 'Email or Username',
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        hintText: 'Enter Your Password',
                        labelText: 'Password',
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.loginScreen);
                      },
                      child: const Text(
                        'Forgot Password?',
                      ),

                    ),

                    ElevatedButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, MyRoutes.loginScreen);
                        }),
                      child: Text('LOGIN',
                        style: TextStyle(fontFamily: 'Righteous',
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            endIndent: 10,
                            thickness: 1,
                          ),
                        ),

                        Text('OR',
                          style: TextStyle(fontFamily: 'Righteous',
                              fontSize: 16,
                              color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),

                        Expanded(
                          child: Divider(
                            indent: 10,
                            thickness: 1,
                          ),
                        ),
                      ]
                    ),

                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/Facebook.png'),
                          ),
                        ),

                        SizedBox(width: 20),

                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/Apple.png'),
                          ),
                        ),

                        SizedBox(width: 20),

                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/Google.png'),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        const Text('Don\'t have an account?'),

                        TextButton(
                          onPressed: (() {
                            Navigator.pushNamed(
                              context,
                              MyRoutes.Register,
                            );
                          }),

                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
