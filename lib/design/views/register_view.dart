import 'package:admin_dashboard/services/services.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

import 'package:admin_dashboard/routes/routes.dart';
import 'package:admin_dashboard/providers/providers.dart';
import 'package:admin_dashboard/design/inputs/inputs.dart';
import 'package:admin_dashboard/design/layouts/auth/widgets/widgets.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterFormProvider(),
      builder: (context, child) {
        final registerFormProvider = Provider.of<RegisterFormProvider>(context, listen: false);

        return Container(
          margin: const EdgeInsets.only(top: 45.0),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370.0),
              child: Form(
                key: registerFormProvider.formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Name is required';
                        if (value.length < 3) return 'Name is too short';
                        return null; //* Valid
                      },
                      onChanged: (value) => registerFormProvider.name = value,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Email is required';
                        if (!EmailValidator.validate(value)) return 'Email not valid';
                        return null; //* Valid
                      },
                      onChanged: (value) => registerFormProvider.email = value,
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
                      onChanged: (value) => registerFormProvider.password = value,
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
                      text: 'Sign Up',
                      onPressed: () {
                        registerFormProvider.validateForm();
                      },
                    ),
                    const SizedBox(height: 20.0,),
                    LinkText(
                      text: 'Log In',
                      onTap: () {
                        NavigationService.pushNamed(Routes.loginRoute);
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

