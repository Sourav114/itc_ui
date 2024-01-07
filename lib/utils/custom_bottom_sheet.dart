import 'package:flutter/material.dart';
import 'package:itc_ui/utils/size.dart';
import 'package:itc_ui/utils/string.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(AppStrings.audited),
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
                          style: const TextStyle(fontSize: AppFontSize
                              .textExtraUltraLarge),
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
                          style: const TextStyle(fontSize: AppFontSize
                              .textExtraUltraLarge),
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
                          style: const TextStyle(fontSize: AppFontSize
                              .textExtraUltraLarge),
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
                  padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Text(AppStrings.remarks),
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
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.grey[300]),
                          fixedSize: MaterialStateProperty.all(
                              const Size.fromHeight(60.0)),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius as needed
                            ),),),
                        child: const Text(AppStrings.submit, style: TextStyle(
                            fontSize: AppFontSize.textLarge,
                            color: Colors.grey),),
                      )
                      ),
                      const SizedBox(width: 10,),
                      TextButton(onPressed: () {
                        Navigator.pop(context);
                      }, child: const Text(AppStrings.cancel))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}