import 'package:flutter/material.dart';
import 'package:flutter_alin/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isEditing = false;

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _submitForm() {
    setState(() {
      _isEditing = false; // Disable editing mode
    });
    // Perform save action (backend logic can be added here)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'PlusJakarta',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(243, 82, 13, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'image/detail-artikel-2.png',
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(82.5),
                    ),
                  ),
                  const SizedBox(height: 20),
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 300),
                    left: _isEditing ? MediaQuery.of(context).size.width : 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: _isEditing ? 0.0 : 1.0,
                          child: SizedBox(
                            width: 105,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: _toggleEditing,
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(243, 82, 13, 1),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  fontFamily: 'PlusJakarta',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: _isEditing ? 0.0 : 1.0,
                          child: SizedBox(
                            width: 105,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(255, 0, 0, 1),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                  fontFamily: 'PlusJakarta',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Detail Pribadi',
                      style: TextStyle(
                        fontFamily: 'PlusJakarta',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 82, 13, 1),
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Nama Depan',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText: 'Metiu',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Nama Tengah',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText: 'Gustino',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Nama Belakang',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText: 'Leviothniel',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Alamat',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText:
                                'Jl. Senam No.45, Kec. Tanah Sareal, Kota Bogor',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'Detail Akun',
                      style: TextStyle(
                        fontFamily: 'PlusJakarta',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(243, 82, 13, 1),
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Username',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText: 'MetinoNiel',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Kata Sandi',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText: '**************',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'PlusJakarta',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'PlusJakarta',
                          ),
                          enabled: _isEditing,
                          decoration: InputDecoration(
                            hintText: 'felix.tjuatja001@gmail.com',
                            border: UnderlineInputBorder(),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 300),
                          opacity: _isEditing ? 1.0 : 0.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 105,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: _toggleEditing,
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      Colors.white,
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontFamily: 'PlusJakarta',
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 105,
                                height: 30,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _submitForm(); // Submit form (UI only)
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      const Color.fromRGBO(243, 82, 13, 1),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                      fontFamily: 'PlusJakarta',
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
