import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nexlab_assignment/configs/styles/app_color.dart';
import 'package:nexlab_assignment/configs/styles/app_style.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_bloc.dart';
import 'package:nexlab_assignment/features/home/presentation/bloc/home_state_event.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/confirm_delete_contact.dart';
import 'package:nexlab_assignment/features/home/presentation/widgets/contact_bottom_sheet.dart';
import 'package:nexlab_assignment/features/login/data/model/contact_user_model.dart';
import 'package:nexlab_assignment/utils/random_color/random_color_util.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.contact});
  final ContactUserModel contact;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(contact.phoneNumber.toString()),
      background: _slideRightBackground(),
      secondaryBackground: _slideLeftBackground(),
      confirmDismiss: (direction) async {

        // Swipe from right to left to delete contact
        if (direction == DismissDirection.endToStart) {

          // Cofirm delete contact Dialog
          showDialog(
            context: context,
            builder: (ctx) {
              return ConfirmDeleteContact(
                contact: contact,
                parentContext: context,
              );
            },
          );
        }
        
        // Swipe from left to right to edit contact
        else if (direction == DismissDirection.startToEnd) {

          // Edit contact bottom sheet
          showModalBottomSheet(
            context: context,
            builder: (_) {
              return ContactBottomSheet(
                isEdit: true,
                name: contact.name,
                phoneNumber: contact.phoneNumber,
                onPressSaveButton: (newContact) {
                  context
                      .read<HomeBloc>()
                      .add(UpdateContactEvent(contact, newContact));
                },
              );
            },
          );
        } else {
          return false;
        }
        return null;
      },
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          // Open Default Calling app with phone number
          launchUrlString("tel:${contact.phoneNumber}");
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColor.greyBorder),
          ),
          child: Row(
            children: [
              
              // Avatar with Abbreviate name
              CircleAvatar(
                backgroundColor: RandomColorUtil.randomColor(),
                radius: 20,
                child: Text(
                  _getAbbreviateName(contact.name ?? ""),
                  style: AppStyle.boldStyle(color: Colors.white),
                ),
              ),

              const SizedBox(width: 8),

              // Contact name and phone number
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      contact.name ?? "",
                      style: AppStyle.boldStyle(fontWeight: FontWeight.w600),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      contact.phoneNumber ?? "",
                      style: AppStyle.regularStyle(),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              Icon(Icons.call, color: Colors.black.withOpacity(0.3)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _slideRightBackground() {
    return Container(
      color: AppColor.greenBackground,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(16.0),
      child: const Icon(Icons.edit, color: Colors.white),
    );
  }

  Widget _slideLeftBackground() {
    return Container(
      color: AppColor.primaryColor,
      padding: const EdgeInsets.all(16.0),
      alignment: Alignment.centerRight,
      child: const Icon(Icons.delete, color: Colors.white),
    );
  }

  String _getAbbreviateName(String name) {
    List<String> words = name.split(' ');
    String id = '';

    // Get 2 first character separated by space
    for (int i = 0; i < words.length; i++) {
      if (words[i].isNotEmpty) {
        id += words[i].substring(0, 1).toUpperCase();
      }
      if (id.length == 2) {
        break;
      }
    }
    return id;
  }
}
