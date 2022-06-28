import 'package:flutter/material.dart';
import 'routes.dart';

class Page_Register extends StatefulWidget {
  const Page_Register({Key? key}) : super(key: key);

  @override
  State<Page_Register> createState() => _Page_RegisterState();
}

/*
class _Page_RegisterState extends State<Page_Register> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/

class _Page_RegisterState extends State<Page_Register> {
  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        'OWO',
                        style: TextStyle(fontFamily: 'Righteous',
                            fontSize: 20,
                            color: Colors.black)
                    )
                ),
              ),
              //SizedBox(height: 15),

              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/OwoBotPNG.png'),
              ),

              SizedBox(height: 15),

              Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 30,
                        endIndent: 10,
                        thickness: 1,
                      ),
                    ),

                    Text('SIGN UP',
                      style: TextStyle(fontFamily: 'Righteous',
                          fontSize: 16,
                          color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),

                    Expanded(
                      child: Divider(
                        indent: 10,
                        endIndent: 30,
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
                        hintText: 'Enter Email',
                        labelText: 'Email',
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

                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('By clicking Sign Up, you agree to our',
                          style: TextStyle(
                            fontSize: 10,
                          ),),

                        TextButton(
                          onPressed: (() {
                            Navigator.pushNamed(
                              context,
                              MyRoutes.Register,
                            );
                          }),

                          child: const Text(
                            'Terms of Service',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    ElevatedButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, MyRoutes.Register);
                      }),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Text('SIGN UP',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),

                        TextButton(
                          onPressed: (() {
                            Navigator.pushNamed(
                              context,
                              MyRoutes.loginScreen,
                            );
                          }),

                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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