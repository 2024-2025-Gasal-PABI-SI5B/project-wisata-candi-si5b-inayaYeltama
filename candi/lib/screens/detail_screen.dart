import 'package:candi/models/candi.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // DETAIL HEADER
          // Image Utama
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Tombol Back Custom
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context); // Add navigation functionality
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),
          // DETAIL INFO
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // info atas
                const SizedBox(height: 16,),
                Row(
                  children:[
                    Text(candi.name),
                    IconButton(onPressed: (){},
                     icon: const Icon(Icons.favorite_border)),
                  ],
                )
                // info tengah 
                //info bawah)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
