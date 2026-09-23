import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Registration',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const StudentRegistrationScreen(),
    );
  }
}

class StudentRegistrationScreen extends StatefulWidget {
  const StudentRegistrationScreen({super.key});

  @override
  State<StudentRegistrationScreen> createState() =>
      _StudentRegistrationScreenState();
}

class _StudentRegistrationScreenState
    extends State<StudentRegistrationScreen> {
  // Form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController _nameController =
      TextEditingController();

  final TextEditingController _emailController =
      TextEditingController();

  final TextEditingController _studentIdController =
      TextEditingController();

  final TextEditingController _passwordController =
      TextEditingController();

  // Department
  String? selectedDepartment;

  final List<String> departments = [
    'Computer Science',
    'Software Engineering',
    'Information Technology',
    'Electrical Engineering',
    'Business Administration',
  ];

  // Successful registration data
  bool isSubmitted = false;

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isSubmitted = true;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Registration submitted successfully!',
          ),
        ),
      );
    }
  }

  void resetForm() {
    _formKey.currentState!.reset();

    _nameController.clear();
    _emailController.clear();
    _studentIdController.clear();
    _passwordController.clear();

    setState(() {
      selectedDepartment = null;
      isSubmitted = false;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _studentIdController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Registration'),

        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),

            onSelected: (value) {
              if (value == 'reset') {
                resetForm();
              }
            },

            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'reset',
                child: Text('Reset Form'),
              ),
            ],
          ),
        ],
      ),

      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20),

              child: Form(
                key: _formKey,

                child: orientation == Orientation.portrait
                    ? buildPortraitLayout()
                    : buildLandscapeLayout(),
              ),
            );
          },
        ),
      ),
    );
  }

  // ----------------------------------------------------------
  // Portrait Layout
  // ----------------------------------------------------------

  Widget buildPortraitLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildHeader(),

        const SizedBox(height: 25),

        buildNameField(),

        const SizedBox(height: 16),

        buildEmailField(),

        const SizedBox(height: 16),

        buildStudentIdField(),

        const SizedBox(height: 16),

        buildPasswordField(),

        const SizedBox(height: 16),

        buildDepartmentSelector(),

        const SizedBox(height: 25),

        buildActionButtons(),

        if (isSubmitted) ...[
          const SizedBox(height: 25),
          buildSuccessSummary(),
        ],
      ],
    );
  }

  // ----------------------------------------------------------
  // Landscape Layout
  // ----------------------------------------------------------

  Widget buildLandscapeLayout() {
    return Column(
      children: [
        buildHeader(),

        const SizedBox(height: 25),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  buildNameField(),
                  const SizedBox(height: 16),
                  buildEmailField(),
                ],
              ),
            ),

            const SizedBox(width: 20),

            Expanded(
              child: Column(
                children: [
                  buildStudentIdField(),
                  const SizedBox(height: 16),
                  buildPasswordField(),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        buildDepartmentSelector(),

        const SizedBox(height: 25),

        buildActionButtons(),

        if (isSubmitted) ...[
          const SizedBox(height: 25),
          buildSuccessSummary(),
        ],
      ],
    );
  }

  // ----------------------------------------------------------
  // University Logo and Header
  // ----------------------------------------------------------

  Widget buildHeader() {
    return Column(
      children: [
        Image.asset(
          'assets/images/university_logo.png',
          width: 110,
          height: 110,
          fit: BoxFit.contain,

          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.account_balance,
              size: 100,
            );
          },
        ),

        const SizedBox(height: 12),

        const Text(
          'University Student Registration',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          'Create your student account',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  // ----------------------------------------------------------
  // Name Field
  // ----------------------------------------------------------

  Widget buildNameField() {
    return TextFormField(
      controller: _nameController,

      decoration: const InputDecoration(
        labelText: 'Full Name',
        hintText: 'Enter your full name',
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
      ),

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter your full name';
        }

        if (value.trim().length < 3) {
          return 'Name must contain at least 3 characters';
        }

        return null;
      },
    );
  }

  // ----------------------------------------------------------
  // Email Field
  // ----------------------------------------------------------

  Widget buildEmailField() {
    return TextFormField(
      controller: _emailController,

      keyboardType: TextInputType.emailAddress,

      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'example@university.com',
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(),
      ),

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter your email';
        }

        final emailPattern =
            RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

        if (!emailPattern.hasMatch(value.trim())) {
          return 'Please enter a valid email';
        }

        return null;
      },
    );
  }

  // ----------------------------------------------------------
  // Student ID Field
  // ----------------------------------------------------------

  Widget buildStudentIdField() {
    return TextFormField(
      controller: _studentIdController,

      decoration: const InputDecoration(
        labelText: 'Student ID',
        hintText: 'Enter your student ID',
        prefixIcon: Icon(Icons.badge),
        border: OutlineInputBorder(),
      ),

      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please enter your student ID';
        }

        if (value.trim().length < 3) {
          return 'Student ID is too short';
        }

        return null;
      },
    );
  }

  // ----------------------------------------------------------
  // Password Field
  // ----------------------------------------------------------

  Widget buildPasswordField() {
    return TextFormField(
      controller: _passwordController,

      obscureText: true,

      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        prefixIcon: Icon(Icons.lock),
        border: OutlineInputBorder(),
      ),

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a password';
        }

        if (value.length < 6) {
          return 'Password must contain at least 6 characters';
        }

        return null;
      },
    );
  }

  // ----------------------------------------------------------
  // Department PopupMenuButton
  // ----------------------------------------------------------

  Widget buildDepartmentSelector() {
    return InputDecorator(
      decoration: const InputDecoration(
        labelText: 'Department',
        prefixIcon: Icon(Icons.school),
        border: OutlineInputBorder(),
      ),

      child: PopupMenuButton<String>(
        initialValue: selectedDepartment,

        onSelected: (String department) {
          setState(() {
            selectedDepartment = department;
          });
        },

        itemBuilder: (context) {
          return departments.map((department) {
            return PopupMenuItem<String>(
              value: department,
              child: Text(department),
            );
          }).toList();
        },

        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedDepartment ??
                    'Select your department',
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

  // ----------------------------------------------------------
  // Submit and Reset Buttons
  // ----------------------------------------------------------

  Widget buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: FilledButton.icon(
            onPressed: submitForm,
            icon: const Icon(Icons.check),
            label: const Text('Submit'),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: OutlinedButton.icon(
            onPressed: resetForm,
            icon: const Icon(Icons.refresh),
            label: const Text('Reset'),
          ),
        ),
      ],
    );
  }

  // ----------------------------------------------------------
  // Success Summary
  // ----------------------------------------------------------

  Widget buildSuccessSummary() {
    return Card(
      elevation: 3,

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  size: 30,
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Text(
                    'Registration Successful',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const Divider(height: 25),

            Text(
              'Name: ${_nameController.text}',
            ),

            const SizedBox(height: 8),

            Text(
              'Email: ${_emailController.text}',
            ),

            const SizedBox(height: 8),

            Text(
              'Student ID: ${_studentIdController.text}',
            ),

            const SizedBox(height: 8),

            Text(
              'Department: ${selectedDepartment ?? "Not selected"}',
            ),
          ],
        ),
      ),
    );
  }
}
