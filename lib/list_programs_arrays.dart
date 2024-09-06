import 'package:student_potal_aup/data_model.dart';

List<String> favorites = [];

List<String> degrees = [
  'Bachelors',
  'Masters',
  'M.Sc (Hons)',
  'M.Phil',
  'MS',
  'Ph.D',
  'Diploma',
];
List<String> semesterNo = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12'
];

List<String> bachelorsList = [
  'Agribusiness Management',
  'Agricultural & Applied Economics',
  'Agriculture Chemistry',
  'Agriculture Economics',
  'Agriculture Mechanization',
  // 'Agriculture Extension Education and Communication',
  'Agronomy',
  'Animal Breeding & Genetics',
  'Animal Nutrition',
  'Artificial Intelligence',
  'BS Hons in Agriculture',
  'BS in Food Science & Technology',
  'Biochemistry',
  'Bio-Informatics',
  'Biotechnology and Genetic Engineering',
  'Botany',
  'BS Economics',
  'Business Administration Hons (BBA)',
  'Computer Science (BSCS)',
  'Doctor of Veterinary Medicine (DVM)',
  'Entomology',
  'Fisheries and Aquaculture',
  'Horticulture',
  'Human Nutrition',
  'Human Nutrition & Dietetics',
  'Information Technology (BSIT)',
  'Microbiology',
  'Plant Breeding & Genetics',
  'Plant Pathology',
  'Plant Protection',
  'Rural Development',
  'Rural Sociology',
  'Soil & Environmental Science',
  'Water Management',
  'Water Resources Management',
  'Weed Science'
];

List<String> mastersList = [
  'Botany',
  'English',
  'Islamiyat',
  'MA Economics',
  'Master of Business Administration (3.5)',
  'Rural Sociology',
  'Statistics',
];

List<String> mscHonsList = [
  'Agricultural & Applied Economics',
  'Agriculture Chemistry & Biotechnology',
  // 'Agriculture Extension Education and Communication',
  'Agriculture Mechanization',
  'Agronomy',
  'Animal Breeding & Genetics',
  'Animal Nutrition',
  'Entomology',
  'Food Science & Technology',
  'Horticulture',
  'Human Nutrition',
  'Livestock Management',
  'Plant Breeding & Genetics',
  'Plant Pathology',
  'Plant Protection',
  'Poultry Science',
  'Rural Development',
  'Rural Sociology',
  'Soil & Environmental Science',
  'Water Resources Management',
  'Weed Science'
];

List<String> mphilList = [
  'Microbiology',
  'Animal Biotechnolgy',
  'Bio-Chemistry',
  'Biotechnology and Genetic Engineering',
  'Botany',
  'Clinical Veterinary Medicine & Surgery',
  'Genomics & Bioinformatics',
  'Islamiyat',
  'M.Phil Economics',
  'Parasitology',
  'Pathology',
  'Pharmacology & Toxicology',
  'Sociology',
  'Statistics',
  'Theriogenology'
];

List<String> msList = [
  'Agribusiness Management',
  'Computer Science',
  'Data Science',
  'Information Technology',
  'Management Sciences',
  'MBA (1.5)',
  'MBA (Business Graduate)',
  'MBA (Non Business Graduate)',
  'MS Water Resource Management'
];

List<String> phdList = [
  'Pathology',
  'Agricultural & Applied Economics',
  'Agriculture Chemistry & Biotechnology',
  'Agriculture Mechanization',
  'Agronomy',
  'Animal Biotechnology',
  'Animal Breeding & Genetics',
  'Animal Nutrition',
  'Biotechnology and Genetic Engineering',
  'Clinical Veterinary Medicine & Surgery',
  'Doctor of Philosophy in Economics',
  // 'Doctor of Philosophy in Agriculture Extension Education and Communication',
  'Doctor of Philosophy in Computer Science',
  'Doctor of Philosophy in Management Science',
  'Entomology',
  'Food Science & Technology',
  'Horticulture',
  'Human Nutrition',
  'Livestock Management',
  'Microbiology',
  'Parasitology',
  'Plant Breeding & Genetics',
  'Plant Pathology',
  'Plant Protection',
  'Poultry Science',
  'Rural Development',
  'Rural Sociology',
  'Soil & Environmental Science',
  'Theriogenology',
  'Water Resource Management',
  'Weed Science'
];

