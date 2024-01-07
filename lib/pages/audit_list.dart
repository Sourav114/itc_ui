import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itc_ui/utils/appbar.dart';
import 'package:itc_ui/utils/bottom_sheet.dart';
import 'package:itc_ui/utils/color.dart';
import 'package:itc_ui/utils/custom_bottom_sheet.dart';
import 'package:itc_ui/utils/size.dart';
import 'package:itc_ui/utils/string.dart';

class AuditList extends StatefulWidget {
  const AuditList({super.key});

  @override
  State<AuditList> createState() => _AuditListState();
}

class _AuditListState extends State<AuditList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(
                title: "Tobacco Vision Pvt. ltd.",
                subtitle: "493b, 3GT",
                previousScreen:"/upcoming",
                isIcon: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Colors.grey), // Customize the border
                              ),
                              hintText: "Search for SKUs in tobacco vision...",),
                          ),
                      ),
                      const SizedBox(width: 15,),
                      Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child:IconButton(
                          iconSize: 40,
                          color: Colors.grey[500],
                          onPressed:(){
                            DefinedSheet().showSortBottomSheet(context);
                          },
                          icon: const Icon(CupertinoIcons.arrow_up_arrow_down),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Stack(
                      children: [
                        Container(
                        height: 520,
                        child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, index){
                              return InkWell(
                                onTap: (){
                                  DefinedSheet().contentBottomSheet(context);
                                  //DefinedSheet().salvageBottomSheet(context);
                                },
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.grey[300],),
                                  padding: const EdgeInsets.all(10),
                                  margin:const EdgeInsets.symmetric(vertical: 5),
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("data1"),
                                      Text("data2"),
                                      Row(
                                        children: [
                                          Text("data3"),
                                          SizedBox(width: 10,),
                                          Text("data4")
                                        ],
                                      ),
                                      Text("data5")
                                    ],
                                  )
                                ),
                              );
                            }),
                      ),
                        Positioned(
                          bottom: 10,
                          right: 20,
                          child: FloatingActionButton(
                            onPressed: (){
                              DefinedSheet().showFilterBottomSheet(context);
                            },
                            backgroundColor: AppColor.colorNavyBlue,
                            shape: const CircleBorder(),
                            child:const Icon(Icons.filter_list,color: AppColor.colorWhite,size: 35,),
                          ),
                        ),
                      ]
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: ElevatedButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                            fixedSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                              ),),),
                          child: const Text(AppStrings.submit,style: TextStyle(fontSize: AppFontSize.textLarge,color: Colors.grey),),
                      )
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
