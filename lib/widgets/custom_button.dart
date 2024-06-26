import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,this.onTap,this.isLoading=false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: primaryColor,
        ),
        child: Center(child:isLoading?const CircularProgressIndicator(color: Colors.black,) :const Text('Add',style: TextStyle(color: Colors.black,
        fontSize: 20,fontWeight: FontWeight.bold),)),
      
      ),
    );
  }
}