List<String> diplomaList = [
  'Diploma in Agriculture Sciences',
  'Diploma in Veterinary Sciences (DVS)',
  '1-Year Post Graduate Diploma in FOOD SAFETY AND CONTROL'
];

Map bsCourseOutline = {
  'bs1': [
    CourseOutline(
        // semester: '1',
        code: 'MT-301',
        subject: 'Calculus & Analytical Geometry',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'EG-301',
        subject: 'English Composition & Comprehension',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'MG-301',
        subject: 'Financial Accounting',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'CS-301',
        subject: 'Introduction to Computing',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'CS-302',
        subject: 'Programming Fundamentals',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'PK-301',
        subject: 'Pakistan Studies',
        download: 'download'),
  ],
  'bs2': [
    CourseOutline(
        // semester: '2',
        code: 'MT-311',
        subject: 'Differential Equations',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'CS-313',
        subject: 'Digital Logic & Computer Architecture',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'CS-312',
        subject: 'Discrete Structures',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'SS-311',
        subject: 'Economics',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'CS-311',
        subject: 'Object Oriented Paradigm',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'EG-311',
        subject: 'Technical & Business Writing',
        download: 'download'),
  ],
  'bs3': [
    CourseOutline(
        // semester: '3',
        code: 'EG-401',
        subject: 'Communication Skills',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'CS-401',
        subject: 'Data Structures & Algorithms',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'CS-402',
        subject: 'DatabaseSystems',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'MT-401',
        subject: 'Multivari ate Calculus',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'CS-403',
        subject: 'Operating Systems',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'PH-401',
        subject: 'Physics ( Electromagnetism )',
        download: 'download'),
  ],
  'bs4': [
    CourseOutline(
        // semester: '4',
        code: 'CS-411',
        subject: 'Computer Architecture',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'MG-411',
        subject: 'Financial Management',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'CS-412',
        subject: 'Introduction to Software Development',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'MT-411',
        subject: 'Linear Algebra',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'CS-413',
        subject: 'Modern Programming Languages-I',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'PH-411',
        subject: 'Physics-II',
        download: 'download'),
  ],
  'bs5': [
    CourseOutline(
        // semester: '5',
        code: 'CS-501',
        subject: 'Computer Organization & Assembly Language',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'CS-504',
        subject: 'Modern Programming Languages-II',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'MT-501',
        subject: 'Probability & Statistics',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'CS-502',
        subject: 'Software Engineering-II',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'CS-503',
        subject: 'Theory of Automata and Formal Languages',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'CS-505',
        subject: 'Web Engineering',
        download: 'download'),
  ],
  'bs6': [
    CourseOutline(
        // semester: '6',
        code: 'CS-512',
        subject: 'Analysis of Algorithms',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'CS-514',
        subject: 'Computer Graphics',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'CS-511',
        subject: 'Computer Communications and Networks',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'PS-511',
        subject: 'Psychology',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'CS-513',
        subject: 'System Programming',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'CS-515',
        subject: 'Visual Programming - I',
        download: 'download'),
  ],
  'bs7': [
    CourseOutline(
        // semester: '7',
        code: 'CS-601',
        subject: 'Artificial Intelligence',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'CS-602',
        subject: 'Compiler Construction',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'CS-605',
        subject: 'Data & Network Security',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'PS-604',
        subject: 'Distributed Database Systems',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'CS-606',
        subject: 'Numerical Computing',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'CS-603',
        subject: 'Visual Programming - II',
        download: 'download'),
  ],
  'bs8': [
    CourseOutline(
        // semester: '8',
        code: 'SS-611',
        subject: 'Professional Practices',
        download: 'download')
  ],
};
Map itCourseOutline = {
  'it1': [
    CourseOutline(
        // semester: '1',
        code: 'MT-301',
        subject: 'Calculus & Analytical Geometry',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'EG-301',
        subject: 'English Composition & Comprehension',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'MG-301',
        subject: 'Financial Accounting',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'IT-301',
        subject: 'Introduction to Computing',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'IT-302',
        subject: 'Programming Fundamentals',
        download: 'download'),
    CourseOutline(
        // semester: '1',
        code: 'PK-301',
        subject: 'Pakistan Studies',
        download: 'download'),
  ],
  'it2': [
    CourseOutline(
        // semester: '2',
        code: 'MT-311',
        subject: 'Differential Equations',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'IT-312',
        subject: 'Discrete Structures',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'IT-314',
        subject: 'E-Commerce',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'IT-313',
        subject: 'Introduction to IT',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'IT-311',
        subject: 'Object Oriented Paradigm',
        download: 'download'),
    CourseOutline(
        // semester: '2',
        code: 'EG-311',
        subject: 'Technical & Business Writing',
        download: 'download'),
  ],
  'it3': [
    CourseOutline(
        // semester: '3',
        code: 'EG-401',
        subject: 'Communication Skills',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'IT-401',
        subject: 'Data Structures & Algorithms',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'IT-402',
        subject: 'Information Systems',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'MT-401',
        subject: 'Multivariate Calculus',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'IT-403',
        subject: 'Modern Programming Languages-I',
        download: 'download'),
    CourseOutline(
        // semester: '3',
        code: 'MG-401',
        subject: 'Principles of Management',
        download: 'download'),
  ],
  'it4': [
    CourseOutline(
        // semester: '4',
        code: 'IT-412',
        subject: 'Database Systems',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'IT-414',
        subject: 'Digital Logic & Computer Architecture',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'MT-411',
        subject: 'Linear Algebra',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'IT-413',
        subject: 'Modern Programming Languages-II',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'IT-411',
        subject: 'Operating Systems',
        download: 'download'),
    CourseOutline(
        // semester: '4',
        code: 'MG-411',
        subject: 'Organizational Behavior',
        download: 'download'),
  ],
  'it5': [
    CourseOutline(
        // semester: '5',
        code: 'IT-503',
        subject: 'Computer Communication & Networks',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'IT-504',
        subject: 'Distributed Database Systems',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'MG-501',
        subject: 'Marketing',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'MT-501',
        subject: 'Probability & Statistics',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'IT-501',
        subject: 'Introduction to Software Development',
        download: 'download'),
    CourseOutline(
        // semester: '5',
        code: 'CS-502',
        subject: 'Visual Programming-I',
        download: 'download'),
  ],
  'it6': [
    CourseOutline(
        // semester: '6',
        code: 'IT-511',
        subject: '	Artificial Intelligence',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'IT-512',
        subject: 'Network Management & Security',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'IT-513',
        subject: 'Software Engineering-II',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'IT-514',
        subject: 'System Administration',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'IT-515',
        subject: 'Visual Programming-II',
        download: 'download'),
    CourseOutline(
        // semester: '6',
        code: 'CS-516',
        subject: 'Web Engineering',
        download: 'download'),
  ],
  'it7': [
    CourseOutline(
        // semester: '7',
        code: 'IT-604',
        subject: 'Human Computer Interaction',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'IT-603',
        subject: 'Technology Management',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'IT-601',
        subject: 'Telecommunication Systems',
        download: 'download'),
    CourseOutline(
        // semester: '7',
        code: 'IT-602',
        subject: 'Wireless Networks',
        download: 'download'),
  ],
  'it8': [
    CourseOutline(
        // semester: '8',
        code: 'IT-612',
        subject: 'Professional Practices',
        download: 'download'),
    CourseOutline(
        // semester: '8',
        code: 'SS-611',
        subject: 'Professional Practices',
        download: 'download'),
  ],
};

