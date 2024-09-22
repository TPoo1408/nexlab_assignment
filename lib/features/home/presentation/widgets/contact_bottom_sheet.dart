import 'package:flutter/material.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/shared/presentation/widgets/m_text_field.dart';

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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          // To avoid the keyboard overlapping the bottom sheet
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [
            Text(
              widget.isEdit ? "Edit Contact" : "Add Contact",
              style: AppStyle.boldStyle(
                  fontWeight: FontWeight.w500, fontSize: 18),
            ),
    
            // Name TextField
            MTextField(
              controller: nameController,
              hintText: "Name",
              maxLines: 1,
              labelText: "Name",
              textInputAction: TextInputAction.next,
            ),
    
            const SizedBox(height: 8),
    
            // Phone Number TextField
            MTextField(
              controller: phoneNumberController,
              hintText: "Phone number",
              maxLines: 1,
              labelText: "Phone number",
              keyboardType: TextInputType.number,
            ),
    
            const SizedBox(height: 16),
    
            // Save Button
            GestureDetector(
              onTap: () {
                // Pass the new contact to the parent widget
                widget.onPressSaveButton?.call(
                  ContactUserModel(
                    name: nameController.text,
                    phoneNumber: phoneNumberController.text,
                  ),
                );
              },
              child: Container(
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.greyBorder, width: 1),
                    color: AppColor.primaryColor),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Text(
                  widget.isEdit ? "Save" : "Add",
                  style: AppStyle.regularStyle(
                      fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
