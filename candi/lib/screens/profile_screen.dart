import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = true;
  String fullName = 'Inaya Yeltama';
  String userName = 'inayaayt';
  int favoriteCandiCount = 0;

  //  TODO : 5. Implementasi fungsi SignIn
  void SignIn(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // TODO: 6. Implementasi fungsi SignOut
  void signout(){
    setState((){
    isSignedIn = !isSignedIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO: 2. Buat bagian Profile Header (isinya gambar profil)
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple[50],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                // TODO: 3. Buat bagian Profile Info (isinya info profil)
                // Baris 1 Pengguna
                const SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lock,
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Pengguna',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $userName',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                // Baris 2 Nama
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person,
                            color: Colors.blue,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Nama',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $fullName',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    if (isSignedIn) const Icon(Icons.edit),
                  ],
                ),
                // Baris 3 Favorite
                const SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Favorite',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $favoriteCandiCount',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                // TODO: 4. Buat bagian Profile Action (isinya tombol signin/signout)
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.deepPurple[100],
                ),
                const SizedBox(
                  height: 4,
                ),
                isSignedIn
                    ? TextButton(
                        onPressed: signout,
                        child: const Text('Sign Out'),
                      )
                    : TextButton(
                        onPressed: SignIn,
                        child: const Text('Sign In'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