List<CourseOutline> it1 = [
  CourseOutline(
      // semester: '1',
      code: 'MT-301',
      subject: 'Calculus\n&\nAnalytical Geometry',
      download: 'Calculus-&-analytical-Geom.doc'),
  CourseOutline(
      // semester: '1',
      code: 'EG-301',
      subject: 'English Composition\n&\nComprehension',
      download: 'English-Com-comprehension.docx'),
  CourseOutline(
      // semester: '1',
      code: 'MG-301',
      subject: 'Financial\nAccounting',
      download: 'Finalcial-Accounting.doc'),
  CourseOutline(
      // semester: '1',
      code: 'IT-301',
      subject: 'Introduction\nto\nComputing',
      download: 'Introduction-to-Computering.doc'),
  CourseOutline(
      // semester: '1',
      code: 'IT-302',
      subject: 'Programming\nFundamentals',
      download: 'Programming-Fundamentals.doc'),
  CourseOutline(
      // semester: '1',
      code: 'PK-301',
      subject: 'Pakistan\nStudies',
      download: 'Pakistan-study.doc'),
];
List<CourseOutline> it2 = [
  CourseOutline(
      // semester: '2',
      code: 'MT-311',
      subject: 'Differential\nEquations',
      download: 'Differentail-Equations.doc'),
  CourseOutline(
      // semester: '2',
      code: 'IT-312',
      subject: 'Discrete\nStructures',
      download: 'Discrete-Structures.doc'),
  CourseOutline(
      // semester: '2',
      code: 'IT-314',
      subject: 'E-Commerce',
      download: 'E-Commerce.doc'),
  CourseOutline(
      // semester: '2',
      code: 'IT-313',
      subject: 'Introduction\nto IT',
      download: 'Intro-to-IT.doc'),
  CourseOutline(
      // semester: '2',
      code: 'IT-311',
      subject: 'Object Oriented\nParadigm',
      download: 'Object-Oriented-Paradigm.doc'),
  CourseOutline(
      // semester: '2',
      code: 'EG-311',
      subject: 'Technical &\nBusiness Writing',
      download: 'Technical-&-Business-Writing.doc'),
];
List<CourseOutline> it3 = [
  CourseOutline(
      // semester: '3',
      code: 'EG-401',
      subject: 'Communication\nSkills',
      download: 'Communication-Skills.doc'),
  CourseOutline(
      // semester: '3',
      code: 'IT-401',
      subject: 'Data Structures\n&\nAlgorithms',
      download: 'Data-Structure-&-Algorithms.doc'),
  CourseOutline(
      // semester: '3',
      code: 'IT-402',
      subject: 'Information\nSystems',
      download: 'Information-Systems.doc'),
  CourseOutline(
      // semester: '3',
      code: 'MT-401',
      subject: 'Multivariate\nCalculus',
      download: 'Multivarible-Calculus.doc'),
  CourseOutline(
      // semester: '3',
      code: 'IT-403',
      subject: 'Modern Programming\nLanguages-I',
      download: 'Modern-Programming-Languages-I.doc'),
  CourseOutline(
      // semester: '3',
      code: 'MG-401',
      subject: 'Principles\nof Management',
      download: 'Principles-of-Management.doc'),
];
List<CourseOutline> it4 = [
  CourseOutline(
      // semester: '4',
      code: 'IT-412',
      subject: 'Database\nSystems',
      download: 'Database-Systems.doc'),
  CourseOutline(
      // semester: '4',
      code: 'IT-414',
      subject: 'Digital Logic\n&\nComputer Architecture',
      download: 'Digital-Logic-&-Computer-Architecture.doc'),
  CourseOutline(
      // semester: '4',
      code: 'MT-411',
      subject: 'Linear\nAlgebra',
      download: 'Linear-Algebra.doc'),
  CourseOutline(
      // semester: '4',
      code: 'IT-413',
      subject: 'Modern Programming\nLanguages-II',
      download: 'Modern-Programming-Languages-II.doc'),
  CourseOutline(
      // semester: '4',
      code: 'IT-411',
      subject: 'Operating\nSystems',
      download: 'Operating-System.doc'),
  CourseOutline(
      // semester: '4',
      code: 'MG-411',
      subject: 'Organizational\nBehavior',
      download: 'Organizattional-Behaviour.doc'),
];
List<CourseOutline> it5 = [
  CourseOutline(
      // semester: '5',
      code: 'IT-503',
      subject: 'Computer Communication\n&\nNetworks',
      download: 'Computer-Communication-and-Networks.doc'),
  CourseOutline(
      // semester: '5',
      code: 'IT-504',
      subject: 'Distributed Database\nSystems',
      download: 'Distributed-Database-Systems.doc'),
  CourseOutline(
      // semester: '5',
      code: 'MG-501',
      subject: 'Marketing',
      download: 'Marketing.doc'),
  CourseOutline(
      // semester: '5',
      code: 'MT-501',
      subject: 'Probability\n&\nStatistics',
      download: 'Probability-&-Statistics.doc'),
  CourseOutline(
      // semester: '5',
      code: 'IT-501',
      subject: 'Introduction to\nSoftware Development',
      download: 'Intro.-to-Software-Development.doc'),
  CourseOutline(
      // semester: '5',
      code: 'CS-502',
      subject: 'Visual\nProgramming-I',
      download: 'Visual-Programming-I.doc'),
];
List<CourseOutline> it6 = [
  CourseOutline(
      // semester: '6',
      code: 'IT-511',
      subject: 'Artificial\nIntelligence',
      download: 'Artificial-Intelligence.doc'),
  CourseOutline(
      // semester: '6',
      code: 'IT-512',
      subject: 'Network Management\n&\nSecurity',
      download: 'Network-Management-&-Security.doc'),
  CourseOutline(
      // semester: '6',
      code: 'IT-513',
      subject: 'Software\nEngineering-II',
      download: 'Software-Engineering-II.doc'),
  CourseOutline(
      // semester: '6',
      code: 'IT-514',
      subject: 'System\nAdministration',
      download: 'System-Administration-IT.doc'),
  CourseOutline(
      // semester: '6',
      code: 'IT-515',
      subject: 'Visual\nProgramming-II',
      download: 'Visual-Programming-II.doc'),
  CourseOutline(
      // semester: '6',
      code: 'CS-516',
      subject: 'Web\nEngineering',
      download: 'Web-Engineering.doc'),
];
List<CourseOutline> it7 = [
  CourseOutline(
      // semester: '7',
      code: 'IT-604',
      subject: 'Human Computer\nInteraction',
      download: 'Human-Computer-Interaction.doc'),
  CourseOutline(
      // semester: '7',
      code: 'IT-603',
      subject: 'Technology\nManagement',
      download: 'Technology-Management.doc'),
  CourseOutline(
      // semester: '7',
      code: 'IT-601',
      subject: 'Telecommunication\nSystems',
      download: 'Telecommunication.doc'),
  CourseOutline(
      // semester: '7',
      code: 'IT-602',
      subject: 'Wireless\nNetworks',
      download: 'Wireless-Networks.doc'),
];
List<CourseOutline> it8 = [
  CourseOutline(
      // semester: '8',
      code: 'IT-612',
      subject: 'Digital Signal\nProcessing',
      download: 'Digital-Signal-Processing.doc'),
  CourseOutline(
      // semester: '8',
      code: 'SS-611',
      subject: 'Professional\nPractices',
      download: 'Professional-Practices.doc'),
];

