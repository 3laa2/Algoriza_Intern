import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';


class ReusablePhoneContainer extends StatelessWidget {
  const ReusablePhoneContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.grey, width: 2.0)),
      child: Row(
        children: [
          Container(
            child: CountryCodePicker(
              onChanged: print,

              initialSelection: 'SA',
              favorite: ['+20', 'EG'],
              // optional. Shows only country name and flag
              showCountryOnly: false,
              // optional. Shows only country name and flag when popup is closed.
              showOnlyCountryWhenClosed: false,
              showFlagMain: false,
              showFlagDialog: true,
              // optional. aligns the flag and the Text left
              alignLeft: false,
            ),
          ),
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Eg. 01114006820',
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                return (value != null && value.contains('@'))
                    ? 'Do not use the @ char.'
                    : null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
