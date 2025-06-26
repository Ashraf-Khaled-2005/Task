import 'package:flutter/material.dart';
import 'package:task/core/const/AppColor.dart';
import 'package:task/core/widget/customimage.dart';
import 'package:task/core/widget/profileField.dart';

import '../../../core/widget/checkBox.dart';
import '../../../core/widget/cusotmId.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                  const CustomImage(),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4B5A4),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.camera_alt,
                        size: 20, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                color: AppColors.salmon,
                child: const Column(
                  children: [
                    Text(
                      'Madison Smith',
                      style: TextStyle(
                          fontSize: 28,
                          color: AppColors.orangeDark,
                          fontWeight: FontWeight.bold),
                    ),
                    CustomIDText(),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const ProfileField(label: 'Full Name', hint: 'Madison Smith'),
              const ProfileField(label: 'Email', hint: 'Madisons@Example.Com'),
              const ProfileField(label: 'Mobile Number', hint: '+123 4567 890'),
              const ProfileField(
                  label: 'Date Of Birth', hint: '01 / 04 / 199X'),
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
                  onPressed: () {},
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
}
