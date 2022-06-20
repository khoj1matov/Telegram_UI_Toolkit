import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';
import 'package:telegramuitoolkit/view/auth/auth_cubit.dart';
import 'package:telegramuitoolkit/view/auth/auth_state.dart';

class AuthView extends StatelessWidget {
  AuthView({Key? key}) : super(key: key);

  TextEditingController controller = TextEditingController(text: '+1');
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            TextButton(
              child: Text('Next'.tr()),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/cart',
                  (route) => false,
                );
              },
            ),
          ],
        ),
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {},
          builder: (context, state) {
            controller.text = context.watch<AuthCubit>().phoneCityCode;
            return Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                children: [
                  Text('Your Phone'.tr(), style: const TextStyle(fontSize: 30)),
                  const SizedBox(height: 17),
                  SizedBox(
                    height: 38,
                    width: 250,
                    child: Text(
                      'P_c_y_c_c_a_e_y_p_n'.tr(),
                      style: MyTextStyleComp.myTextStyle(
                        color: ColorConst.colorBlack,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: DropdownButton<String>(
                      value: context.watch<AuthCubit>().selectedLocation,
                      hint: Text(context.watch<AuthCubit>().selectedLocation),
                      onChanged: (v) => context.read<AuthCubit>().valueDrop(v!),
                      items: <String>['USA', 'RUS', 'UZB'].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.225,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: controller,
                          onChanged: (v) {
                            context.read<AuthCubit>().phoneCityCode = v;
                            context.read<AuthCubit>().codeCity(v);
                          },
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.725,
                        child: TextFormField(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24.5),
                  Padding(
                    padding: const EdgeInsets.only(right: 17, ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sync_Contacts'.tr(),
                          style: MyTextStyleComp.myTextStyle(fontSize: 17),
                        ),
                        CupertinoSwitch(
                          value: context.watch<AuthCubit>().syncCont,
                          onChanged: (v) {
                            context.read<AuthCubit>().syncContacts(v);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
