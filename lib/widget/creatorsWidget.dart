
import 'package:adstackstest/model/creators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CreatorsWidgets(BuildContext context , CreatorsModel data){
  var hi = MediaQuery.of(context).size.height;
  var we = MediaQuery.of(context).size.width;
   return  Padding(
     padding: const EdgeInsets.only(top: 8,bottom: 8),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Image.asset('assets/images/man.png',height: hi*0.04,),
         SizedBox(width: we*0.01,),
         SizedBox(
           width: we*0.08,
           child: Text('@maddison_c21',style: TextStyle(
               fontSize: we*0.01,
               color: Colors.grey
           ),),
         ),
         SizedBox(width: we*0.02,),
         SizedBox(
           width: we*0.04,
           child: Text(data.artWork,style: TextStyle(
               fontSize: we*0.01,
               color: Colors.grey
           ),),
         ),
         Spacer(),
         SizedBox(
           width: we*0.03,
           child: LinearProgressIndicator(
             borderRadius: BorderRadius.circular(16),
             color: Colors.red,
             backgroundColor: Colors.white,
             minHeight:10,
             value: data.rating,
           ),
         ),
         SizedBox(width: we*0.02,),
       ],
     ),
   );
}