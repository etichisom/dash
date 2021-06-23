import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work/addproject/content.dart';
import 'package:work/addproject/document.dart';
import 'package:work/addproject/poblish.dart';

class Ap extends StatefulWidget {
  @override
  _AddPState createState() => _AddPState();
}

class _AddPState extends State<Ap> {
  int index = 0;
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Expanded(
              flex: 1,
                child: Container()),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Add Project',style: GoogleFonts.roboto(fontSize:20,color: Colors.blue[700],
                    fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Expanded(
                      child: Container(
                        child: Stepper(
                            type: StepperType.horizontal,
                            physics: BouncingScrollPhysics(),
                            currentStep: index,
                            onStepCancel: (){},
                            onStepContinue: (){},
                            onStepTapped: (i){
                              setState(() {
                                index=i;
                              });
                            },
                            steps: [
                              Step(title:Text('Content'), content:Container(
                                height: size.height,
                                  width: size.width,
                                  child: Content()),isActive: index==0?true:false),
                              Step(title:Text('Documentary'), content:Container(
                                  height: size.height-300,
                                  width: size.width,
                                  child: Doc()),isActive:index==1?true:false),
                              Step(title:Text('Category'), content: Text('pp'),isActive:index==2?true:false),
                              Step(title:Text('Publish'), content: Container(
                                  height: size.height-300,
                                  width: size.width,
                                  child:Publish()),isActive:index==3?true:false),

                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
                child: Container()),
          ],
        ),
      ),
    );
  }
}
