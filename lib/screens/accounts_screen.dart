import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_tree/screens/components/email_card.dart';

class Accounts extends StatelessWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset("assets/images/user.png",
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text('Accounts',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                    ],
                  ),
                  Icon(CupertinoIcons.xmark, size: 26,),


                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                child: Text('Add another account - so you can \n switch between them easily.',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey[500],
                    )),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your existing account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      )),
                  Text('Manage account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.orangeAccent,
                      )),
                ],
              ),
              EmailCard(name: "Panji Pradna", email: "Panjiperdana@mail.com",isExist: true, imageUrl: 'https://i.pinimg.com/736x/e6/84/3e/e6843ef090b127aa393ff4f5f2fe173c.jpg'),
              EmailCard(name: "Sulistyo Aji", email: "SistAji@mail.com",isExist: false, imageUrl: 'https://i.pinimg.com/564x/65/92/2e/65922e225f016ac436c2660bdc8205f2.jpg',numberOfNotification: "5"),
              EmailCard(name: "Astaru Lopez", email: "AsPez@mail.com",isExist: false, imageUrl: 'https://i.pinimg.com/736x/4a/5a/b1/4a5ab1e4099d4e182db3f4821029e5db.jpg',numberOfNotification: "10"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: MaterialButton(onPressed: (){},
                    color: Colors.indigo[700],
                    shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Add another',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),),
                        SizedBox(width: 8,),
                        Icon(CupertinoIcons.add,color: Colors.white,size: 28,),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
