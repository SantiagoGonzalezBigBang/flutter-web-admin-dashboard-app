import 'package:flutter/material.dart';

import 'package:admin_dashboard/routes/routes.dart';

import 'package:admin_dashboard/ui/inputs/inputs.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/widgets.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  // validator: (value) => ,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: Inputs.authInputDecoration(
                    hintText: 'Name',
                    labelText: 'Name',
                    icon: Icons.supervised_user_circle_sharp
                  ),
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  // validator: (value) => ,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: Inputs.authInputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    icon: Icons.email_outlined
                  ),
                ),
                const SizedBox(height: 20.0,),
                TextFormField(
                  // validator: (value) => ,
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: Inputs.authInputDecoration(
                    hintText: '********',
                    labelText: 'Password',
                    icon: Icons.lock_outline_rounded
                  ),
                ),
                const SizedBox(height: 20.0,),
                CustomOutlinedButton(
                  text: 'Sign Up',
                  onPressed: () {},
                ),
                const SizedBox(height: 20.0,),
                LinkText(
                  text: 'Log In',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.loginRoute);
                  },
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}

