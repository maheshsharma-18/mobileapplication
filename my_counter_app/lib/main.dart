import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const TokiTechApp());
}

class TokiTechApp extends StatelessWidget {
  const TokiTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toki Tech',
      theme: ThemeData(
        primaryColor: const Color(0xFF2F65EC), // The exact blue from design
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(), // Using Poppins font
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

// ======================= SCREEN 1: LOGIN =======================
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Language Button
              Align(
                alignment: Alignment.topRight,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Text("తెలుగు", style: TextStyle(color: Color(0xFF2F65EC))),
                ),
              ),
              const Spacer(),
              const Text("Welcome to", style: TextStyle(fontSize: 18, color: Colors.black87)),
              const SizedBox(height: 20),
              // LOGO
              Image.asset('assets/logo.png', height: 100, errorBuilder: (c, o, s) => const Text("Toki Logo Here", style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold))),
              const SizedBox(height: 10),
              // Made in India
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Made in ", style: TextStyle(color: Colors.grey)),
                  // Flag Icon (Using placeholder icon if image missing)
                  Container(
                    width: 24, height: 16,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter, end: Alignment.bottomCenter,
                        colors: [Colors.orange, Colors.white, Colors.green]
                      )
                    ),
                  )
                ],
              ),
              const Spacer(),
              // Mobile Input
              const Align(alignment: Alignment.centerLeft, child: Text("Enter your mobile number", style: TextStyle(fontSize: 14))),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "96897698768",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color(0xFF2F65EC))),
                ),
              ),
              const SizedBox(height: 20),
              // Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2F65EC),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text("Get OTP", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================= SCREEN 2: OTP VERIFICATION =======================
class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios, size: 16, color: Color(0xFF2F65EC)),
                  label: const Text("Back", style: TextStyle(color: Color(0xFF2F65EC), fontSize: 16)),
                ),
              ),
              const SizedBox(height: 40),
              const Text("Welcome to", style: TextStyle(fontSize: 16, color: Colors.black87)),
              const SizedBox(height: 5),
              const Text("Sunrise High School", style: TextStyle(fontSize: 24, color: Color(0xFF2F65EC), fontWeight: FontWeight.w600)),
              const SizedBox(height: 20),
              const Text("Powered by", style: TextStyle(fontSize: 12, color: Colors.grey)),
              Image.asset('assets/logo.png', height: 40, errorBuilder: (c, o, s) => const Icon(Icons.star, color: Colors.red)),
              const Spacer(),
              const Align(alignment: Alignment.centerLeft, child: Text("Enter OTP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
              const Align(alignment: Alignment.centerLeft, child: Text("OTP sent to 96897698768", style: TextStyle(fontSize: 12, color: Colors.grey))),
              const SizedBox(height: 15),
              TextField(
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, letterSpacing: 5),
                decoration: InputDecoration(
                  hintText: "6 4 3 5 6 4",
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Colors.grey)),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2F65EC),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text("Verify", style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              const SizedBox(height: 15),
              const Text("Resend OTP", style: TextStyle(color: Color(0xFF2F65EC), fontWeight: FontWeight.w500)),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================= SCREEN 3: DASHBOARD =======================
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Blue Header
            Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF2A60F5), Color(0xFF1E4BD1)],
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(8)),
                        child: const Text("A", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Aditya International School", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                          Text("Powered by Toki Tech", style: TextStyle(color: Colors.white70, fontSize: 10)),
                        ],
                      ),
                      Container(
                         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                         decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                         child: const Text("తెలుగు", style: TextStyle(fontSize: 10, color: Color(0xFF2F65EC))),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text("Saturday\nNovember 9, 2025", style: TextStyle(color: Colors.white70, fontSize: 12)),
                  const SizedBox(height: 10),
                  const Text("Dr. Ramesh Sharma", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  const Text("Principal", style: TextStyle(color: Colors.white70, fontSize: 12)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeaderStat("850", "Total Students"),
                      _buildHeaderStat("45", "Total Teachers"),
                      _buildHeaderStat("20", "Total Classes"),
                    ],
                  ),
                ],
              ),
            ),
            
            // Body Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Alert Box
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEBEE),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.red.shade200)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.warning_amber_rounded, color: Colors.red),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Cyclone Alert - School Closed", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87)),
                              SizedBox(height: 4),
                              Text("Due to severe cyclone warning, school will remain closed on Oct 21-22.", style: TextStyle(fontSize: 12, color: Colors.black54)),
                            ],
                          ),
                        ),
                        const Icon(Icons.close, size: 16, color: Colors.grey)
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Attendance Overview Card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: const [Icon(Icons.calendar_today, color: Colors.green, size: 20), SizedBox(width: 8), Text("Attendance Overview", style: TextStyle(fontWeight: FontWeight.w600))]),
                            Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(8)), child: const Text("Today", style: TextStyle(fontSize: 10, color: Colors.green))),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildStatItem("798", "Present", Colors.green),
                            _buildStatItem("52", "Absent", Colors.red),
                            _buildStatItem("94%", "Rate", Colors.black87),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text("View Details >", style: TextStyle(color: Color(0xFF2F65EC), fontSize: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Action Buttons Row
                  Row(
                    children: [
                      Expanded(child: _buildActionCard(Icons.calendar_month, "Take\nAttendance", Colors.green)),
                      const SizedBox(width: 16),
                      Expanded(child: _buildActionCard(Icons.star, "Upload\nGrades", Colors.purple)),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  // Approvals
                  _buildListTile("Pending Approvals", Icons.check_box_outlined, Colors.orange, "6"),
                  const SizedBox(height: 10),
                  // Tickets
                  _buildListTile("Tickets", Icons.description_outlined, Colors.red, "8"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF2F65EC),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.more_vert), label: "More"),
        ],
      ),
    );
  }

  Widget _buildHeaderStat(String value, String label) {
    return Column(
      children: [
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 10)),
      ],
    );
  }

  Widget _buildStatItem(String val, String label, Color color) {
    return Column(
      children: [
        Text(val, style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  Widget _buildActionCard(IconData icon, String title, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, Color color, String badge) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Icon(icon, color: color),
          const SizedBox(width: 12),
          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Text(badge, style: const TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}