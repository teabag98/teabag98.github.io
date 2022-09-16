import 'package:auto_size_text/auto_size_text.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:fl_discover_dashboard/core/data/network/network_service.dart';
import 'package:fl_discover_dashboard/core/platform/locator.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/core/presentation/widgets/buttons/app_button.dart';
import 'package:fl_discover_dashboard/features/authentication/data/auth_remote_data_source.dart';
import 'package:fl_discover_dashboard/features/authentication/presentation/login.dart';
import 'package:fl_discover_dashboard/features/categories/presentation/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController phone;
  late TextEditingController firstName;
  late TextEditingController middleName;
  late TextEditingController thirdName;
  late TextEditingController email;
  late TextEditingController contact;
  late TextEditingController password;

  @override
  void initState() {
    phone = TextEditingController();
    firstName = TextEditingController();
    middleName = TextEditingController();
    thirdName = TextEditingController();
    email = TextEditingController();
    contact = TextEditingController();
    password = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }

  String flagPath = '';
  Country? _selectedCountry;
  final _focusNode = FocusNode();
  final storage = const FlutterSecureStorage();

  Widget _buildCountryDialogItem(Country country, SizeConfig sc) => Padding(
        padding: EdgeInsets.all(sc.heightScaledSize(8)),
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(width: sc.heightScaledSize(16)),
            Flexible(
              child: Text(
                country.name,
                style: sc.body1Theme.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );

  void _openCountryPickerDialog(SizeConfig sc) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          titlePadding: EdgeInsets.all(sc.heightScaledSize(8)),
          searchInputDecoration: const InputDecoration(hintText: 'Search...'),
          // isSearchable: true,
          title: Text(
            'Select your country',
            style: sc.h4Theme.copyWith(
              color: Colors.white,
            ),
          ),
          onValuePicked: (Country country) {
            //  onCountrySelected(country.phoneCode);
            flagPath =
                CountryPickerUtils.getFlagImageAssetPath(country.isoCode);
            setState(() => _selectedCountry = country);
          },

          itemBuilder: (item) => _buildCountryDialogItem(item, sc),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: AutoSizeText(
            "Create Account",
            style: GoogleFonts.andika(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.grey.withOpacity(0.05),
          actions: const []),
      body: Container(
        width: sc.screenWidth,
        height: sc.screenHeight,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
              elevation: 10,
              child: Container(
                width: sc.screenWidth * 0.9,
                height: sc.screenHeight * 0.8,
                padding: const EdgeInsets.all(15),
                color: Colors.white.withOpacity(0.1),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: firstName,
                            decoration: const InputDecoration(
                              labelText: "owner name",
                              border: OutlineInputBorder(),
                              hintText: 'business owner',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: thirdName,
                            decoration: const InputDecoration(
                              labelText: "business name",
                              border: OutlineInputBorder(),
                              hintText: 'business name',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: email,
                            decoration: const InputDecoration(
                              labelText: "email",
                              border: OutlineInputBorder(),
                              hintText: 'joedoe@gmail.com',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: phone,
                            decoration: const InputDecoration(
                              labelText: "phone number",
                              border: OutlineInputBorder(),
                              hintText: 'format 254 XXX XXX XXX',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextField(
                            controller: password,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: "password",
                              border: OutlineInputBorder(),
                              hintText: 'enter a strong password',
                            ),
                          ),
                        ),
                        AppButton(
                            label: "SignUp",
                            fontColor: Colors.white,
                            onTap: () {
                              // await sl.get<AutheRemoteDataSource>().signup(
                              //     email: email.text,
                              //     contact: contact.text,
                              //     firstName: firstName.text,
                              //     middleName: middleName.text,
                              //     lastName: thirdName.text,
                              //     password: password.text);
                              // if (user.accessToken != null) {
                              //   await storage.write(
                              //       key: 'token', value: user.accessToken);
                              //   Logger().d(user.accessToken);
                              Get.to(const Categories());
                              // }
                              // Logger().e(user.message);
                            }),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => const Login()));
                            },
                            child: const AutoSizeText("Have account? Login"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
