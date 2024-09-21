import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/features/splash/presentation/widgets/m_text_field.dart';

class ContactBottomSheet extends StatefulWidget {
  const ContactBottomSheet(
      {super.key,
      this.phoneNumber,
      this.name,
      this.onPressSaveButton,
      this.isEdit = false});
  final String? phoneNumber;
  final String? name;
  final Function(ContactUserModel contact)? onPressSaveButton;
  final bool isEdit;

  @override
  State<ContactBottomSheet> createState() => _ContactBottomSheetState();
}

class _ContactBottomSheetState extends State<ContactBottomSheet> {
  final phoneNumberController = TextEditingController();

  final nameController = TextEditingController();

  @override
  void initState() {
    phoneNumberController.text = widget.phoneNumber ?? "";
    nameController.text = widget.name ?? "";
    super.initState();
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            Text(
              widget.isEdit ? "Edit Contact" : "Add Contact",
              style:
                  AppStyle.boldStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            MTextField(
              controller: nameController,
              hintText: "Name",
              maxLines: 1,
              labelText: "Name",
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 8),
            MTextField(
              controller: phoneNumberController,
              hintText: "Phone number",
              maxLines: 1,
              labelText: "Phone number",
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                widget.onPressSaveButton?.call(ContactUserModel(
                  name: nameController.text,
                  phoneNumber: phoneNumberController.text,
                ));
              },
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.greyBorder, width: 1),
                    color: AppColor.redBold),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  widget.isEdit ? "Save" : "Add",
                  style:
                      AppStyle.regularStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
