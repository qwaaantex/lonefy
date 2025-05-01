import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_bloc.dart';
import 'package:lonefy/Data/BLocs/Register/bloc/register_metrics.dart';
import 'package:lonefy/Data/Providers/Register/Provider.dart';
import 'package:lonefy/Interface/Routes/Router.gr.dart';
import 'package:lonefy/generated/l10n.dart';
import 'package:provider/provider.dart';

class RegisterChildrenElevatedButton extends StatelessWidget {
  const RegisterChildrenElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterInitial>(
      listener: (context, state) {
        if (state.succes) {
          context.router.navigate(HomeRoute());
        }
      },
      builder: (context, state) {
        return ElevatedButton.icon(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          onPressed: () async {
            final provider = context.read<RegisterProvider>();
            if (provider.keyLogin.currentState!.validate() &&
                provider.keyPassword.currentState!.validate()) {
              final provider = context.read<RegisterProvider>();
              BlocProvider.of<RegisterBloc>(context).add(
                RegisterSign(
                  email: provider.email,
                  password: provider.password,
                ),
              );
              provider.clearSigning();
            }
          },
          label: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              Intl.message(S.of(context).Register),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'lonefyBold',
              ),
            ),
          ),
          icon: Icon(
            CupertinoIcons.bolt_horizontal_circle_fill,
            color: Colors.black,
            size: 20,
          ),
        );
      },
    );
  }
}
