/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : db_devphp

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 12/07/2024 17:21:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES (1, 'HRD', 'Jl. Contoh 123', NULL);
INSERT INTO `pegawai` VALUES (2, 'Pegawai 12', 'Jl. Contoh 456', NULL);
INSERT INTO `pegawai` VALUES (3, 'pegawai 2', 'Jl. Contoh 789', NULL);
INSERT INTO `pegawai` VALUES (10, 'John Doe', '123 Main St, Anytown, USA', NULL);
INSERT INTO `pegawai` VALUES (11, 'Jane Smith', '456 Oak Ave, Othertown, USA', NULL);
INSERT INTO `pegawai` VALUES (12, 'Michael Johnson', '789 Elm Blvd, Anycity, USA', NULL);
INSERT INTO `pegawai` VALUES (13, 'Emily Davis', '321 Pine Rd, Newville, USA', NULL);
INSERT INTO `pegawai` VALUES (14, 'Daniel Brown', '654 Maple Dr, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (15, 'Olivia Wilson', '987 Cedar Ln, Othercity, USA', NULL);
INSERT INTO `pegawai` VALUES (16, 'William Martinez', '135 Birch St, Townsville, USA', NULL);
INSERT INTO `pegawai` VALUES (17, 'Sophia Anderson', '246 Spruce Ave, Villagetown, USA', NULL);
INSERT INTO `pegawai` VALUES (18, 'James Taylor', '579 Oakwood Rd, Metropolis, USA', NULL);
INSERT INTO `pegawai` VALUES (19, 'Emma Garcia', '864 Cherry Cir, Springfield, USA', NULL);
INSERT INTO `pegawai` VALUES (20, 'Alexander Rodriguez', '975 Rose Ave, Gotham, USA', NULL);
INSERT INTO `pegawai` VALUES (21, 'Mia Hernandez', '741 Pinecrest Ln, Smalltown, USA', NULL);
INSERT INTO `pegawai` VALUES (22, 'Ethan Lopez', '852 Elmwood Dr, Bigcity, USA', NULL);
INSERT INTO `pegawai` VALUES (23, 'Isabella Gonzalez', '963 Birchwood Pl, Hometown, USA', NULL);
INSERT INTO `pegawai` VALUES (24, 'Jacob Wilson', '357 Willow St, Anyplace, USA', NULL);
INSERT INTO `pegawai` VALUES (25, 'Ava Perez', '468 Oakhurst Ave, Anyburg, USA', NULL);
INSERT INTO `pegawai` VALUES (26, 'Michael Walker', '579 Elmwood Ct, Mytown, USA', NULL);
INSERT INTO `pegawai` VALUES (27, 'Charlotte Lewis', '680 Maplewood Way, Yourcity, USA', NULL);
INSERT INTO `pegawai` VALUES (28, 'Liam Moore', '791 Cedarwood Ln, Theirtown, USA', NULL);
INSERT INTO `pegawai` VALUES (29, 'Amelia Hall', '802 Pinecone Dr, Outoftown, USA', NULL);
INSERT INTO `pegawai` VALUES (30, 'Benjamin Young', '913 Sprucetree Blvd, Everytown, USA', NULL);
INSERT INTO `pegawai` VALUES (31, 'Ella Scott', '124 Birchwood Dr, Nowhere, USA', NULL);
INSERT INTO `pegawai` VALUES (32, 'Daniel Green', '235 Oakwood Ln, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (33, 'Grace King', '346 Maple Ave, Anytown, USA', NULL);
INSERT INTO `pegawai` VALUES (34, 'Logan Baker', '457 Cedar Rd, Otherville, USA', NULL);
INSERT INTO `pegawai` VALUES (35, 'Chloe Hill', '568 Pine Blvd, Othertown, USA', NULL);
INSERT INTO `pegawai` VALUES (36, 'Ryan Adams', '679 Elm St, Anycity, USA', NULL);
INSERT INTO `pegawai` VALUES (37, 'Madison Campbell', '780 Oak Ave, Newville, USA', NULL);
INSERT INTO `pegawai` VALUES (38, 'Jackson Mitchell', '891 Maple Rd, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (39, 'Avery Ward', '902 Cedar Cir, Othercity, USA', NULL);
INSERT INTO `pegawai` VALUES (40, 'Sofia Flores', '113 Birchwood Rd, Townsville, USA', NULL);
INSERT INTO `pegawai` VALUES (41, 'Jack Perry', '224 Spruce Ave, Villagetown, USA', NULL);
INSERT INTO `pegawai` VALUES (42, 'Lucas Butler', '335 Oakwood Dr, Metropolis, USA', NULL);
INSERT INTO `pegawai` VALUES (43, 'Lily Turner', '446 Cherry Cir, Springfield, USA', NULL);
INSERT INTO `pegawai` VALUES (44, 'Aiden Phillips', '557 Rose Ave, Gotham, USA', NULL);
INSERT INTO `pegawai` VALUES (45, 'Zoe Russell', '668 Pinecrest Ln, Smalltown, USA', NULL);
INSERT INTO `pegawai` VALUES (46, 'Mason Watson', '779 Elmwood Dr, Bigcity, USA', NULL);
INSERT INTO `pegawai` VALUES (47, 'Madelyn Brooks', '880 Birchwood Pl, Hometown, USA', NULL);
INSERT INTO `pegawai` VALUES (48, 'Grayson Nelson', '991 Willow St, Anyplace, USA', NULL);
INSERT INTO `pegawai` VALUES (49, 'Victoria Ramirez', '102 Oakhurst Ave, Anyburg, USA', NULL);
INSERT INTO `pegawai` VALUES (50, 'Carter Evans', '213 Elmwood Ct, Mytown, USA', NULL);
INSERT INTO `pegawai` VALUES (51, 'Riley Murphy', '324 Maplewood Way, Yourcity, USA', NULL);
INSERT INTO `pegawai` VALUES (52, 'Nathan Torres', '435 Cedarwood Ln, Theirtown, USA', NULL);
INSERT INTO `pegawai` VALUES (53, 'Hannah Parker', '546 Pinecone Dr, Outoftown, USA', NULL);
INSERT INTO `pegawai` VALUES (54, 'Henry Morris', '657 Sprucetree Blvd, Everytown, USA', NULL);
INSERT INTO `pegawai` VALUES (55, 'Brooklyn Ward', '768 Birchwood Dr, Nowhere, USA', NULL);
INSERT INTO `pegawai` VALUES (56, 'Elijah Reed', '879 Oakwood Ln, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (57, 'Audrey Bell', '990 Maple Ave, Anytown, USA', NULL);
INSERT INTO `pegawai` VALUES (58, 'Luke Gutiérrez', '111 Cedar Rd, Otherville, USA', NULL);
INSERT INTO `pegawai` VALUES (59, 'Stella Price', '222 Pine Blvd, Othertown, USA', NULL);
INSERT INTO `pegawai` VALUES (60, 'Leo Brooks', '333 Elm St, Anycity, USA', NULL);
INSERT INTO `pegawai` VALUES (61, 'Scarlett Long', '444 Oak Ave, Newville, USA', NULL);
INSERT INTO `pegawai` VALUES (62, 'Nathaniel Wood', '555 Maple Rd, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (63, 'Addison Coleman', '666 Cedar Cir, Othercity, USA', NULL);
INSERT INTO `pegawai` VALUES (64, 'Gabriel Rivera', '777 Birchwood Rd, Townsville, USA', NULL);
INSERT INTO `pegawai` VALUES (65, 'Aubrey West', '888 Spruce Ave, Villagetown, USA', NULL);
INSERT INTO `pegawai` VALUES (66, 'Mila Flores', '999 Oakwood Dr, Metropolis, USA', NULL);
INSERT INTO `pegawai` VALUES (67, 'Isaac Patterson', '110 Cherry Cir, Springfield, USA', NULL);
INSERT INTO `pegawai` VALUES (68, 'Aria Simmons', '221 Rose Ave, Gotham, USA', NULL);
INSERT INTO `pegawai` VALUES (69, 'Evan Foster', '332 Pinecrest Ln, Smalltown, USA', NULL);
INSERT INTO `pegawai` VALUES (70, 'Ariana Gonzales', '443 Elmwood Dr, Bigcity, USA', NULL);
INSERT INTO `pegawai` VALUES (71, 'Nicholas Bryant', '554 Birchwood Pl, Hometown, USA', NULL);
INSERT INTO `pegawai` VALUES (72, 'Claire Hayes', '665 Willow St, Anyplace, USA', NULL);
INSERT INTO `pegawai` VALUES (73, 'Julian Cox', '776 Oakhurst Ave, Anyburg, USA', NULL);
INSERT INTO `pegawai` VALUES (74, 'Penelope McDonald', '887 Elmwood Ct, Mytown, USA', NULL);
INSERT INTO `pegawai` VALUES (75, 'Thomas Washington', '998 Maplewood Way, Yourcity, USA', NULL);
INSERT INTO `pegawai` VALUES (76, 'Leah Reed', '109 Cedarwood Ln, Theirtown, USA', NULL);
INSERT INTO `pegawai` VALUES (77, 'Hudson Hughes', '210 Pinecone Dr, Outoftown, USA', NULL);
INSERT INTO `pegawai` VALUES (78, 'Caroline Price', '321 Sprucetree Blvd, Everytown, USA', NULL);
INSERT INTO `pegawai` VALUES (79, 'Christian Carter', '432 Birchwood Dr, Nowhere, USA', NULL);
INSERT INTO `pegawai` VALUES (80, 'Ellie Mitchell', '543 Oakwood Ln, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (81, 'Aaron Perez', '654 Maple Ave, Anytown, USA', NULL);
INSERT INTO `pegawai` VALUES (82, 'Anna Stewart', '765 Cedar Rd, Otherville, USA', NULL);
INSERT INTO `pegawai` VALUES (83, 'Eliana Rogers', '876 Pine Blvd, Othertown, USA', NULL);
INSERT INTO `pegawai` VALUES (84, 'Cooper Diaz', '987 Elm St, Anycity, USA', NULL);
INSERT INTO `pegawai` VALUES (85, 'Layla Bell', '109 Oak Ave, Newville, USA', NULL);
INSERT INTO `pegawai` VALUES (86, 'Miles Richardson', '210 Maple Rd, Sometown, USA', NULL);
INSERT INTO `pegawai` VALUES (87, 'Eva Bailey', '321 Cedar Cir, Othercity, USA', NULL);
INSERT INTO `pegawai` VALUES (88, 'Mateo Barnes', '432 Birchwood Rd, Townsville, USA', NULL);
INSERT INTO `pegawai` VALUES (89, 'Hazel Ross', '543 Spruce Ave, Villagetown, USA', NULL);
INSERT INTO `pegawai` VALUES (90, 'Parker Coleman', '654 Oakwood Dr, Metropolis, USA', NULL);
INSERT INTO `pegawai` VALUES (91, 'Audrey Ward', '765 Cherry Cir, Springfield, USA', NULL);
INSERT INTO `pegawai` VALUES (92, 'Jeremiah Gonzales', '876 Rose Ave, Gotham, USA', NULL);
INSERT INTO `pegawai` VALUES (93, 'Maria Wright', '987 Pinecrest Ln, Smalltown, USA', NULL);
INSERT INTO `pegawai` VALUES (94, 'Jaxon Hill', '109 Elmwood Dr, Bigcity, USA', NULL);
INSERT INTO `pegawai` VALUES (95, 'Aaliyah Mitchell', '210 Birchwood Pl, Hometown, USA', NULL);
INSERT INTO `pegawai` VALUES (96, 'Tristan King', '321 Willow St, Anyplace, USA', NULL);
INSERT INTO `pegawai` VALUES (97, 'Bella Green', '432 Oakhurst Ave, Anyburg, USA', NULL);
INSERT INTO `pegawai` VALUES (98, 'Brayden Baker', '543 Elmwood Ct, Mytown, USA', NULL);
INSERT INTO `pegawai` VALUES (99, 'Violet Parker', '654 Maplewood Way, Yourcity, USA', NULL);
INSERT INTO `pegawai` VALUES (100, 'Jasmine Wright', '765 Cedarwood Ln, Theirtown, USA', NULL);
INSERT INTO `pegawai` VALUES (101, 'Emmett Perez', '876 Pinecone Dr, Outoftown, USA', NULL);
INSERT INTO `pegawai` VALUES (102, 'Summer Cox', '987 Sprucetree Blvd, Everytown, USA', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `hak_akses` enum('Admin','HR') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'user1', '$2y$10$qMonPc4qq4y5XShEyZZ9e.c0pRyya5KznDWcW7bFHuM5zqA2hCAMG', 'HRD', 'Indonesia', 'Admin');
INSERT INTO `users` VALUES (2, 'reza', '$2y$10$hLdCRF4RLN4TxFgycBGFPO9EF6p/SR8i6MzpXu0ZWYFX0.1s7hX5F6', 'Reza Fabriza Lesmana', 'JL.Kartini VIIA No.3', 'Admin');
INSERT INTO `users` VALUES (3, 'fabriza', '$2y$10$hLdCRF4RLN4TxFgycBGFPO9EF6p/SR8i6MzpXu0ZWYFX0.1s7hX5F6', 'Reza Fabriza Lesmana', 'Komplek AKPOl BLOK C NO.2', 'Admin');
INSERT INTO `users` VALUES (4, 'rezalesmana', '$2y$10$pNljKHONlghimyN7ttVpPeQ4sCPBV//aOFtV0V3afaoRwyk90cT9G', 'Reza Fabriza Lesmana', 'Jl. Maleer utara', 'HR');

SET FOREIGN_KEY_CHECKS = 1;
