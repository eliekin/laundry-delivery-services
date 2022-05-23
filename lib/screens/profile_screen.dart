import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil', style: TextStyle(color: Colors.white)),
          elevation: 0.0,
        // actions: [
        //   Icon(Icons.notifications,color: Colors.white,)
        // ],
        ),
        body: Container(
         margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(children: [
                    Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://cdn.now.howstuffworks.com/media-content/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-640-360.jpg')
                                    )
                                    )
                                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.blue),
                              color: Colors.white),
                          child: Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                        ))
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                buildTextField('Nom Complet', 'Peter Kinahwa', false),
                buildTextField('Numero de Telephone', '+243 **********', false),
                buildTextField('Mot de Pass', '********', true),
                buildTextField('Addresse',
                    'Goma, derrire Brasimba Rond-point Tshukudu', false),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'ANNULER',
                          style: TextStyle(fontSize: 15,letterSpacing: 2, color: Colors.black),
                        ),
                        style: OutlinedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 20),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        ),
                       ElevatedButton(
                         onPressed: () {}, 
                         child: Text('ENREGISTRE',
                         style: TextStyle(
                           fontSize: 15,
                           letterSpacing: 2,
                           color: Colors.white
                         ),),
                         style: ElevatedButton.styleFrom(
                           primary: Colors.blue,
                           padding: EdgeInsets.symmetric(horizontal: 20),
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                         ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget buildTextField(
      String labelText, String placeHolder, bool isPasswordTextField) {
    return Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: TextField(
          obscureText: isPasswordTextField ? isObscurePassword : false,
          decoration: InputDecoration(
              suffix: isPasswordTextField
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye, color: Colors.blue))
                  : null,
              contentPadding: EdgeInsets.only(bottom: 5),
              labelText: labelText,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: placeHolder,
              hintStyle: (TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey))),
        ));
  }
}