List<CourseOutline> bs1 = [
  CourseOutline(
      // semester: '1',
      code: 'MT-301',
      subject: 'Calculus\n&\nAnalytical Geometry',
      download: 'Calculus-&-analytical-Geom.doc'),
  CourseOutline(
      // semester: '1',
      code: 'EG-301',
      subject: 'English Composition\n&\nComprehension',
      download: 'English-Com-comprehension.docx'),
  CourseOutline(
      // semester: '1',
      code: 'MG-301',
      subject: 'Financial\nAccounting',
      download: 'Finalcial-Accounting.doc'),
  CourseOutline(
      // semester: '1',
      code: 'CS-301',
      subject: 'Introduction\nto\nComputing',
      download: 'Introduction-to-Computering.doc'),
  CourseOutline(
      // semester: '1',
      code: 'CS-302',
      subject: 'Programming\nFundamentals',
      download: 'Programming-Fundamentals.doc'),
  CourseOutline(
      // semester: '1',
      code: 'PK-301',
      subject: 'Pakistan\nStudies',
      download: 'Pakistan-study.doc'),
];
List<CourseOutline> bs2 = [
  CourseOutline(
      // semester: '2',
      code: 'MT-311',
      subject: 'Differential\nEquations',
      download: 'Differentail-Equations.doc'),
  CourseOutline(
      // semester: '2',
      code: 'CS-313',
      subject: 'Digital Logic\n&\nComputer Architecture',
      download: 'Digital-Logic-&-Computer-Architecture.doc'),
  CourseOutline(
      // semester: '2',
      code: 'CS-312',
      subject: 'Discrete\nStructures',
      download: 'assets/docs/Discrete-Structures.doc'),
  CourseOutline(
      // semester: '2',
      code: 'SS-311',
      subject: 'Economics',
      download: 'Economics.doc'),
  CourseOutline(
      // semester: '2',
      code: 'CS-311',
      subject: 'Object Oriented\nParadigm',
      download: 'Object-Oriented-Paradigm.doc'),
  CourseOutline(
      // semester: '2',
      code: 'EG-311',
      subject: 'Technical\n&\nBusiness Writing',
      download: 'Technical-&-Business-Writing.doc'),
];
List<CourseOutline> bs3 = [
  CourseOutline(
      // semester: '3',
      code: 'EG-401',
      subject: 'Communication\nSkills',
      download: 'Communication-Skills.doc'),
  CourseOutline(
      // semester: '3',
      code: 'CS-401',
      subject: 'Data Structures\n&\nAlgorithms',
      download: 'Data-Structure-&-Algorithms.doc'),
  CourseOutline(
      // semester: '3',
      code: 'CS-402',
      subject: 'Database\nSystems',
      download: 'Database-Systems.doc'),
  CourseOutline(
      // semester: '3',
      code: 'MT-401',
      subject: 'Multivariate\nCalculus',
      download: 'Multivarible-Calculus.doc'),
  CourseOutline(
      // semester: '3',
      code: 'CS-403',
      subject: 'Operating\nSystems',
      download: 'Operating-System.doc'),
  CourseOutline(
      // semester: '3',
      code: 'PH-401',
      subject: 'Physics\n( Electromagnetism )',
      download: 'Phy-Electromagnatism.doc'),
];
List<CourseOutline> bs4 = [
  CourseOutline(
      // semester: '4',
      code: 'CS-411',
      subject: 'Computer\nArchitecture',
      download: 'Computer-Architecture.doc'),
  CourseOutline(
      // semester: '4',
      code: 'MG-411',
      subject: 'Financial\nManagement',
      download: 'Finacial-Management.doc'),
  CourseOutline(
      // semester: '4',
      code: 'CS-412',
      subject: 'Introduction\nto\nSoftware Development',
      download: 'Intro.-to-Software-Development.doc'),
  CourseOutline(
      // semester: '4',
      code: 'MT-411',
      subject: 'Linear\nAlgebra',
      download: 'assets/docs/Linear-Algebra.doc'),
  CourseOutline(
      // semester: '4',
      code: 'CS-413',
      subject: 'Modern Programming\nLanguages-I',
      download: 'Modern-Programming-Languages-I.doc'),
  CourseOutline(
      // semester: '4',
      code: 'PH-411',
      subject: 'Physics-II',
      download: 'Physics-II.doc'),
];
List<CourseOutline> bs5 = [
  CourseOutline(
      // semester: '5',
      code: 'CS-501',
      subject: 'Computer Organization\n&\nAssembly Language',
      download: 'Comp.-Org.-&-Assembly.doc'),
  CourseOutline(
      // semester: '5',
      code: 'CS-504',
      subject: 'Modern Programming\nLanguages-II',
      download: 'Modern-Programming-Languages-II.doc'),
  CourseOutline(
      // semester: '5',
      code: 'MT-501',
      subject: 'Probability\n&\nStatistics',
      download: 'Probability-&-Statistics.doc'),
  CourseOutline(
      // semester: '5',
      code: 'CS-502',
      subject: 'Software\nEngineering-II',
      download: 'Software-Engineering-II.doc'),
  CourseOutline(
      // semester: '5',
      code: 'CS-503',
      subject: 'Theory of Automata\n&\nFormal Languages',
      download: 'Theory-of-Automata-and-Formal-Languages.doc'),
  CourseOutline(
      // semester: '5',
      code: 'CS-505',
      subject: 'Web\nEngineering',
      download: 'Web-Engineering.doc'),
];
List<CourseOutline> bs6 = [
  CourseOutline(
      // semester: '6',
      code: 'CS-512',
      subject: 'Analysis of\nAlgorithms',
      download: 'Analysis-of-algorithms.doc'),
  CourseOutline(
      // semester: '6',
      code: 'CS-514',
      subject: 'Computer\nGraphics',
      download: 'Computer-Graphics.doc'),
  CourseOutline(
      // semester: '6',
      code: 'CS-511',
      subject: 'Computer Communications\n&\nNetworks',
      download: 'Computer-Communication-and-Networks.doc'),
  CourseOutline(
      // semester: '6',
      code: 'PS-511',
      subject: 'Psychology',
      download: 'Psychology.doc'),
  CourseOutline(
      // semester: '6',
      code: 'CS-513',
      subject: 'System\nProgramming',
      download: 'System-Programming.DOC'),
  CourseOutline(
      // semester: '6',
      code: 'CS-515',
      subject: 'Visual\nProgramming - I',
      download: 'Visual-Programming-I.doc'),
];
List<CourseOutline> bs7 = [
  CourseOutline(
      // semester: '7',
      code: 'CS-601',
      subject: 'Artificial\nIntelligence',
      download: 'Artificial-Intelligence.doc'),
  CourseOutline(
      // semester: '7',
      code: 'CS-602',
      subject: 'Compiler\nConstruction',
      download: 'Compiler-Consturction.doc'),
  CourseOutline(
      // semester: '7',
      code: 'CS-605',
      subject: 'Data & Network\nSecurity',
      download: 'Data-and-Network-Security.doc'),
  CourseOutline(
      // semester: '7',
      code: 'PS-604',
      subject: 'Distributed Database\nSystems',
      download: 'Distributed-Database-Systems.doc'),
  CourseOutline(
      // semester: '7',
      code: 'CS-606',
      subject: 'Numerical\nComputing',
      download: 'Numerical-Computing.doc'),
  CourseOutline(
      // semester: '7',
      code: 'CS-603',
      subject: 'Visual\nProgramming - II',
      download: 'Visual-Programming-II.doc'),
];
List<CourseOutline> bs8 = [
  CourseOutline(
      // semester: '8',
      code: 'SS-611',
      subject: 'Professional\nPractices',
      download: 'Professional-Practices.doc')
];
