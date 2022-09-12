import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:fl_discover_dashboard/core/platform/size_config.dart';
import 'package:fl_discover_dashboard/core/platform/themes.dart';
import 'package:fl_discover_dashboard/core/utilities/logging_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:flutter_sim_country_code/flutter_sim_country_code.dart';

import 'app_text_field_outlined.dart';

class AppNumberTextField extends StatefulWidget {
  final TextEditingController numberController;
  final ValueChanged<String> onCountrySelected;

  final ValueChanged<String>? onChanged;
  final bool isContactEntry;
  final bool isEnabled;
  final bool canChangeCountry;
  final Country? selectedCountry;
  final String? hintText;

  final ValueChanged<String>? onContactSelected;
  final Function(bool hasFocus)? onFocusChanged;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? titleStyle;

  final bool? hasTitle;
  final String? title;
  final Widget? titleIcon;

  final Decoration? decoration;

  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledborder;

  final EdgeInsetsGeometry padding;

  const AppNumberTextField({
    Key? key,
    required this.numberController,
    required this.onCountrySelected,
    this.onChanged,
    this.isContactEntry = false,
    this.isEnabled = true,
    this.canChangeCountry = true,
    this.selectedCountry,
    this.onContactSelected,
    this.onFocusChanged,
    this.textStyle,
    this.hintTextStyle,
    this.border,
    this.hintText = 'Phone Number',
    this.focusedBorder,
    this.enabledborder,
    this.padding = EdgeInsets.zero,
    this.decoration = const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      color: AppColors.greyLight,
    ),
    this.titleStyle,
    this.hasTitle,
    this.title,
    this.titleIcon,
  }) : super(key: key);

  @override
  _AppNumberTextFieldState createState() => _AppNumberTextFieldState();
}

class _AppNumberTextFieldState extends State<AppNumberTextField> {
  late Country _selectedCountry;

  final _focusNode = FocusNode();

  late TextEditingController numberController;

  String flagPath = '';

  @override
  void initState() {
    _selectedCountry = CountryPickerUtils.getCountryByIsoCode('KE');

    if (widget.selectedCountry?.name != null) {
      _selectedCountry = widget.selectedCountry!;
    } else {
      FlutterSimCountryCode.simCountryCode.then(
        (String? code) {
          _selectedCountry =
              CountryPickerUtils.getCountryByIsoCode(code ?? 'KE');

          logger.i(code);

          flagPath = CountryPickerUtils.getFlagImageAssetPath(code ?? 'KE');

          widget.onCountrySelected(_selectedCountry.phoneCode);
        },
      ).catchError((e) {
        logger.e(e);
        _selectedCountry = CountryPickerUtils.getCountryByIsoCode('KE');
        widget.onCountrySelected(_selectedCountry.phoneCode);
      });
    }

    _focusNode.addListener(() {
      widget.onFocusChanged?.call(_focusNode.hasFocus);
    });

    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

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
            widget.onCountrySelected(country.phoneCode);
            flagPath =
                CountryPickerUtils.getFlagImageAssetPath(country.isoCode);
            setState(() => _selectedCountry = country);
          },

          itemBuilder: (item) => _buildCountryDialogItem(item, sc),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Row(
        //   children: <Widget>[
        //     widget.hasTitle ? Text(widget.title, style: widget.titleStyle) : Container(),
        //   ],
        // ),
        // widget.hasTitle
        //     ? SizedBox(
        //         height: 1.0.h,
        //       )
        //     : Container(),
        Container(
          decoration: widget.decoration,
          // height: _sc.heightScaledSize(60),
          padding: EdgeInsets.symmetric(
            horizontal: _sc.heightScaledSize(16),
            // vertical: _sc.heightScaledSize(8),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: widget.canChangeCountry
                    ? () => _openCountryPickerDialog(_sc)
                    : null,
                child: SizedBox(
                  child: Row(
                    children: [
                      Container(
                        width: _sc.heightScaledSize(30),
                        height: _sc.heightScaledSize(20),
                        child: CountryPickerUtils.getDefaultFlagImage(
                          _selectedCountry,
                        ),
                      ),
                      SizedBox(width: _sc.heightScaledSize(8)),
                      Text(
                        '(+${_selectedCountry.phoneCode})',
                        style: _sc.body2Theme.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: _sc.heightScaledSize(8)),
                      if (widget.canChangeCountry)
                        const Icon(Icons.keyboard_arrow_down),
                      if (widget.canChangeCountry)
                        SizedBox(width: _sc.heightScaledSize(8)),
                    ],
                  ),
                ),
              ),
              Container(
                height: _sc.heightScaledSize(40),
                width: 1,
                color: Colors.white.withOpacity(0.6),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: _sc.heightScaledSize(16)),
                  child: AppTextFieldOutlined(
                    keyboard: TextInputType.number,
                    controller: widget.numberController,
                    onChanged: widget.onChanged,
                    enabled: widget.isEnabled,
                    focusNode: _focusNode,
                    textFieldStyle: widget.textStyle,
                    hintTextStyle: widget.hintTextStyle,
                    // focusedBorder: widget.focusedBorder,
                    // border: widget.enabledborder,
                    // enabledborder: widget.enabledborder,
                    hintText: widget.hintText,
                    // isHint: false,
                    // padding: widget.padding,
                    inputFormatters: [
                      LibPhonenumberTextFormatter(
                        country: CountryManager().countries.firstWhere(
                              (e) => e.phoneCode == _selectedCountry.phoneCode,
                              orElse: () => const CountryWithPhoneCode.us(),
                            ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
