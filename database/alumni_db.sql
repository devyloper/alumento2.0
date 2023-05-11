-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 07:24 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `native` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `enroll_no` varchar(12) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `college` text NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `phone_no` bigint(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pos` text NOT NULL,
  `navstate` text NOT NULL,
  `connected_to` text NOT NULL,
  `comploc` text NOT NULL,
  `companyloc` varchar(40) NOT NULL,
  `companysector` text NOT NULL,
  `linkedinid` varchar(300) NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `native`, `lastname`, `enroll_no`, `gender`, `college`, `batch`, `course_id`, `phone_no`, `email`, `pos`, `navstate`, `connected_to`, `comploc`, `companyloc`, `companysector`, `linkedinid`, `avatar`, `status`) VALUES
(17, 'Sunaina', 'Bhopal', 'Shrivastava', '', 'Female', 'BIST', 2018, 3, 123456789, 'alumi@gmail.com', '', '', 'Trantor', 'INDIA', 'Gurugram ', 'Private', 'https://www.linkedin.com/in/sunaina-shrivastava-626455130?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BR0CEOwXgSKmxx2YaxGCLHw%3D%3D', '1664207820_photo 1.jpg', 1),
(18, 'Priya', 'Indore', 'Vishwakarma', '', 'Female', 'BIST', 2017, 7, 123456789, 'alumi.bgi@gmail.com', '', '', 'Berkadia', 'INDIA', 'Hyderabad', 'Private', 'https://www.linkedin.com/in/priyavishwakarma?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3Bmg4q%2FjETQMq7xDQsE5vAGw%3D%3D', '1664208300_photo2.jpg', 1),
(19, 'Amit ', 'Bhopal', 'Solanki', '', 'Male', 'BIRTS', 2012, 3, 124546734, 'alumi123@gmail.com', '', '', 'IBM', 'INDIA', 'Bangalore', 'Private', 'https://www.linkedin.com/in/amit-solanki-8a4272b0/', '1664208600_photo 3.jpg', 1),
(20, 'Shefali', 'Indore', 'Varshney', '', 'Female', 'BIST', 2013, 3, 746454655, 'alumi1234@gmail.com', '', '', 'Google', 'INDIA', 'California', 'Private', 'https://www.linkedin.com/in/shefalivarshney17/', '1664209020_photo4.jpg', 1),
(21, 'Yash', 'Bihar', 'Agrawal', '', 'Male', 'BIST', 2015, 6, 8675768685, 'alumi1236@gmail.com', '', '', 'Amazon', 'ABROAD', 'Chicago', 'Private', 'https://www.linkedin.com/in/yashagrawal1111/', '1664209200_photo5.jpg', 1),
(22, 'Srishti', 'Bhopal', 'Raghuwanshi', '', 'Female', 'BIST', 2022, 10, 7000130859, 'Srishtiraghu29@gmail.com', '', '', 'Wyzon', 'INDIA', 'Bhopal', 'Private', 'https://www.linkedin.com/in/srishti-raghuwanshi-33a9721b7/', '1664209800_1662202967421.jfif', 1),
(23, 'Parvez ', 'Bhopal', 'Alam', '', 'Male', 'BIST', 2022, 11, 75647564, 'parvez.alam21092001@gmail.com', '', '', 'Persistent Systems ', 'INDIA', 'Bangalore', 'Private', 'https://www.linkedin.com/in/parvez-alam-2216a21a8?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BvDfps79qRLO%2FMiEUpG%2F1mA%3D%3D', '1664209800_photo6.jpg', 1),
(24, 'Shivam', 'UP', 'Gupta', '', 'Male', 'BIST', 2010, 9, 746753643, 'alumi98@gmail.com', 'Assistant Developer', '', 'Walmart ', 'ABROAD', 'California', 'Private', 'https://www.linkedin.com/in/shivam-gupta-64aa651a8/', '1664210100_photo 7.jpg', 1),
(26, 'Shubhi', 'Bihar', 'Tripathi', '', 'Male', 'BIST', 2022, 3, 645454547, 'alumi1934@gmail.com', '', '', 'Mphasis', 'INDIA', 'Bangalore', 'Private', 'Mphasishttps://www.linkedin.com/in/shubhi-tripathi-4169b91b9/', '1664210280_photo8.jpg', 1),
(28, 'Deepali', '', 'Mandloi', '', 'Female', 'BIST', 2001, 3, 85657465, 'alumi.bgi453@gmail.com', '', '', 'Infosys', 'INDIA', 'Bangalore', 'Private', 'https://www.linkedin.com/in/deepali-mandloi-6083801b/', '1664210700_photo9.jpg', 1),
(29, 'Nihit', 'UP', 'Mathur', '', 'Male', 'BIST', 2004, 6, 656467643, 'alumi123498@gmail.com', '', '', 'Infosys', 'INDIA', 'Hyderabad', 'Private', 'https://www.linkedin.com/in/nihit-mathur-b1421b124/', '1664210880_photo10.jpg', 1),
(33, 'Sandeep', 'Basti ', 'Gupta', '0112CS161097', 'Male', 'BIST', 2020, 3, 8770968059, 'guptasandeep2197@gmail.com', 'Java developer', 'UP', 'HCL Technologies', 'INDIA', 'Noida', 'Private', 'https://www.linkedin.com/in/sandeep-gupta-484588194', '1665141600_IMG_20210330_232527.jpg', 1),
(34, 'Sailesh', 'Asansol ', 'Routh', '0112cs161094', 'Male', 'BIST', 2020, 3, 8770708063, 'saileshrouth45@gmail.com', 'Java Developer ', 'WB', 'IntelliaTech Solution pvt ltd', 'INDIA', 'Indore ', 'Private', '', '1665141600_BD666A04-2B72-4C68-9B38-638E45A3573B.jpeg', 1),
(35, 'Mustufa', 'Guna', 'Khan', '0112CS151062', 'Male', 'BIST', 2019, 3, 918839167587, 'Mustufakhan699@gmail.com', 'Software Engineer II', 'MP', 'Smarsh', 'INDIA', 'Indore', 'Private', 'https://www.linkedin.com/in/mustufa-khan-ba70b6163', '1665141720_IMG_4895.jpg', 1),
(36, 'Prateek', 'Rewa', 'Shukla', '0112CS181041', 'Male', 'BIST', 2022, 3, 918818898846, 'Prateekshukla130@gmail.com', 'Software Engineer L1 ', 'MP', 'Think Future Technology ', 'INDIA', 'Remote ', 'Private', 'https://www.linkedin.com/in/prateek-shukla-b61050215', '1665141780_Screenshot_2022-09-23-22-35-17-43_1c337646f29875672b5a61192b9010f9.jpg', 1),
(37, 'Suman ', 'Darbhanga ', 'Kumar', '0112CS181065', 'Male', 'BIST', 2022, 3, 9304153913, 'sumanku250@gmail.com', 'Analyst ', 'BR', 'Deloitte ', 'INDIA', 'Bengaluru ', 'Private', 'https://www.linkedin.com/in/suman-kumar-5695091bb', '1665141780_Screenshot_2022-10-07-16-49-43-73_1c337646f29875672b5a61192b9010f9.jpg', 1),
(38, 'Shalinee ', 'Rewa', 'Agnihotri', '0112CE171014', 'Female', 'BIST', 2021, 4, 9340471393, 'Shalineea2000@gmail.com', 'BDM', 'MP', 'Ufaber', 'INDIA', 'Mumbai', 'Private', 'shalineea2000', '1665141900_IMG_20221002_202508.jpg', 1),
(39, 'Shantanu ', 'Sidhi', 'Tiwari ', '0112ME181010', 'Male', 'BIST', 2022, 5, 916265790078, 'shantanutiwari665@gmail.com', 'GET', 'MP', 'Shilpan steelcast Pvt ltd Rajkot Gujarat ', 'INDIA', 'Rajkot Gujarat ', 'Private', '', '1665142140_020f4b092de11b4523bf8250925d448e.jpg', 1),
(40, 'Pankaj', 'Sidhi', 'Singh', '0506CE121050', 'Male', 'BIRTS', 2016, 4, 7974356832, 'pankajsingh.birts@gmail.com', 'HOD civil BIRT/S', 'MP', 'BIRTS BHOPAL', 'INDIA', 'Bhopal', 'Private', '', '1665142200_09179A81-24BC-41B0-8212-6E2980373F37.jpeg', 0),
(41, 'Arsheen ', 'Neemuch ', 'Jahan', '0112CS151024', 'Female', 'BIST', 2019, 3, 8827969514, 'arsheenjahan95@gmail.com', 'Associate ', 'MP', 'Cognizant technology solutions ', 'INDIA', 'Bengalore', 'Private', 'https://www.linkedin.com/mwlite/in/arsheen-jahan-233716169', '1665142500_IMG-20211121-WA0006.jpg', 1),
(42, 'Sandeep', 'Basti', 'Gupta', '0112CS161097', 'Male', 'BIST', 2020, 3, 91877968059, 'jashutosh762@gmail.com', 'Java developer', 'UP', 'HCL TECHNOLOGIES', 'INDIA', 'Noida', 'Private', 'https://www.linkedin.com/in/sandeep-gupta-484588194/', '1665142620_SandeepKumarGupta.jpg', 1),
(43, 'Tejus', 'JHANSI', 'Tiwari', '0112CS181069', 'Male', 'BIST', 2022, 3, 918765537155, 'tejastiwari1009@gmail.com', 'Data analyst', 'UP', 'Capgemini', 'INDIA', 'Jhansi', 'Private', 'https://www.linkedin.com/in/tejus-tiwari-bb50841b8', '1665143580_PassportPhoto.png', 1),
(44, 'Shubham ', 'Bhopal', 'Udhani', '0112CE121102', 'Male', 'BIST', 2016, 4, 7389185092, 'shubham.udhani@gmail.com', 'Senior Manager ', 'MP', 'Jumbotail Pvt Ltd', 'INDIA', 'Bengaluru', 'Private', 'https://www.linkedin.com/in/shubham-udhani', '1665144000_IMG20220918213231~2.jpg', 1),
(45, 'Avinash ', 'Umaria ', 'Gupta ', '0112CS181015', 'Male', 'BIST', 2022, 3, 9301341027, 'avinashgupta975344@gmail.com', 'Developer', 'MP', 'IT PATA SOLUTIONS ', 'INDIA', 'Ahmedabad ', 'Private', 'Avinash Gupta ', '1665144420_IMG_20220818_094956.jpg', 1),
(46, 'Amit', 'DAMOH', 'Bardia', '0112EX163D01', 'Male', 'BIST', 2019, 9, 917415478368, 'amit19bardia@gmail.com', 'SENIOR UAV PILOT', 'MP', 'BEYOND GRAVITY', 'INDIA', 'BHOPAL', 'Private', 'Amit Bardia', '1665145200_20220213_175547.jpg', 0),
(47, 'Amar', 'Patna', 'Srivastava', '0112IT171002', 'Male', 'BIST', 2021, 6, 7549977733, 'amarsrivastava14@gmail.com', 'Cloud Support Engineer', 'BR', 'ProArch IT Solutions', 'INDIA', 'Bangalore', 'Private', '', '1665146580_IMG_20201209_213826~2.jpg', 0),
(48, 'Swapnil', 'Rewa', 'Soni', '0112ME171030', 'Male', 'BIST', 2021, 5, 9144495090, 'swapnil.bansalgroup30@gmail.com', 'No', 'MP', 'No', 'INDIA', 'Rewa', 'Private', '', '1665147420_IMG20220802220804.jpg', 1),
(49, 'Yogita ', 'Vijayraghavgarh,Katni', 'Gupta ', '0112IT171035', 'Female', 'BIST', 2021, 6, 7869547242, 'yogi.gupta15@gmail.com', 'Info. Tech. Senior Associate ', 'MP', 'NTT Data', 'INDIA', 'Vijayraghavgarh, Katni ', 'Private', 'https://www.linkedin.com/in/yogita-gupta-6767391a1', '1665148200_DSC01696.jpg', 0),
(50, 'Pragya', 'Bhagalpur', 'Choudhary', '0112ME151067', 'Female', 'BIST', 2019, 5, 918519097416, 'pragyachoudhary8519@gmail.com', 'Software  developer ', 'BR', 'Qualcomm', 'INDIA', 'Bihar', 'Private', 'Pragya Choudhary', '1665149820_IMG_20221002_235432_242.jpg', 1),
(51, 'Sandeep', 'Betul Madhya Pradesh ', 'Deshmukh ', '0173ME181024', 'Male', 'BIRT', 2022, 5, 8085462643, 'sandeepdeshmukh9036@gmail.com', ' production Engineer ', 'MP', 'L&T group ', 'INDIA', 'Surat gujrat ', 'Private', 'https://www.linkedin.com/in/sandeep-deshmukh-2001', '1665150720_IMG-20210607-WA0003.jpg', 0),
(52, 'Shubham', 'Neemuch', 'Dahima', '0112CS151104', 'Male', 'BIST', 2019, 3, 7047165027, 'shubhamdahima98@gmail.com', 'Sr. Associate', 'MP', 'Cognizant', 'INDIA', 'Pune', 'Private', '', '1665154260_Snapchat-1232826.jpg', 1),
(53, 'Neelesh', 'Satna', 'Pathak', '0112Ce091039', 'Male', 'BIST', 2013, 4, 9630811889, 'neeleshpathak1992@gmail.com', 'Junior engineer', 'MP', 'Central public Works department', 'INDIA', 'Bhopal', 'Government', '', '1665154500_IMG-20190513-WA0003.jpg', 1),
(54, 'Parag', 'Guna', 'Raghuwanshi', '0112CE081033', 'Male', 'BIST', 2012, 4, 7566628383, 'ragsdev@gmail.com', 'Sub Engineer', 'MP', 'MPRRDA', 'INDIA', 'Guna', 'Government', 'https://www.linkedin.com/in/parag-raghuwanshi-99353842', '1665155100_IMG_20221005_145540.jpg', 1),
(55, 'Durga', '', 'Singh', '0112CS151044', 'Male', 'BIST', 2020, 3, 8269930040, 'Singhdurga680@gmail.com', 'Senior Network Engineer ', 'CT', 'RoyalCyber Inc. ', 'INDIA', 'Delhi', 'Private', 'linkedin.com/in/durga-singh-52b69b142/', '1665155400_241042283_1541575882845521_4390512277342012052_n.jpg', 1),
(56, 'Vivek ', 'Harda', 'Dubey', '0112ce101099', 'Male', 'BIST', 2014, 4, 919425044254, 'vivekdubey300@gmail.com', 'Sub Engineer', 'MP', 'Urban administration & development department govt. of M.P.', 'INDIA', 'Harda ', 'Government', '', '1665155400_20201219_135133.jpg', 1),
(57, 'Aditya', 'Satna, (M.P.)', 'Budhadhra', '0112CE121003', 'Male', 'BIST', 2016, 4, 8962144367, 'aditya.budhadhra1305@gmail.com', 'Assistant Professor', 'MP', 'AKS University, Satna', 'INDIA', 'Satna , (M.P.)', 'Private', '', '1665155940_20220215_132310.jpg', 1),
(58, 'Aakash ', 'Sagar mp', 'Shrivastava ', '0112CE091001', 'Male', 'BIST', 2013, 4, 7999515334, 'aakashshr2@gmail.com', 'Assistant professor ', 'MP', 'SIRT BHOPAL', 'INDIA', 'Bhopal', 'Private', 'https://www.linkedin.com/in/aakash-shrivastava-40a15a159', '1665156060_IMG_20220427_160434.jpg', 1),
(59, 'Vishal', 'Sasaram', 'Kumar', '0112CS171082', 'Male', 'BIST', 2021, 3, 8340195207, 'Vishalkumar834019@gmail.com', 'Software Engineer', 'BR', 'Epam Systems', 'INDIA', 'Sasaram', 'Private', '', '1665156780_IMG_Thu Oct 06 08_56_36 GMT+05_30 2022.jpg', 1),
(60, 'Hemant', 'Bhopal', 'Sahu', '0112CS191047', 'Male', 'BIST', 2023, 3, 9294817724, 'hemants.1107@gmail.com', 'Member of technical staff', 'MP', 'Hexaview Technologies', 'INDIA', 'Pune', 'Private', '', '1665158220_Hemant_sahu_uniform final.png', 0),
(61, 'Paritosh', 'Guna', 'Sharma', '0110CE091043', 'Male', 'BIST', 2013, 4, 9755054768, 'paritosh.mnt@gmail.com', 'Senior Executive Business development', 'MP', 'Dilip Buildcon limited', 'INDIA', 'Bhopal', 'Private', '', '1665162480_FA86271C-EC06-4CE9-8AAD-F0647B3A607D.jpeg', 1),
(62, 'Rajat', 'Sidhi', 'jaiswal', '0112me193d03', 'Male', 'BIST', 2022, 5, 917065191923, 'cseengin@gmail.com', 'Backed developer trainee ', 'MP', 'Toneop ', 'INDIA', 'Banglore ', 'Private', 'https://www.linkedin.com/in/rajat-jaiswal-72a287223', '1665163380_IMG_20221007_225336.jpg', 1),
(63, 'Jitendra', 'Anuppur', 'rathour', '0112EX181003', 'Male', 'BIST', 2022, 9, 6261575877, 'jitendra62615758@gmail.com', 'QA', 'MP', 'Corecard', 'INDIA', 'Bhopal', 'Private', 'Jitendra rathour', '1665167100_1641709011745.jpg', 0),
(64, 'Rahul singh', 'Rewa', 'Parihar', '0112ME151075', 'Male', 'BIST', 2019, 5, 7354567275, 'rahulsinghchotu.28@gmail.com', 'Senior Engineer ', 'MP', 'Suzlon Energy Limited ', 'INDIA', 'Gujrat ', 'Private', '', '1665168840_A1962061-01C5-4BC5-AFB0-D786B9A12713.jpeg', 1),
(65, 'Shivam', 'Chitrakoot ', 'Gupta', '0112cs161108', 'Male', 'BIST', 2020, 3, 8827173526, 'shivamguptacktd@gmail.com', 'Junior Developer ', 'UP', 'HCL technologies ', 'INDIA', 'Noida', 'Private', '', '1665173760_SAVE_20210123_103411.jpg', 1),
(66, 'SANJIW', 'AURANGABAD', 'KUMAR', '0112CE121083', 'Male', 'BIST', 2016, 4, 8755190910, 'sanjiwbist12@gmail.com', 'Assistant  Manager', 'BR', 'GR Infra Projects LImited', 'INDIA', 'Panipat', 'Private', 'https://www.linkedin.com/in/sanjiw-kumar-811841194', '1665191940_resent photo.jpeg', 1),
(67, 'Awadhesh', 'Bhopal', 'Singh', '0112CE161010', 'Male', 'BIST', 2020, 4, 8982673156, 'totheawadhesh@gmail.com', 'Site engineer ', 'MP', 'Bansal ', 'INDIA', 'Bhopal', 'Private', 'awadhesh singh ', '1665204420_1631298339406.jpg', 1),
(68, 'Shiv Kumar ', 'Bhopal', 'Pandey', '0112CS171067', 'Male', 'BIST', 2021, 3, 9179401700, 'shiv.kumar.pandey1997@gmail.com', 'Senior Salesforce Developer ', 'MP', 'Apisero Inc', 'INDIA', 'Bhopal', 'Private', 'https://www.linkedin.com/in/shiv-kumar-pandey-855857160', '1665210240_Shiv 1.jpg', 1),
(69, 'Anchal', 'Bhopal', 'Mishra', '0112CE131016', 'Female', 'BIST', 2017, 4, 8989977099, 'manchal27@gmail.com', 'Contracts Engineer', 'MP', 'Reliance Industries limited', 'INDIA', 'Mumbai', 'Private', '', '1665220020_Screenshot_20221008-143449_Gallery.jpg', 1),
(70, 'Amit', 'Ara', 'Kumar', '0112IT161001', 'Male', 'BIST', 2020, 6, 7488751433, 'amitraj979825@gmail.com', 'Java developer ', 'BR', 'Rakuten Symphony', 'INDIA', 'Indore ', 'Private', '', '1665226260_IMG20211107095450.jpg', 0),
(71, 'Aanchal', 'Lanji', 'Ramtekkar', '0112CE131004', 'Female', 'BIST', 2017, 4, 7024057548, 'aanchalramtekkar22@gmail.com', 'Senior technical account manager', 'MP', 'HILTI', 'INDIA', 'Ahmedabad ', 'Private', '', '1665227220_14C2FD88-6919-4954-9A7F-0000BA7CA527.jpeg', 1),
(72, 'Rahul', 'Bhopal', 'jaiswal', '0112ce081039', 'Male', 'BIST', 2012, 4, 919827784048, 'rahuljaiswal261991@gmail.com', 'Sub engineer', 'MP', 'Water Resources Department', 'INDIA', 'Sehore', 'Government', '', '1665231000_IMG_20210613_154729.jpg', 1),
(73, 'AKANKSHA', '', 'RANE', '0112CA201003', 'Female', 'BIST', 2022, 8, 8269477876, 'akanksha.rane16@gmail.com', 'No', 'MP', 'No', 'INDIA', 'Bhopal ', 'Private', 'https://www.linkedin.com/in/akanksha-rane-3382b121b', '1665290760_Screenshot_2022-01-31-14-47-13-28.jpg', 0),
(74, 'Manish', 'ALLAHABAD', 'Yadav', '0112CA201020', 'Male', 'BIST', 2022, 8, 8009648815, 'manish2mca@gmail.com', 'Sql developer', 'UP', 'Corecard India Pvt. Ltd. ', 'INDIA', 'Bhopal', 'Private', 'https://www.linkedin.com/in/manish-kumar-yadav-4657721b3', '1665293100_IMG_20220331_110039.jpg', 0),
(75, 'RAJENDRA ', 'Niwari', 'AHIRWAR', '0112CE171008', 'Male', 'BIST', 2021, 4, 8827007891, 'rajendraahirwar2100@gmail.com', 'Asst. Billing Engg. ', 'MP', 'PVRECPL', 'INDIA', 'Nagpur', 'Private', '', '1665300840_IMG_20200611_171528_610.jpg', 1),
(76, 'Atul', 'Bhopal ', 'Shukla', '0112CE161009', 'Male', 'BIST', 2020, 4, 917804901221, 'shuklaatul41655@gmail.com', 'Engineer ', 'MH', 'Maharashtra ', 'INDIA', 'Maharashtra ', 'Private', 'shukla-95a7011a1', '1665316260_IMG_20220123_135937.jpg', 1),
(77, 'Pankaj', 'Bhadohi', 'Yadav', '0112CA201028', 'Male', 'BIST', 2022, 8, 918009045564, 'py219239@gmail.com', 'None ', 'UP', 'Fresher ', 'INDIA', 'Bhopal ', 'Private', 'https://www.linkedin.com/in/pankaj-yadav-43b14720b', '1665328980_Pankaj Resume.pdf', 0),
(78, 'Sourabh', 'narsinghpur', 'Kurmi', '0112CA201053', 'Male', 'BIST', 2022, 8, 9575103540, 'sourabhkurmi103540@gmail.com', 'Na', 'MP', 'Na', 'INDIA', 'Bhopal', 'Private', 'https://www.linkedin.com/in/sourabh-kurmi-91b958166', '1665330480_IMG_20220407_185046.jpg', 0),
(79, 'Pankaj', 'Bhadohi', 'Yadav', '0112CA201028', 'Male', 'BIST', 2022, 8, 918009045564, 'pkyadav80090@gmail.com', 'None ', 'UP', 'Fresher ', 'INDIA', 'Bhopal Madhya Pradesh ', 'Private', 'https://www.linkedin.com/in/pankaj-yadav-43b14720b', '1665333480_Screenshot_2022-02-02-23-40-37-267_com.instagram.android.jpg', 0),
(80, 'Kumar ', 'Bhopal ', 'Shanu', '0112ME181002', 'Male', 'BIST', 2022, 5, 919174488136, 'sksinghrajput2394@gmail.com', 'SHIFT INCHARGE ', 'MP', 'HEG pvt ltd', 'INDIA', 'Mandideep', 'Private', 'https://www.linkedin.com/in/kumarshanu0308', '1665375420_IMG_20210824_115319_Bokeh.jpg', 0),
(81, 'Shashank Kumar', 'Mandla', 'Barpe', '0112ME181011', 'Male', 'BIST', 2022, 5, 917049606678, 'shashankbarpe801@gmail.com', 'Senior Executive', 'MP', 'Qwik Supply Chain Pvt Ltd (Reliance Retail) ', 'INDIA', 'Indore', 'Private', 'Shashank Kumar Barpe', '1665376440_IMG_20220925_141000.png', 0),
(82, 'Surosree', 'Kolkata', 'Bose', '0112CA193D35', 'Female', 'BIST', 2021, 8, 8240585352, 'surosreebose201503@gmail.com', 'Analyst', 'WB', 'HCL Tech', 'INDIA', 'Noida, Uttar Pradesh', 'Private', 'https://www.linkedin.com/in/surosree-bose-a049221a4/', '1665381720_titli (2).jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(3, 'Computer Science Engg.', ''),
(4, 'Civil Engg', ''),
(5, 'Mechanical Engg.', ''),
(6, 'Information Technology', ''),
(7, 'MBA', ''),
(8, 'MCA', ''),
(9, 'Electrical Engg.', ''),
(11, 'Electronic & Communication', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`) VALUES
(4, '<a href=\"http://w3schools.com\">This is a link</a>', 'ssss', '2022-11-18 11:56:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3),
(2, 1, 4),
(3, 2, 4),
(4, 3, 12),
(5, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`) VALUES
(6, '<h4><bold>Batch <br>2022</bold></h4> '),
(7, '<bold><h4>Placement<br>Day</h4></bold>'),
(8, '<bold><h4>Bansal<br>Utsav</h4></bold>');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'BGI ALUMENTO', 'amritesh123tiwari098@gmail.com', '+91 8305545775', '1663600260_1614940199571.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;Alumento is an HTML, CSS, JAVASCRIPT, PHP &amp;amp; MYSQL project which develops a repository and search engine for the alumni of the college. This allows old and new students of a college to associate with each other&rsquo;s and to know about each other. Alumni are one of the most important assets to any university. They are the people who represent the university in the real world. University alumni systems exist to promote active and ongoing relationships between graduates and their alma mater. However, it is a big challenge how to enhance mentoring between alumni and current students. Keywords: Graduation, formation, revealing, opportunities, transfer, etc&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservations`
--

CREATE TABLE `tbl_reservations` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `ucount` int(10) NOT NULL,
  `rdate` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comments` varchar(250) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reservations`
--

INSERT INTO `tbl_reservations` (`id`, `uid`, `ucount`, `rdate`, `status`, `comments`, `bdate`) VALUES
(0, 0, 2, '2023-03-16 06:30', 'PENDING', '', '2023-03-14 00:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `bdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `pwd`, `address`, `phone`, `email`, `type`, `status`, `bdate`) VALUES
(16, 'jude', '12345', 'Himamaylan City', '09272777334', 'jude@yahoo.com', 'admin', 'active', '1996-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `dept` int(30) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `dept`, `type`, `auto_generated_pass`) VALUES
(2, 'CSE_dept', 'cse@admin.com', '9160960407738ec4df1d9302c61b7f4c', 3, 1, ''),
(3, 'CIVIL_dept', 'civil@admin.com', '3919842823ce94cd9b78394a5fd6e40e', 4, 1, ''),
(4, 'ME_dept', 'me@admin.com', 'a955586332878f8d34896d16eb9e8335', 5, 1, ''),
(5, 'IT_dept', 'it@admin.com', '4b0d2b41730e4f22eea84bd4d533f3f7', 6, 1, ''),
(6, 'MBA_dept', 'mba@admin.com', '02b4e75ff4876c229a8e5c72485692e9', 7, 1, ''),
(7, 'MCA_dept', 'mca@admin.com', 'a3139e59777fac27fa7ed46bf354cb0b', 8, 1, ''),
(8, 'Electrical_dept', 'electric@admin.com', '95091e20a55b9c80f63c7ef1368e0f22', 9, 1, ''),
(10, 'BGI', 'BGI@admin.com', '85df229b13233b83a8664986d7aeb426', 0, 1, ''),
(11, 'EX_DEP', 'ex@admin.com', '493ccd54854085f56f6ef1577db995a5', 11, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
