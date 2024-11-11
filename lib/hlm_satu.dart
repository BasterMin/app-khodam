import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toas/utils/widgets/image_dir.dart';
import 'hlm_dua.dart';

class HalamanSatu extends StatefulWidget {
  const HalamanSatu({super.key});

  @override
  State<HalamanSatu> createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Khodam',
          style: GoogleFonts.taiHeritagePro(
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>
                    const HalamanDua()));
          },
          icon: const Icon(Icons.gpp_bad_outlined,
          color: Colors.red,
          size: 40,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(ImageDir.satu,
              width: 280,
              height: 240,)
            ),
            Container(
              padding: const EdgeInsets.only(  top: 88, left: 30, right: 30),
              child: const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Nama Kohodam",
                    border: OutlineInputBorder()
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25, left: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    Fluttertoast.showToast(msg: "Khodam Eby: Katanya, Tahun ini Futia maba S-3",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    timeInSecForIosWeb: 6,
                    fontSize: 20,);

                  },style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffd92727)
                  ),
                    child: const Text("Cek Khodam",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}

/*actions: [
          IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> UploadFile()));
          },
            icon: const Icon(Icons.upload_file),)
        ],*/
