
import 'package:adstackstest/model/project.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ProjectWidgets(BuildContext context , ProjectModel data){
  var hi = MediaQuery.of(context).size.height;
  var we = MediaQuery.of(context).size.width;
  return   Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: we*0.3,
      height: hi*0.07,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SizedBox(
            height: hi*0.04,
            width: we*0.025,
            child: ClipRRect(
              child: Image.asset('assets/images/te.jpg',fit: BoxFit.fill,),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          SizedBox(width: we*0.01,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title,style: TextStyle(
                  color: Colors.white
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(data.subtitle,style: TextStyle(
                      color: Colors.white
                  ),),
                  // Text("See project details",style: TextStyle(
                  //     color: Colors.white
                  // ),),
                  // SizedBox(width:we*0.05),
                  Icon(Icons.edit,color:  Colors.white,
                    size: 20,)
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}