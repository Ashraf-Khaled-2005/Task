import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/core/util/imagepicker.dart';
import 'package:task/core/widget/customimage.dart';
import 'package:task/core/widget/CustomTextField.dart';
import 'package:task/data/UserModel.dart';

import '../../../core/widget/checkBox.dart';
import '../../../core/widget/cusotmId.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController dateController;
  late var oldimage;
  late UserModel user;
  @override
  void initState() {
    // TODO: implement initState
    final args = Get.arguments;
    user = args['user'] as UserModel;
    oldimage = user.image;
    ismaleSelected = user.genger == "male";
    nameController = TextEditingController(text: user.name);
    emailController = TextEditingController(text: user.email);
    phoneController = TextEditingController(text: user.phone);
    dateController = TextEditingController(text: user.date);
    super.initState();
  }

  bool ismaleSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Icon(Icons.arrow_back, size: 28),
              ),
              const SizedBox(height: 8),
              const Text(
                'My Profile',
                style: TextStyle(
                  color: Color(0xFFF4B5A4),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImage(image: user.image),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4B5A4),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        icon: Icon(Icons.camera_alt,
                            size: 20, color: Colors.white),
                        onPressed: () async {
                          var fileimage = await PickerHandle.PickImageGallery();
                          if (fileimage != null) {
                            String imageurl = await PickerHandle.Getimgaeurl(
                                user.id.toString(), fileimage, 'images');
                            setState(() {
                              user.image = imageurl;
                            });
                          }
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                color: AppColors.salmon,
                child: Column(
                  children: [
                    Text(
                      user.name,
                      style: TextStyle(
                          fontSize: 28,
                          color: AppColors.orangeDark,
                          fontWeight: FontWeight.bold),
                    ),
                    CustomIDText(id: 5),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ProfileField(
                  label: 'Full Name',
                  hint: user.name,
                  controller: nameController),
              ProfileField(
                  label: 'Email',
                  hint: user.email,
                  controller: emailController),
              ProfileField(
                  label: 'Mobile Number',
                  hint: user.phone,
                  controller: phoneController),
              ProfileField(
                  label: 'Date Of Birth',
                  hint: user.date,
                  controller: dateController),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Gender',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              ismaleSelected = !ismaleSelected;
                            });
                          },
                          child: GenderBox(
                              text: 'Male', selected: ismaleSelected))),
                  const SizedBox(width: 16),
                  Expanded(
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              ismaleSelected = !ismaleSelected;
                            });
                          },
                          child: GenderBox(
                              text: 'Female', selected: !ismaleSelected))),
                ],
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    checkdifference();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF4B5A4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Update Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void checkdifference() async {
    var gender = ismaleSelected ? "male" : "female";
    if (nameController.text != user.name ||
        emailController.text != user.email ||
        phoneController.text != user.phone ||
        dateController.text != user.date ||
        user.image != oldimage ||
        gender != user.genger) {
      // Logic to handle the difference
      await updateUserProfileInFirebase();
      print("Profile has been updated");
    } else {
      print("No changes made to the profile");
    }
  }

  Future<void> updateUserProfileInFirebase() async {
    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc('3SILLOiQ50oo2Odq7Gr6') // assuming user.id is the doc ID
          .update({
        'Name': nameController.text,
        'email': emailController.text,
        'mobile': phoneController.text,
        'date': dateController.text,
        'genger': ismaleSelected ? 'male' : 'female',
        'image': user.image,
      });

      Get.snackbar('Success', 'Profile updated successfully',
          backgroundColor: Colors.green, colorText: Colors.white);
    } catch (e) {
      Get.snackbar('Error', 'Failed to update: $e',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
