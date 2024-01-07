import 'package:flutter/material.dart';
import 'package:itc_ui/utils/check_box.dart';
import 'package:itc_ui/utils/color.dart';
import 'package:itc_ui/utils/radio_box.dart';
import 'package:itc_ui/utils/size.dart';
import 'package:itc_ui/utils/string.dart';

class DefinedSheet{

  //Filter Bottom Sheet

  void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  AppStrings.filterBy,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColor.colorNavyBlue
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 320,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          CustomCheckBox()
                          ],
                        );
                      })
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(child: ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColor.colorNavyBlue),
                        fixedSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),),),
                      child: const Text(AppStrings.apply,style: TextStyle(fontSize: AppFontSize.textLarge,color: AppColor.colorWhite),),
                    )
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //Sort Bottom Sheet

  void showSortBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          //padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  AppStrings.sortBy,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.colorNavyBlue
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                color: Colors.grey[300],
                child: const RadioExample(),
              ),
            ],
          ),
        );
      },
    );
  }

  //Content Bottom Sheet

  void contentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
              color: AppColor.blueLight,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(AppStrings.audited,style: TextStyle(color: AppColor.colorNavyBlue),),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(AppStrings.more),
                            Expanded(
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "0",
                                  // Your hint text
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(AppStrings.less),
                            Expanded(
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "0",
                                  hintStyle: TextStyle(),
                                  // Your hint text
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(AppStrings.eligible),
                            Expanded(
                              child: TextFormField(
                                textAlign: TextAlign.right,
                                style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "0",
                                  hintStyle: TextStyle(),
                                  // Your hint text
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
                        child: Text(AppStrings.remarks,style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.textLarge),),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(AppColor.strokeColor),
                                fixedSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                                  ),),),
                              child: const Text(AppStrings.submit,style: TextStyle(fontSize: AppFontSize.textLarge,color: AppColor.disabledText),),
                            )
                            ),
                            const SizedBox(width: 10,),
                            TextButton(onPressed: (){Navigator.pop(context);}, child: const Text(AppStrings.cancel,style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.colorNavyBlue,fontSize: AppFontSize.textLarge),))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  // Salvage bottom sheet

  void salvageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
              color: AppColor.blueLight,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12))),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(AppStrings.salvage,style: TextStyle(color: AppColor.colorNavyBlue),),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*.25,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(AppStrings.quantity),
                                    const SizedBox(width: 20,),
                                    Expanded(
                                      child: TextFormField(
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "0",
                                          // Your hint text
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(AppStrings.uom),
                                    const SizedBox(width: 20,),
                                    Expanded(
                                      child: TextFormField(
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "0",
                                          hintStyle: TextStyle(),
                                          // Your hint text
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(AppStrings.rate),
                                    const SizedBox(width: 20,),
                                    Expanded(
                                      child: TextFormField(
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "0",
                                          hintStyle: TextStyle(),
                                          // Your hint text
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(AppStrings.value),
                                    const SizedBox(width: 20,),
                                    Expanded(
                                      child: TextFormField(
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: AppFontSize.textExtraUltraLarge),
                                        keyboardType: TextInputType.number,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "0",
                                          hintStyle: TextStyle(),
                                          // Your hint text
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0,top: 20.0),
                        child: Text(AppStrings.remarks,style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.textLarge),),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(child: ElevatedButton(
                              onPressed: (){},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(AppColor.strokeColor),
                                fixedSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                                  ),),),
                              child: const Text(AppStrings.submit,style: TextStyle(fontSize: AppFontSize.textLarge,color: AppColor.disabledText),),
                            )
                            ),
                            const SizedBox(width: 10,),
                            TextButton(onPressed: (){Navigator.pop(context);}, child: const Text(AppStrings.cancel,style: TextStyle(color: AppColor.colorNavyBlue,fontWeight: FontWeight.bold,fontSize: AppFontSize.textLarge),))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}