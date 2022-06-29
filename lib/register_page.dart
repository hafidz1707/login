import 'package:flutter/material.dart';
import 'routes.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({Key? key}) : super(key: key);

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {

  bool _passVisibility = true;
  TextEditingController passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: const Text(
                  'OwO',
                  style: TextStyle(fontFamily: 'Righteous',
                      fontSize: 20,
                      color: Colors.black)
                ),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shadowColor: Colors.transparent,
              ),

              //const SizedBox(height: 15),

              /*
              Container(
                alignment: Alignment.bottomLeft,
                height: 40,
                child: const Padding(

                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                        'OWO',
                        style: TextStyle(fontFamily: 'Righteous',
                            fontSize: 20,
                            color: Colors.black)
                    )
                ),
              ),
              //SizedBox(height: 15),
              */
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/OwoBotPNG.png'),
              ),

              const SizedBox(height: 15),

              Row(
                  children: const [
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
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordCon,
                      obscureText: _passVisibility,
                      decoration: InputDecoration(
                          icon: const Icon(Icons.lock),
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          //suffixIcon: Icon(Icons.visibility),
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              _passVisibility = !_passVisibility;
                            });
                          },
                            icon: _passVisibility
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          )
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),

                    const SizedBox(height: 15),

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
                              MyRoutes.register,
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
                        Navigator.pushNamed(context, MyRoutes.register);
                      }),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Text('SIGN UP',
                        style: TextStyle(fontFamily: 'Righteous',
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Row(
                        children: const [
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

                    const SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/Facebook.png'),
                          ),
                        ),

                        const SizedBox(width: 20),

                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/Apple.png'),
                          ),
                        ),

                        const SizedBox(width: 20),

                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
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