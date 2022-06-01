import 'package:admin_dashboard/services/services.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:admin_dashboard/routes/routes.dart';
import 'package:admin_dashboard/providers/providers.dart';

import 'package:admin_dashboard/ui/inputs/inputs.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final authProvider = Provider.of<AuthProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => LoginFormProvider(),
      builder: (context, child) {
        final loginFormProvider = Provider.of<LoginFormProvider>(context, listen: false);

        return Container(
          margin: const EdgeInsets.only(top: 100.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370.0),
              child: Form(
                key: loginFormProvider.formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Email is required';
                        if (!EmailValidator.validate(value)) return 'Email not valid';
                        return null; //* Valid
                      },
                      onChanged: (value) => loginFormProvider.email = value,
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
                      onChanged: (value) => loginFormProvider.password = value,
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Password is required';
                        if (value.length < 6) return 'Password is too short';
                        return null; //* Valid
                      },
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
                      text: 'Log In',
                      onPressed: () {
                        if (loginFormProvider.validateForm()) {
                          authProvider.login(
                            email: loginFormProvider.email, 
                            password: loginFormProvider.password
                          );
                        }
                      },
                    ),
                    const SizedBox(height: 20.0,),
                    LinkText(
                      text: 'New Account',
                      onTap: () {
                        NavigationService.pushNamed(Routes.registerRoute);
                      },
                    )
                  ],
                )
              ),
            ),
          ),
        );
      },      
    );
  }

}

