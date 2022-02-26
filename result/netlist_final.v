/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Sun Nov 14 18:33:42 2021
/////////////////////////////////////////////////////////////


module MyDesign ( dut_run, dut_busy, reset_b, clk, dut_sram_write_address, 
        dut_sram_write_data, dut_sram_write_enable, dut_sram_read_address, 
        sram_dut_read_data, dut_wmem_read_address, wmem_dut_read_data );
  output [11:0] dut_sram_write_address;
  output [15:0] dut_sram_write_data;
  output [11:0] dut_sram_read_address;
  input [15:0] sram_dut_read_data;
  output [11:0] dut_wmem_read_address;
  input [15:0] wmem_dut_read_data;
  input dut_run, reset_b, clk;
  output dut_busy, dut_sram_write_enable;
  wire   N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N336, n208, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n664, n665, n666, n667, n668, n669, n670,
         n671, n672, n673, n674, n675, n676, n677, n678, n679, n680, n681,
         n682, n683, n684, n685, n686, n687, n688, n689, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n721, n722, n723, n724, n725, n726, n727,
         n728, n729, n730, n731, n732, n733, n734, n735, n736, n737, n738,
         n739, n740, n741, n742, n743, n744, n745, n746, n747, n748, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1085,
         n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095,
         n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [15:0] SizeCount;
  wire   [15:0] dataCC;
  wire   [15:0] dataAA;
  wire   [15:0] matrix_size;
  wire   [8:0] weight_matrix;
  wire   [15:0] dataBB;
  wire   [15:0] dataA;
  wire   [15:0] dataB;
  wire   [15:0] dataC;
  wire   [8:0] weight;

  DFF_X1 dataCC_reg_15_ ( .D(sram_dut_read_data[15]), .CK(clk), .Q(dataCC[15])
         );
  DFF_X1 dataBB_reg_15_ ( .D(dataCC[15]), .CK(clk), .Q(dataBB[15]) );
  DFF_X1 dataCC_reg_14_ ( .D(sram_dut_read_data[14]), .CK(clk), .Q(dataCC[14])
         );
  DFF_X1 dataBB_reg_14_ ( .D(dataCC[14]), .CK(clk), .Q(dataBB[14]) );
  DFF_X1 dataCC_reg_13_ ( .D(sram_dut_read_data[13]), .CK(clk), .Q(dataCC[13])
         );
  DFF_X1 dataBB_reg_13_ ( .D(dataCC[13]), .CK(clk), .Q(dataBB[13]) );
  DFF_X1 dataCC_reg_12_ ( .D(sram_dut_read_data[12]), .CK(clk), .Q(dataCC[12])
         );
  DFF_X1 dataBB_reg_12_ ( .D(dataCC[12]), .CK(clk), .Q(dataBB[12]) );
  DFF_X1 dataCC_reg_11_ ( .D(sram_dut_read_data[11]), .CK(clk), .Q(dataCC[11])
         );
  DFF_X1 dataBB_reg_11_ ( .D(dataCC[11]), .CK(clk), .Q(dataBB[11]) );
  DFF_X1 dataCC_reg_10_ ( .D(sram_dut_read_data[10]), .CK(clk), .Q(dataCC[10])
         );
  DFF_X1 dataBB_reg_10_ ( .D(dataCC[10]), .CK(clk), .Q(dataBB[10]) );
  DFF_X1 dataCC_reg_9_ ( .D(sram_dut_read_data[9]), .CK(clk), .Q(dataCC[9]) );
  DFF_X1 dataBB_reg_9_ ( .D(dataCC[9]), .CK(clk), .Q(dataBB[9]) );
  DFF_X1 dataCC_reg_8_ ( .D(sram_dut_read_data[8]), .CK(clk), .Q(dataCC[8]) );
  DFF_X1 dataBB_reg_8_ ( .D(dataCC[8]), .CK(clk), .Q(dataBB[8]) );
  DFF_X1 dataCC_reg_7_ ( .D(sram_dut_read_data[7]), .CK(clk), .Q(dataCC[7]) );
  DFF_X1 dataBB_reg_7_ ( .D(dataCC[7]), .CK(clk), .Q(dataBB[7]) );
  DFF_X1 dataCC_reg_6_ ( .D(sram_dut_read_data[6]), .CK(clk), .Q(dataCC[6]) );
  DFF_X1 dataBB_reg_6_ ( .D(dataCC[6]), .CK(clk), .Q(dataBB[6]) );
  DFF_X1 dataCC_reg_5_ ( .D(sram_dut_read_data[5]), .CK(clk), .Q(dataCC[5]) );
  DFF_X1 dataBB_reg_5_ ( .D(dataCC[5]), .CK(clk), .Q(dataBB[5]) );
  DFF_X1 dataCC_reg_4_ ( .D(sram_dut_read_data[4]), .CK(clk), .Q(dataCC[4]) );
  DFF_X1 dataBB_reg_4_ ( .D(dataCC[4]), .CK(clk), .Q(dataBB[4]) );
  DFF_X1 dataCC_reg_3_ ( .D(sram_dut_read_data[3]), .CK(clk), .Q(dataCC[3]) );
  DFF_X1 dataBB_reg_3_ ( .D(dataCC[3]), .CK(clk), .Q(dataBB[3]) );
  DFF_X1 dataCC_reg_2_ ( .D(sram_dut_read_data[2]), .CK(clk), .Q(dataCC[2]) );
  DFF_X1 dataBB_reg_2_ ( .D(dataCC[2]), .CK(clk), .Q(dataBB[2]) );
  DFF_X1 dataCC_reg_1_ ( .D(sram_dut_read_data[1]), .CK(clk), .Q(dataCC[1]) );
  DFF_X1 dataBB_reg_1_ ( .D(dataCC[1]), .CK(clk), .Q(dataBB[1]) );
  DFF_X1 dataCC_reg_0_ ( .D(sram_dut_read_data[0]), .CK(clk), .Q(dataCC[0]) );
  DFF_X1 dataBB_reg_0_ ( .D(dataCC[0]), .CK(clk), .Q(dataBB[0]) );
  DFF_X1 dataAA_reg_15_ ( .D(dataBB[15]), .CK(clk), .Q(dataAA[15]) );
  DFF_X1 dataAA_reg_14_ ( .D(dataBB[14]), .CK(clk), .Q(dataAA[14]) );
  DFF_X1 dataAA_reg_13_ ( .D(dataBB[13]), .CK(clk), .Q(dataAA[13]) );
  DFF_X1 dataAA_reg_12_ ( .D(dataBB[12]), .CK(clk), .Q(dataAA[12]) );
  DFF_X1 dataAA_reg_11_ ( .D(dataBB[11]), .CK(clk), .QN(n1151) );
  DFF_X1 dataAA_reg_10_ ( .D(dataBB[10]), .CK(clk), .Q(dataAA[10]) );
  DFF_X1 dataAA_reg_9_ ( .D(dataBB[9]), .CK(clk), .Q(dataAA[9]) );
  DFF_X1 dataAA_reg_8_ ( .D(dataBB[8]), .CK(clk), .Q(dataAA[8]) );
  DFF_X1 dataAA_reg_7_ ( .D(dataBB[7]), .CK(clk), .QN(n1150) );
  DFF_X1 dataAA_reg_6_ ( .D(dataBB[6]), .CK(clk), .Q(dataAA[6]) );
  DFF_X1 dataAA_reg_5_ ( .D(dataBB[5]), .CK(clk), .Q(dataAA[5]) );
  DFF_X1 dataAA_reg_4_ ( .D(dataBB[4]), .CK(clk), .Q(dataAA[4]) );
  DFF_X1 dataAA_reg_3_ ( .D(dataBB[3]), .CK(clk), .QN(n1149) );
  DFF_X1 dataAA_reg_2_ ( .D(dataBB[2]), .CK(clk), .Q(dataAA[2]) );
  DFF_X1 dataAA_reg_1_ ( .D(dataBB[1]), .CK(clk), .Q(dataAA[1]) );
  DFF_X1 dataAA_reg_0_ ( .D(dataBB[0]), .CK(clk), .Q(dataAA[0]) );
  DFF_X1 SizeCount_reg_0_ ( .D(n294), .CK(clk), .Q(SizeCount[0]), .QN(n1153)
         );
  DFF_X1 matrix_size_reg_0_ ( .D(n233), .CK(clk), .Q(matrix_size[0]) );
  DFF_X1 matrix_size_reg_1_ ( .D(n232), .CK(clk), .Q(matrix_size[1]), .QN(
        n1162) );
  DFF_X1 matrix_size_reg_2_ ( .D(n231), .CK(clk), .QN(n1152) );
  DFF_X1 matrix_size_reg_3_ ( .D(n230), .CK(clk), .Q(matrix_size[3]) );
  DFF_X1 matrix_size_reg_4_ ( .D(n229), .CK(clk), .Q(matrix_size[4]), .QN(
        n1163) );
  DFF_X1 matrix_size_reg_5_ ( .D(n228), .CK(clk), .Q(matrix_size[5]) );
  DFF_X1 matrix_size_reg_6_ ( .D(n227), .CK(clk), .Q(matrix_size[6]), .QN(
        n1156) );
  DFF_X1 matrix_size_reg_7_ ( .D(n226), .CK(clk), .Q(matrix_size[7]) );
  DFF_X1 matrix_size_reg_8_ ( .D(n225), .CK(clk), .Q(matrix_size[8]), .QN(
        n1159) );
  DFF_X1 matrix_size_reg_9_ ( .D(n224), .CK(clk), .Q(matrix_size[9]) );
  DFF_X1 matrix_size_reg_10_ ( .D(n223), .CK(clk), .Q(matrix_size[10]), .QN(
        n1157) );
  DFF_X1 matrix_size_reg_11_ ( .D(n222), .CK(clk), .Q(matrix_size[11]) );
  DFF_X1 matrix_size_reg_12_ ( .D(n221), .CK(clk), .Q(matrix_size[12]), .QN(
        n1160) );
  DFF_X1 matrix_size_reg_13_ ( .D(n220), .CK(clk), .Q(matrix_size[13]) );
  DFF_X1 matrix_size_reg_14_ ( .D(n219), .CK(clk), .Q(matrix_size[14]), .QN(
        n1161) );
  DFF_X1 matrix_size_reg_15_ ( .D(n218), .CK(clk), .Q(matrix_size[15]), .QN(
        n1158) );
  DFF_X1 SizeCount_reg_15_ ( .D(n293), .CK(clk), .Q(SizeCount[15]) );
  DFF_X1 SizeCount_reg_1_ ( .D(n256), .CK(clk), .Q(SizeCount[1]), .QN(n1148)
         );
  DFF_X1 SizeCount_reg_2_ ( .D(n255), .CK(clk), .Q(SizeCount[2]) );
  DFF_X1 SizeCount_reg_3_ ( .D(n254), .CK(clk), .Q(SizeCount[3]) );
  DFF_X1 SizeCount_reg_4_ ( .D(n253), .CK(clk), .Q(SizeCount[4]), .QN(n1154)
         );
  DFF_X1 SizeCount_reg_5_ ( .D(n252), .CK(clk), .Q(SizeCount[5]) );
  DFF_X1 SizeCount_reg_6_ ( .D(n251), .CK(clk), .Q(SizeCount[6]) );
  DFF_X1 SizeCount_reg_7_ ( .D(n250), .CK(clk), .Q(SizeCount[7]) );
  DFF_X1 SizeCount_reg_8_ ( .D(n249), .CK(clk), .Q(SizeCount[8]), .QN(n1155)
         );
  DFF_X1 SizeCount_reg_9_ ( .D(n248), .CK(clk), .Q(SizeCount[9]) );
  DFF_X1 SizeCount_reg_10_ ( .D(n247), .CK(clk), .Q(SizeCount[10]) );
  DFF_X1 SizeCount_reg_11_ ( .D(n246), .CK(clk), .Q(SizeCount[11]) );
  DFF_X1 SizeCount_reg_12_ ( .D(n245), .CK(clk), .Q(SizeCount[12]) );
  DFF_X1 SizeCount_reg_13_ ( .D(n244), .CK(clk), .Q(SizeCount[13]) );
  DFF_X1 SizeCount_reg_14_ ( .D(n243), .CK(clk), .QN(n1138) );
  DFF_X1 weight_matrix_reg_0_ ( .D(n242), .CK(clk), .Q(weight_matrix[0]) );
  DFF_X1 weight_matrix_reg_1_ ( .D(n241), .CK(clk), .Q(weight_matrix[1]) );
  DFF_X1 weight_matrix_reg_2_ ( .D(n240), .CK(clk), .Q(weight_matrix[2]) );
  DFF_X1 weight_matrix_reg_3_ ( .D(n239), .CK(clk), .Q(weight_matrix[3]) );
  DFF_X1 weight_matrix_reg_4_ ( .D(n238), .CK(clk), .Q(weight_matrix[4]) );
  DFF_X1 weight_matrix_reg_5_ ( .D(n237), .CK(clk), .Q(weight_matrix[5]) );
  DFF_X1 weight_matrix_reg_6_ ( .D(n236), .CK(clk), .Q(weight_matrix[6]) );
  DFF_X1 weight_matrix_reg_7_ ( .D(n235), .CK(clk), .Q(weight_matrix[7]) );
  DFF_X1 weight_matrix_reg_8_ ( .D(n234), .CK(clk), .Q(weight_matrix[8]) );
  DFF_X1 weight_reg_8_ ( .D(n217), .CK(clk), .Q(weight[8]), .QN(n1075) );
  DFF_X1 weight_reg_7_ ( .D(n216), .CK(clk), .Q(weight[7]), .QN(n1165) );
  DFF_X1 weight_reg_6_ ( .D(n215), .CK(clk), .Q(n1074), .QN(n1086) );
  DFF_X1 weight_reg_5_ ( .D(n214), .CK(clk), .Q(n1079), .QN(n1087) );
  DFF_X1 weight_reg_4_ ( .D(n213), .CK(clk), .Q(weight[4]), .QN(n1076) );
  DFF_X1 weight_reg_3_ ( .D(n212), .CK(clk), .Q(weight[3]), .QN(n1166) );
  DFF_X1 weight_reg_2_ ( .D(n211), .CK(clk), .Q(weight[2]), .QN(n1077) );
  DFF_X1 weight_reg_1_ ( .D(n210), .CK(clk), .Q(weight[1]), .QN(n1073) );
  DFF_X1 weight_reg_0_ ( .D(n208), .CK(clk), .Q(weight[0]), .QN(n1164) );
  DFF_X1 dataA_reg_15_ ( .D(N304), .CK(clk), .Q(dataA[15]) );
  DFF_X1 dataA_reg_14_ ( .D(N303), .CK(clk), .Q(dataA[14]) );
  DFF_X1 dataA_reg_13_ ( .D(N302), .CK(clk), .Q(dataA[13]), .QN(n1121) );
  DFF_X1 dataA_reg_12_ ( .D(N301), .CK(clk), .Q(dataA[12]), .QN(n1118) );
  DFF_X1 dataA_reg_11_ ( .D(N300), .CK(clk), .Q(dataA[11]), .QN(n1115) );
  DFF_X1 dataA_reg_10_ ( .D(N299), .CK(clk), .Q(dataA[10]), .QN(n1112) );
  DFF_X1 dataA_reg_9_ ( .D(N298), .CK(clk), .Q(dataA[9]), .QN(n1109) );
  DFF_X1 dataA_reg_8_ ( .D(N297), .CK(clk), .Q(dataA[8]), .QN(n1106) );
  DFF_X1 dataA_reg_7_ ( .D(N296), .CK(clk), .Q(dataA[7]), .QN(n1103) );
  DFF_X1 dataA_reg_6_ ( .D(N295), .CK(clk), .Q(dataA[6]), .QN(n1100) );
  DFF_X1 dataA_reg_5_ ( .D(N294), .CK(clk), .Q(dataA[5]), .QN(n1097) );
  DFF_X1 dataA_reg_4_ ( .D(N293), .CK(clk), .Q(dataA[4]), .QN(n1094) );
  DFF_X1 dataA_reg_3_ ( .D(N292), .CK(clk), .Q(dataA[3]), .QN(n1091) );
  DFF_X1 dataA_reg_2_ ( .D(N291), .CK(clk), .Q(dataA[2]), .QN(n1088) );
  DFF_X1 dataA_reg_1_ ( .D(N290), .CK(clk), .Q(dataA[1]) );
  DFF_X1 dataA_reg_0_ ( .D(N289), .CK(clk), .Q(dataA[0]) );
  DFF_X1 dataB_reg_15_ ( .D(N320), .CK(clk), .Q(dataB[15]) );
  DFF_X1 dataB_reg_14_ ( .D(N319), .CK(clk), .Q(dataB[14]) );
  DFF_X1 dataB_reg_13_ ( .D(N318), .CK(clk), .Q(dataB[13]), .QN(n1123) );
  DFF_X1 dataB_reg_12_ ( .D(N317), .CK(clk), .Q(dataB[12]), .QN(n1120) );
  DFF_X1 dataB_reg_11_ ( .D(N316), .CK(clk), .Q(dataB[11]), .QN(n1117) );
  DFF_X1 dataB_reg_10_ ( .D(N315), .CK(clk), .Q(dataB[10]), .QN(n1114) );
  DFF_X1 dataB_reg_9_ ( .D(N314), .CK(clk), .Q(dataB[9]), .QN(n1111) );
  DFF_X1 dataB_reg_8_ ( .D(N313), .CK(clk), .Q(dataB[8]), .QN(n1108) );
  DFF_X1 dataB_reg_7_ ( .D(N312), .CK(clk), .Q(dataB[7]), .QN(n1105) );
  DFF_X1 dataB_reg_6_ ( .D(N311), .CK(clk), .Q(dataB[6]), .QN(n1102) );
  DFF_X1 dataB_reg_5_ ( .D(N310), .CK(clk), .Q(dataB[5]), .QN(n1099) );
  DFF_X1 dataB_reg_4_ ( .D(N309), .CK(clk), .Q(dataB[4]), .QN(n1096) );
  DFF_X1 dataB_reg_3_ ( .D(N308), .CK(clk), .Q(dataB[3]), .QN(n1093) );
  DFF_X1 dataB_reg_2_ ( .D(N307), .CK(clk), .Q(dataB[2]), .QN(n1090) );
  DFF_X1 dataB_reg_1_ ( .D(N306), .CK(clk), .Q(dataB[1]) );
  DFF_X1 dataB_reg_0_ ( .D(N305), .CK(clk), .Q(dataB[0]) );
  DFF_X1 dataC_reg_15_ ( .D(N336), .CK(clk), .Q(dataC[15]) );
  DFF_X1 dataC_reg_14_ ( .D(N335), .CK(clk), .Q(dataC[14]) );
  DFF_X1 dataC_reg_13_ ( .D(N334), .CK(clk), .Q(dataC[13]), .QN(n1122) );
  DFF_X1 dataC_reg_12_ ( .D(N333), .CK(clk), .Q(dataC[12]), .QN(n1119) );
  DFF_X1 dataC_reg_11_ ( .D(N332), .CK(clk), .Q(dataC[11]), .QN(n1116) );
  DFF_X1 dataC_reg_10_ ( .D(N331), .CK(clk), .Q(dataC[10]), .QN(n1113) );
  DFF_X1 dataC_reg_9_ ( .D(N330), .CK(clk), .Q(dataC[9]), .QN(n1110) );
  DFF_X1 dataC_reg_8_ ( .D(N329), .CK(clk), .Q(dataC[8]), .QN(n1107) );
  DFF_X1 dataC_reg_7_ ( .D(N328), .CK(clk), .Q(dataC[7]), .QN(n1104) );
  DFF_X1 dataC_reg_6_ ( .D(N327), .CK(clk), .Q(dataC[6]), .QN(n1101) );
  DFF_X1 dataC_reg_5_ ( .D(N326), .CK(clk), .Q(dataC[5]), .QN(n1098) );
  DFF_X1 dataC_reg_4_ ( .D(N325), .CK(clk), .Q(dataC[4]), .QN(n1095) );
  DFF_X1 dataC_reg_3_ ( .D(N324), .CK(clk), .Q(dataC[3]), .QN(n1092) );
  DFF_X1 dataC_reg_2_ ( .D(N323), .CK(clk), .Q(dataC[2]), .QN(n1089) );
  DFF_X1 dataC_reg_1_ ( .D(N322), .CK(clk), .Q(dataC[1]) );
  DFF_X1 dataC_reg_0_ ( .D(N321), .CK(clk), .Q(dataC[0]) );
  DFFR_X1 current_state_reg_2_ ( .D(next_state[2]), .CK(clk), .RN(n426), .Q(
        current_state[2]), .QN(n1078) );
  DFFR_X1 current_state_reg_1_ ( .D(next_state[1]), .CK(clk), .RN(n426), .Q(
        current_state[1]), .QN(n1085) );
  DFFR_X1 current_state_reg_0_ ( .D(next_state[0]), .CK(clk), .RN(n426), .Q(
        current_state[0]), .QN(n1071) );
  DFFR_X1 current_state_reg_3_ ( .D(next_state[3]), .CK(clk), .RN(n426), .Q(
        current_state[3]), .QN(n1072) );
  DFF_X2 dut_sram_write_address_reg_0_ ( .D(n291), .CK(clk), .Q(
        dut_sram_write_address[0]), .QN(n1135) );
  DFF_X2 dut_wmem_read_address_reg_0_ ( .D(n267), .CK(clk), .Q(
        dut_wmem_read_address[0]), .QN(n1137) );
  DFF_X2 dut_sram_read_address_reg_0_ ( .D(n279), .CK(clk), .Q(
        dut_sram_read_address[0]), .QN(n1136) );
  DFF_X2 dut_sram_write_address_reg_11_ ( .D(n292), .CK(clk), .Q(
        dut_sram_write_address[11]) );
  DFF_X2 dut_wmem_read_address_reg_11_ ( .D(n268), .CK(clk), .Q(
        dut_wmem_read_address[11]) );
  DFF_X2 dut_sram_read_address_reg_11_ ( .D(n280), .CK(clk), .Q(
        dut_sram_read_address[11]) );
  DFF_X2 dut_sram_write_address_reg_10_ ( .D(n281), .CK(clk), .Q(
        dut_sram_write_address[10]), .QN(n1129) );
  DFF_X2 dut_wmem_read_address_reg_10_ ( .D(n257), .CK(clk), .Q(
        dut_wmem_read_address[10]), .QN(n1131) );
  DFF_X2 dut_sram_read_address_reg_10_ ( .D(n269), .CK(clk), .Q(
        dut_sram_read_address[10]), .QN(n1130) );
  DFF_X2 dut_sram_write_address_reg_9_ ( .D(n282), .CK(clk), .Q(
        dut_sram_write_address[9]), .QN(n1132) );
  DFF_X2 dut_wmem_read_address_reg_9_ ( .D(n258), .CK(clk), .Q(
        dut_wmem_read_address[9]), .QN(n1134) );
  DFF_X2 dut_sram_read_address_reg_9_ ( .D(n270), .CK(clk), .Q(
        dut_sram_read_address[9]), .QN(n1133) );
  DFF_X2 dut_sram_write_address_reg_8_ ( .D(n283), .CK(clk), .Q(
        dut_sram_write_address[8]), .QN(n1141) );
  DFF_X2 dut_sram_write_address_reg_6_ ( .D(n285), .CK(clk), .Q(
        dut_sram_write_address[6]), .QN(n1140) );
  DFF_X2 dut_sram_write_address_reg_4_ ( .D(n287), .CK(clk), .Q(
        dut_sram_write_address[4]), .QN(n1139) );
  DFF_X2 dut_wmem_read_address_reg_8_ ( .D(n259), .CK(clk), .Q(
        dut_wmem_read_address[8]), .QN(n1147) );
  DFF_X2 dut_wmem_read_address_reg_6_ ( .D(n261), .CK(clk), .Q(
        dut_wmem_read_address[6]), .QN(n1146) );
  DFF_X2 dut_wmem_read_address_reg_4_ ( .D(n263), .CK(clk), .Q(
        dut_wmem_read_address[4]), .QN(n1145) );
  DFF_X2 dut_sram_read_address_reg_8_ ( .D(n271), .CK(clk), .Q(
        dut_sram_read_address[8]), .QN(n1144) );
  DFF_X2 dut_sram_read_address_reg_6_ ( .D(n273), .CK(clk), .Q(
        dut_sram_read_address[6]), .QN(n1143) );
  DFF_X2 dut_sram_read_address_reg_4_ ( .D(n275), .CK(clk), .Q(
        dut_sram_read_address[4]), .QN(n1142) );
  DFF_X2 dut_sram_write_address_reg_7_ ( .D(n284), .CK(clk), .Q(
        dut_sram_write_address[7]), .QN(n1124) );
  DFF_X2 dut_sram_write_address_reg_5_ ( .D(n286), .CK(clk), .Q(
        dut_sram_write_address[5]), .QN(n1081) );
  DFF_X2 dut_sram_write_address_reg_3_ ( .D(n288), .CK(clk), .Q(
        dut_sram_write_address[3]), .QN(n1080) );
  DFF_X2 dut_wmem_read_address_reg_7_ ( .D(n260), .CK(clk), .Q(
        dut_wmem_read_address[7]), .QN(n1128) );
  DFF_X2 dut_wmem_read_address_reg_5_ ( .D(n262), .CK(clk), .Q(
        dut_wmem_read_address[5]), .QN(n1127) );
  DFF_X2 dut_wmem_read_address_reg_3_ ( .D(n264), .CK(clk), .Q(
        dut_wmem_read_address[3]), .QN(n1083) );
  DFF_X2 dut_sram_read_address_reg_7_ ( .D(n272), .CK(clk), .Q(
        dut_sram_read_address[7]), .QN(n1126) );
  DFF_X2 dut_sram_read_address_reg_5_ ( .D(n274), .CK(clk), .Q(
        dut_sram_read_address[5]), .QN(n1125) );
  DFF_X2 dut_sram_read_address_reg_3_ ( .D(n276), .CK(clk), .Q(
        dut_sram_read_address[3]), .QN(n1082) );
  DFF_X2 dut_sram_read_address_reg_1_ ( .D(n278), .CK(clk), .Q(
        dut_sram_read_address[1]) );
  DFF_X2 dut_wmem_read_address_reg_1_ ( .D(n266), .CK(clk), .Q(
        dut_wmem_read_address[1]) );
  DFF_X2 dut_sram_write_address_reg_1_ ( .D(n290), .CK(clk), .Q(
        dut_sram_write_address[1]) );
  DFF_X2 dut_sram_read_address_reg_2_ ( .D(n277), .CK(clk), .Q(
        dut_sram_read_address[2]) );
  DFF_X2 dut_wmem_read_address_reg_2_ ( .D(n265), .CK(clk), .Q(
        dut_wmem_read_address[2]) );
  DFF_X2 dut_sram_write_address_reg_2_ ( .D(n289), .CK(clk), .Q(
        dut_sram_write_address[2]) );
  INV_X1 U473 ( .A(n897), .ZN(n895) );
  INV_X2 U474 ( .A(n491), .ZN(dut_sram_write_data[13]) );
  AND3_X2 U475 ( .A1(n719), .A2(n718), .A3(n806), .ZN(dut_sram_write_data[8])
         );
  CLKBUF_X3 U476 ( .A(n554), .Z(dut_sram_write_data[7]) );
  CLKBUF_X3 U477 ( .A(n581), .Z(dut_sram_write_data[3]) );
  CLKBUF_X3 U478 ( .A(n635), .Z(dut_sram_write_data[5]) );
  CLKBUF_X3 U479 ( .A(n662), .Z(dut_sram_write_data[4]) );
  AND3_X2 U480 ( .A1(n778), .A2(n777), .A3(n776), .ZN(dut_sram_write_data[11])
         );
  CLKBUF_X3 U481 ( .A(n689), .Z(dut_sram_write_data[2]) );
  AND3_X2 U482 ( .A1(n808), .A2(n807), .A3(n806), .ZN(dut_sram_write_data[9])
         );
  CLKBUF_X3 U483 ( .A(n608), .Z(dut_sram_write_data[6]) );
  AND3_X2 U484 ( .A1(n748), .A2(n747), .A3(n776), .ZN(dut_sram_write_data[10])
         );
  INV_X2 U485 ( .A(n964), .ZN(n989) );
  BUF_X2 U486 ( .A(reset_b), .Z(n426) );
  INV_X2 U487 ( .A(1'b1), .ZN(dut_sram_write_data[15]) );
  INV_X2 U488 ( .A(1'b1), .ZN(dut_sram_write_data[14]) );
  OR3_X1 U491 ( .A1(n1133), .A2(n958), .A3(n964), .ZN(n962) );
  OR3_X1 U492 ( .A1(n1134), .A2(n990), .A3(n964), .ZN(n994) );
  OR3_X1 U493 ( .A1(n1132), .A2(n930), .A3(n905), .ZN(n934) );
  INV_X1 U494 ( .A(n505), .ZN(n884) );
  INV_X1 U495 ( .A(sram_dut_read_data[11]), .ZN(n523) );
  INV_X1 U496 ( .A(sram_dut_read_data[9]), .ZN(n507) );
  INV_X1 U497 ( .A(sram_dut_read_data[7]), .ZN(n498) );
  INV_X1 U498 ( .A(sram_dut_read_data[5]), .ZN(n495) );
  INV_X1 U499 ( .A(sram_dut_read_data[3]), .ZN(n501) );
  INV_X1 U500 ( .A(n961), .ZN(n963) );
  INV_X1 U501 ( .A(n993), .ZN(n995) );
  INV_X1 U502 ( .A(n739), .ZN(n736) );
  INV_X1 U503 ( .A(n481), .ZN(n477) );
  INV_X1 U504 ( .A(n965), .ZN(n984) );
  INV_X1 U505 ( .A(n1011), .ZN(n1012) );
  INV_X1 U506 ( .A(n1031), .ZN(n1036) );
  INV_X1 U507 ( .A(n1046), .ZN(n1070) );
  INV_X1 U508 ( .A(n996), .ZN(n1030) );
  AND2_X1 U509 ( .A1(n841), .A2(dut_sram_read_address[10]), .ZN(n844) );
  INV_X1 U510 ( .A(n962), .ZN(n841) );
  AND2_X1 U511 ( .A1(n837), .A2(dut_wmem_read_address[10]), .ZN(n840) );
  AND2_X1 U512 ( .A1(n845), .A2(dut_sram_write_address[10]), .ZN(n848) );
  INV_X1 U513 ( .A(n846), .ZN(n847) );
  INV_X1 U514 ( .A(n934), .ZN(n845) );
  AND2_X1 U515 ( .A1(n896), .A2(dataCC[0]), .ZN(N321) );
  AND2_X1 U516 ( .A1(n896), .A2(dataCC[1]), .ZN(N322) );
  AND2_X1 U517 ( .A1(n896), .A2(dataCC[2]), .ZN(N323) );
  AND2_X1 U518 ( .A1(n896), .A2(dataCC[3]), .ZN(N324) );
  AND2_X1 U519 ( .A1(n896), .A2(dataCC[4]), .ZN(N325) );
  AND2_X1 U520 ( .A1(n896), .A2(dataCC[5]), .ZN(N326) );
  AND2_X1 U521 ( .A1(n896), .A2(dataCC[6]), .ZN(N327) );
  AND2_X1 U522 ( .A1(n896), .A2(dataCC[7]), .ZN(N328) );
  AND2_X1 U523 ( .A1(n896), .A2(dataCC[8]), .ZN(N329) );
  AND2_X1 U524 ( .A1(n896), .A2(dataCC[9]), .ZN(N330) );
  AND2_X1 U525 ( .A1(n896), .A2(dataCC[10]), .ZN(N331) );
  AND2_X1 U526 ( .A1(n896), .A2(dataCC[11]), .ZN(N332) );
  AND2_X1 U527 ( .A1(n896), .A2(dataCC[12]), .ZN(N333) );
  AND2_X1 U528 ( .A1(n896), .A2(dataCC[13]), .ZN(N334) );
  AND2_X1 U529 ( .A1(n896), .A2(dataCC[14]), .ZN(N335) );
  AND2_X1 U530 ( .A1(n896), .A2(dataCC[15]), .ZN(N336) );
  AND2_X1 U531 ( .A1(dataBB[0]), .A2(n896), .ZN(N305) );
  AND2_X1 U532 ( .A1(dataBB[1]), .A2(n896), .ZN(N306) );
  AND2_X1 U533 ( .A1(dataBB[2]), .A2(n896), .ZN(N307) );
  AND2_X1 U534 ( .A1(dataBB[3]), .A2(n896), .ZN(N308) );
  AND2_X1 U535 ( .A1(dataBB[4]), .A2(n896), .ZN(N309) );
  AND2_X1 U536 ( .A1(dataBB[5]), .A2(n896), .ZN(N310) );
  AND2_X1 U537 ( .A1(dataBB[6]), .A2(n896), .ZN(N311) );
  AND2_X1 U538 ( .A1(dataBB[7]), .A2(n896), .ZN(N312) );
  AND2_X1 U539 ( .A1(dataBB[8]), .A2(n896), .ZN(N313) );
  AND2_X1 U540 ( .A1(dataBB[9]), .A2(n896), .ZN(N314) );
  AND2_X1 U541 ( .A1(dataBB[10]), .A2(n896), .ZN(N315) );
  AND2_X1 U542 ( .A1(dataBB[11]), .A2(n896), .ZN(N316) );
  AND2_X1 U543 ( .A1(dataBB[12]), .A2(n896), .ZN(N317) );
  AND2_X1 U544 ( .A1(dataBB[13]), .A2(n896), .ZN(N318) );
  AND2_X1 U545 ( .A1(dataBB[14]), .A2(n896), .ZN(N319) );
  AND2_X1 U546 ( .A1(dataBB[15]), .A2(n896), .ZN(N320) );
  AND2_X1 U547 ( .A1(dataAA[0]), .A2(n896), .ZN(N289) );
  AND2_X1 U548 ( .A1(dataAA[1]), .A2(n896), .ZN(N290) );
  AND2_X1 U549 ( .A1(dataAA[2]), .A2(n896), .ZN(N291) );
  AND2_X1 U550 ( .A1(dataAA[4]), .A2(n896), .ZN(N293) );
  AND2_X1 U551 ( .A1(dataAA[5]), .A2(n896), .ZN(N294) );
  AND2_X1 U552 ( .A1(dataAA[6]), .A2(n896), .ZN(N295) );
  AND2_X1 U553 ( .A1(dataAA[8]), .A2(n896), .ZN(N297) );
  AND2_X1 U554 ( .A1(dataAA[9]), .A2(n896), .ZN(N298) );
  AND2_X1 U555 ( .A1(dataAA[10]), .A2(n896), .ZN(N299) );
  AND2_X1 U556 ( .A1(dataAA[12]), .A2(n896), .ZN(N301) );
  AND2_X1 U557 ( .A1(dataAA[13]), .A2(n897), .ZN(N302) );
  AND2_X1 U558 ( .A1(dataAA[14]), .A2(n896), .ZN(N303) );
  AND2_X1 U559 ( .A1(dataAA[15]), .A2(n897), .ZN(N304) );
  INV_X1 U560 ( .A(n515), .ZN(n208) );
  INV_X1 U561 ( .A(n492), .ZN(n210) );
  INV_X1 U562 ( .A(n511), .ZN(n211) );
  INV_X1 U563 ( .A(n514), .ZN(n212) );
  INV_X1 U564 ( .A(n510), .ZN(n213) );
  INV_X1 U565 ( .A(n516), .ZN(n214) );
  INV_X1 U566 ( .A(n513), .ZN(n215) );
  INV_X1 U567 ( .A(n517), .ZN(n216) );
  INV_X1 U568 ( .A(n512), .ZN(n217) );
  INV_X1 U569 ( .A(n525), .ZN(n222) );
  INV_X1 U570 ( .A(n509), .ZN(n224) );
  INV_X1 U571 ( .A(n500), .ZN(n226) );
  INV_X1 U572 ( .A(n497), .ZN(n228) );
  INV_X1 U573 ( .A(n503), .ZN(n230) );
  INV_X1 U574 ( .A(n493), .ZN(n266) );
  INV_X1 U575 ( .A(n447), .ZN(n443) );
  INV_X1 U576 ( .A(n709), .ZN(n706) );
  INV_X1 U577 ( .A(n798), .ZN(n795) );
  INV_X1 U578 ( .A(n768), .ZN(n765) );
  INV_X1 U579 ( .A(n446), .ZN(n445) );
  INV_X1 U580 ( .A(n465), .ZN(n473) );
  INV_X1 U581 ( .A(sram_dut_read_data[13]), .ZN(n526) );
  NAND2_X1 U582 ( .A1(n442), .A2(n441), .ZN(n452) );
  INV_X1 U583 ( .A(n901), .ZN(n880) );
  INV_X1 U584 ( .A(n1023), .ZN(n1024) );
  INV_X1 U585 ( .A(n994), .ZN(n837) );
  INV_X1 U586 ( .A(n717), .ZN(n806) );
  INV_X1 U587 ( .A(n889), .ZN(n893) );
  INV_X1 U588 ( .A(n888), .ZN(n891) );
  INV_X1 U589 ( .A(n933), .ZN(n935) );
  INV_X1 U590 ( .A(n925), .ZN(n906) );
  INV_X1 U591 ( .A(n1040), .ZN(n1029) );
  INV_X1 U592 ( .A(n1047), .ZN(n1068) );
  INV_X1 U593 ( .A(n838), .ZN(n839) );
  INV_X1 U594 ( .A(n842), .ZN(n843) );
  INV_X1 U595 ( .A(n835), .ZN(n836) );
  INV_X1 U596 ( .A(n506), .ZN(n290) );
  INV_X1 U597 ( .A(n528), .ZN(n220) );
  INV_X1 U598 ( .A(n504), .ZN(n233) );
  INV_X1 U599 ( .A(n494), .ZN(n278) );
  XOR2_X1 U600 ( .A(n1075), .B(dataC[14]), .Z(n432) );
  AOI22_X1 U601 ( .A1(weight[0]), .A2(n1118), .B1(dataA[12]), .B2(n1164), .ZN(
        n431) );
  AOI22_X1 U602 ( .A1(weight[1]), .A2(n1121), .B1(dataA[13]), .B2(n1073), .ZN(
        n430) );
  AOI22_X1 U603 ( .A1(weight[4]), .A2(n1123), .B1(dataB[13]), .B2(n1076), .ZN(
        n429) );
  AOI22_X1 U604 ( .A1(n1074), .A2(n1119), .B1(dataC[12]), .B2(n1086), .ZN(n428) );
  XOR2_X1 U605 ( .A(n1077), .B(dataA[14]), .Z(n427) );
  NAND2_X1 U606 ( .A1(n434), .A2(n433), .ZN(n451) );
  FA_X1 U607 ( .A(n429), .B(n428), .CI(n427), .CO(n433), .S(n437) );
  AOI22_X1 U608 ( .A1(weight[3]), .A2(n1120), .B1(dataB[12]), .B2(n1166), .ZN(
        n440) );
  XOR2_X1 U609 ( .A(n1087), .B(dataB[14]), .Z(n439) );
  AOI22_X1 U610 ( .A1(weight[7]), .A2(n1122), .B1(dataC[13]), .B2(n1165), .ZN(
        n438) );
  FA_X1 U611 ( .A(n432), .B(n431), .CI(n430), .CO(n434), .S(n435) );
  OAI21_X1 U612 ( .B1(n434), .B2(n433), .A(n451), .ZN(n446) );
  FA_X1 U613 ( .A(n437), .B(n436), .CI(n435), .CO(n442), .S(n450) );
  FA_X1 U614 ( .A(n440), .B(n439), .CI(n438), .CO(n441), .S(n436) );
  NOR2_X1 U615 ( .A1(n442), .A2(n441), .ZN(n447) );
  NAND2_X1 U616 ( .A1(n452), .A2(n443), .ZN(n444) );
  XNOR2_X1 U617 ( .A(n445), .B(n444), .ZN(n449) );
  OAI211_X1 U618 ( .C1(n447), .C2(n446), .A(n452), .B(n451), .ZN(n448) );
  OAI21_X1 U619 ( .B1(n450), .B2(n449), .A(n448), .ZN(n453) );
  NAND2_X1 U620 ( .A1(n451), .A2(n453), .ZN(n460) );
  NAND2_X1 U621 ( .A1(n453), .A2(n452), .ZN(n459) );
  NOR4_X1 U622 ( .A1(matrix_size[13]), .A2(matrix_size[12]), .A3(
        matrix_size[11]), .A4(matrix_size[10]), .ZN(n458) );
  NOR4_X1 U623 ( .A1(matrix_size[9]), .A2(matrix_size[8]), .A3(matrix_size[7]), 
        .A4(matrix_size[6]), .ZN(n457) );
  NOR2_X1 U624 ( .A1(matrix_size[5]), .A2(matrix_size[4]), .ZN(n454) );
  NAND3_X1 U625 ( .A1(matrix_size[3]), .A2(matrix_size[1]), .A3(n454), .ZN(
        n455) );
  NOR4_X1 U626 ( .A1(matrix_size[15]), .A2(matrix_size[14]), .A3(
        matrix_size[0]), .A4(n455), .ZN(n456) );
  NAND3_X1 U627 ( .A1(n458), .A2(n457), .A3(n456), .ZN(n717) );
  NOR2_X1 U628 ( .A1(n717), .A2(n1152), .ZN(n776) );
  NAND3_X1 U629 ( .A1(n460), .A2(n459), .A3(n776), .ZN(n461) );
  INV_X4 U630 ( .A(n461), .ZN(dut_sram_write_data[12]) );
  XOR2_X1 U631 ( .A(n1075), .B(dataC[15]), .Z(n468) );
  AOI22_X1 U632 ( .A1(weight[0]), .A2(n1121), .B1(dataA[13]), .B2(n1164), .ZN(
        n467) );
  XOR2_X1 U633 ( .A(n1073), .B(dataA[14]), .Z(n466) );
  XOR2_X1 U634 ( .A(n1076), .B(dataB[14]), .Z(n464) );
  AOI22_X1 U635 ( .A1(n1074), .A2(n1122), .B1(dataC[13]), .B2(n1086), .ZN(n463) );
  XOR2_X1 U636 ( .A(n1077), .B(dataA[15]), .Z(n462) );
  NAND2_X1 U637 ( .A1(n476), .A2(n475), .ZN(n486) );
  FA_X1 U638 ( .A(n464), .B(n463), .CI(n462), .CO(n475), .S(n471) );
  AOI22_X1 U639 ( .A1(weight[3]), .A2(n1123), .B1(dataB[13]), .B2(n1166), .ZN(
        n474) );
  XNOR2_X1 U640 ( .A(n1087), .B(dataB[15]), .ZN(n465) );
  XOR2_X1 U641 ( .A(n1165), .B(dataC[14]), .Z(n472) );
  FA_X1 U642 ( .A(n468), .B(n467), .CI(n466), .CO(n476), .S(n469) );
  FA_X1 U643 ( .A(n471), .B(n470), .CI(n469), .CO(n480), .S(n485) );
  FA_X1 U644 ( .A(n474), .B(n473), .CI(n472), .CO(n479), .S(n470) );
  NAND2_X1 U645 ( .A1(n480), .A2(n479), .ZN(n488) );
  OAI21_X1 U646 ( .B1(n480), .B2(n479), .A(n488), .ZN(n478) );
  OAI21_X1 U647 ( .B1(n476), .B2(n475), .A(n486), .ZN(n481) );
  XNOR2_X1 U648 ( .A(n478), .B(n477), .ZN(n484) );
  NOR2_X1 U649 ( .A1(n480), .A2(n479), .ZN(n482) );
  OAI211_X1 U650 ( .C1(n482), .C2(n481), .A(n488), .B(n486), .ZN(n483) );
  OAI21_X1 U651 ( .B1(n485), .B2(n484), .A(n483), .ZN(n487) );
  NAND2_X1 U652 ( .A1(n486), .A2(n487), .ZN(n490) );
  NAND2_X1 U653 ( .A1(n488), .A2(n487), .ZN(n489) );
  NAND3_X1 U654 ( .A1(n490), .A2(n489), .A3(n776), .ZN(n491) );
  AOI221_X1 U655 ( .B1(n1078), .B2(current_state[1]), .C1(current_state[2]), 
        .C2(n1085), .A(n1072), .ZN(n897) );
  OAI22_X1 U656 ( .A1(n897), .A2(weight[1]), .B1(weight_matrix[1]), .B2(n895), 
        .ZN(n492) );
  NOR3_X1 U657 ( .A1(current_state[1]), .A2(current_state[2]), .A3(
        current_state[3]), .ZN(n964) );
  NAND2_X1 U658 ( .A1(n1071), .A2(n964), .ZN(n965) );
  OAI21_X1 U659 ( .B1(n964), .B2(dut_wmem_read_address[0]), .A(n965), .ZN(n967) );
  NOR2_X1 U660 ( .A1(n964), .A2(dut_wmem_read_address[1]), .ZN(n966) );
  AOI22_X1 U661 ( .A1(dut_wmem_read_address[1]), .A2(n967), .B1(
        dut_wmem_read_address[0]), .B2(n966), .ZN(n493) );
  OAI21_X1 U662 ( .B1(n964), .B2(dut_sram_read_address[0]), .A(n965), .ZN(n937) );
  NOR2_X1 U663 ( .A1(n964), .A2(dut_sram_read_address[1]), .ZN(n936) );
  AOI22_X1 U664 ( .A1(dut_sram_read_address[1]), .A2(n937), .B1(
        dut_sram_read_address[0]), .B2(n936), .ZN(n494) );
  NOR2_X1 U665 ( .A1(n1085), .A2(current_state[0]), .ZN(n505) );
  OAI221_X1 U666 ( .B1(n1072), .B2(n505), .C1(current_state[3]), .C2(n884), 
        .A(n1078), .ZN(n1046) );
  NOR2_X1 U667 ( .A1(n1046), .A2(n964), .ZN(n1047) );
  NOR2_X1 U668 ( .A1(sram_dut_read_data[1]), .A2(sram_dut_read_data[2]), .ZN(
        n1048) );
  NAND2_X1 U669 ( .A1(n1048), .A2(n501), .ZN(n1051) );
  NOR2_X1 U670 ( .A1(sram_dut_read_data[4]), .A2(n1051), .ZN(n1050) );
  NAND2_X1 U671 ( .A1(n1050), .A2(n495), .ZN(n1054) );
  OAI21_X1 U672 ( .B1(n1050), .B2(n495), .A(n1054), .ZN(n496) );
  AOI22_X1 U673 ( .A1(n1047), .A2(n496), .B1(matrix_size[5]), .B2(n1046), .ZN(
        n497) );
  NOR2_X1 U674 ( .A1(sram_dut_read_data[6]), .A2(n1054), .ZN(n1053) );
  NAND2_X1 U675 ( .A1(n1053), .A2(n498), .ZN(n1057) );
  OAI21_X1 U676 ( .B1(n1053), .B2(n498), .A(n1057), .ZN(n499) );
  AOI22_X1 U677 ( .A1(n1047), .A2(n499), .B1(matrix_size[7]), .B2(n1046), .ZN(
        n500) );
  OAI21_X1 U678 ( .B1(n1048), .B2(n501), .A(n1051), .ZN(n502) );
  AOI22_X1 U679 ( .A1(n1047), .A2(n502), .B1(matrix_size[3]), .B2(n1046), .ZN(
        n503) );
  AOI22_X1 U680 ( .A1(sram_dut_read_data[0]), .A2(n1047), .B1(matrix_size[0]), 
        .B2(n1046), .ZN(n504) );
  NOR2_X1 U681 ( .A1(n1072), .A2(current_state[2]), .ZN(n881) );
  AOI22_X1 U682 ( .A1(n897), .A2(current_state[0]), .B1(n505), .B2(n881), .ZN(
        n905) );
  AOI22_X1 U683 ( .A1(current_state[0]), .A2(n897), .B1(n881), .B2(n1071), 
        .ZN(n925) );
  OAI21_X1 U684 ( .B1(n905), .B2(dut_sram_write_address[0]), .A(n906), .ZN(
        n908) );
  NOR2_X1 U685 ( .A1(n905), .A2(dut_sram_write_address[1]), .ZN(n907) );
  AOI22_X1 U686 ( .A1(dut_sram_write_address[1]), .A2(n908), .B1(
        dut_sram_write_address[0]), .B2(n907), .ZN(n506) );
  NOR2_X1 U687 ( .A1(sram_dut_read_data[8]), .A2(n1057), .ZN(n1056) );
  NAND2_X1 U688 ( .A1(n1056), .A2(n507), .ZN(n1060) );
  OAI21_X1 U689 ( .B1(n1056), .B2(n507), .A(n1060), .ZN(n508) );
  AOI22_X1 U690 ( .A1(n1047), .A2(n508), .B1(matrix_size[9]), .B2(n1046), .ZN(
        n509) );
  INV_X4 U691 ( .A(n895), .ZN(n896) );
  OAI22_X1 U692 ( .A1(n896), .A2(weight[4]), .B1(weight_matrix[4]), .B2(n895), 
        .ZN(n510) );
  OAI22_X1 U693 ( .A1(n896), .A2(weight[2]), .B1(weight_matrix[2]), .B2(n895), 
        .ZN(n511) );
  OAI22_X1 U694 ( .A1(n896), .A2(weight[8]), .B1(weight_matrix[8]), .B2(n895), 
        .ZN(n512) );
  OAI22_X1 U695 ( .A1(n896), .A2(n1074), .B1(weight_matrix[6]), .B2(n895), 
        .ZN(n513) );
  OAI22_X1 U696 ( .A1(n896), .A2(weight[3]), .B1(weight_matrix[3]), .B2(n895), 
        .ZN(n514) );
  OAI22_X1 U697 ( .A1(n896), .A2(weight[0]), .B1(weight_matrix[0]), .B2(n895), 
        .ZN(n515) );
  OAI22_X1 U698 ( .A1(n896), .A2(n1079), .B1(weight_matrix[5]), .B2(n895), 
        .ZN(n516) );
  OAI22_X1 U699 ( .A1(n896), .A2(weight[7]), .B1(weight_matrix[7]), .B2(n895), 
        .ZN(n517) );
  AOI21_X1 U700 ( .B1(current_state[2]), .B2(current_state[1]), .A(
        current_state[3]), .ZN(n996) );
  NOR2_X1 U701 ( .A1(n1085), .A2(n1071), .ZN(n889) );
  NOR4_X1 U702 ( .A1(dataCC[15]), .A2(dataCC[14]), .A3(dataCC[13]), .A4(
        dataCC[12]), .ZN(n521) );
  NOR4_X1 U703 ( .A1(dataCC[11]), .A2(dataCC[10]), .A3(dataCC[9]), .A4(
        dataCC[8]), .ZN(n520) );
  NOR4_X1 U704 ( .A1(dataCC[7]), .A2(dataCC[6]), .A3(dataCC[5]), .A4(dataCC[4]), .ZN(n519) );
  NOR4_X1 U705 ( .A1(dataCC[3]), .A2(dataCC[2]), .A3(dataCC[1]), .A4(dataCC[0]), .ZN(n518) );
  NAND4_X1 U706 ( .A1(n521), .A2(n520), .A3(n519), .A4(n518), .ZN(n892) );
  AOI222_X1 U707 ( .A1(current_state[0]), .A2(current_state[2]), .B1(n1030), 
        .B2(n893), .C1(current_state[3]), .C2(n892), .ZN(n522) );
  INV_X2 U708 ( .A(n522), .ZN(dut_busy) );
  NOR2_X1 U709 ( .A1(sram_dut_read_data[10]), .A2(n1060), .ZN(n1059) );
  NAND2_X1 U710 ( .A1(n1059), .A2(n523), .ZN(n1063) );
  OAI21_X1 U711 ( .B1(n1059), .B2(n523), .A(n1063), .ZN(n524) );
  AOI22_X1 U712 ( .A1(n1047), .A2(n524), .B1(matrix_size[11]), .B2(n1046), 
        .ZN(n525) );
  NOR2_X1 U713 ( .A1(sram_dut_read_data[12]), .A2(n1063), .ZN(n1062) );
  NAND2_X1 U714 ( .A1(n1062), .A2(n526), .ZN(n1065) );
  OAI21_X1 U715 ( .B1(n1062), .B2(n526), .A(n1065), .ZN(n527) );
  AOI22_X1 U716 ( .A1(n1047), .A2(n527), .B1(matrix_size[13]), .B2(n1046), 
        .ZN(n528) );
  INV_X4 U717 ( .A(n905), .ZN(dut_sram_write_enable) );
  AOI22_X1 U718 ( .A1(weight[8]), .A2(n1110), .B1(dataC[9]), .B2(n1075), .ZN(
        n534) );
  AOI22_X1 U719 ( .A1(weight[0]), .A2(n1103), .B1(dataA[7]), .B2(n1164), .ZN(
        n533) );
  AOI22_X1 U720 ( .A1(weight[1]), .A2(n1106), .B1(dataA[8]), .B2(n1073), .ZN(
        n532) );
  AOI22_X1 U721 ( .A1(weight[4]), .A2(n1108), .B1(dataB[8]), .B2(n1076), .ZN(
        n531) );
  AOI22_X1 U722 ( .A1(n1074), .A2(n1104), .B1(dataC[7]), .B2(n1086), .ZN(n530)
         );
  AOI22_X1 U723 ( .A1(weight[2]), .A2(n1109), .B1(dataA[9]), .B2(n1077), .ZN(
        n529) );
  NAND2_X1 U724 ( .A1(n542), .A2(n541), .ZN(n553) );
  FA_X1 U725 ( .A(n531), .B(n530), .CI(n529), .CO(n541), .S(n540) );
  AOI22_X1 U726 ( .A1(weight[3]), .A2(n1105), .B1(dataB[7]), .B2(n1166), .ZN(
        n537) );
  AOI22_X1 U727 ( .A1(n1079), .A2(n1111), .B1(dataB[9]), .B2(n1087), .ZN(n536)
         );
  AOI22_X1 U728 ( .A1(weight[7]), .A2(n1107), .B1(dataC[8]), .B2(n1165), .ZN(
        n535) );
  FA_X1 U729 ( .A(n534), .B(n533), .CI(n532), .CO(n542), .S(n538) );
  FA_X1 U730 ( .A(n537), .B(n536), .CI(n535), .CO(n544), .S(n539) );
  NAND2_X1 U731 ( .A1(n545), .A2(n544), .ZN(n552) );
  FA_X1 U732 ( .A(n540), .B(n539), .CI(n538), .CO(n545), .S(n550) );
  OAI21_X1 U733 ( .B1(n542), .B2(n541), .A(n553), .ZN(n546) );
  OAI21_X1 U734 ( .B1(n545), .B2(n544), .A(n552), .ZN(n543) );
  XOR2_X1 U735 ( .A(n546), .B(n543), .Z(n549) );
  NOR2_X1 U736 ( .A1(n545), .A2(n544), .ZN(n547) );
  OAI211_X1 U737 ( .C1(n547), .C2(n546), .A(n552), .B(n553), .ZN(n548) );
  OAI21_X1 U738 ( .B1(n550), .B2(n549), .A(n548), .ZN(n551) );
  OAI21_X1 U739 ( .B1(n553), .B2(n552), .A(n551), .ZN(n554) );
  AOI22_X1 U740 ( .A1(weight[8]), .A2(n1098), .B1(dataC[5]), .B2(n1075), .ZN(
        n561) );
  AOI22_X1 U741 ( .A1(weight[0]), .A2(n1091), .B1(dataA[3]), .B2(n1164), .ZN(
        n560) );
  AOI22_X1 U742 ( .A1(weight[1]), .A2(n1094), .B1(dataA[4]), .B2(n1073), .ZN(
        n559) );
  AOI22_X1 U743 ( .A1(weight[4]), .A2(n1096), .B1(dataB[4]), .B2(n1076), .ZN(
        n558) );
  AOI22_X1 U744 ( .A1(n1074), .A2(n1092), .B1(dataC[3]), .B2(n1086), .ZN(n557)
         );
  AOI22_X1 U745 ( .A1(weight[2]), .A2(n1097), .B1(dataA[5]), .B2(n1077), .ZN(
        n556) );
  NAND2_X1 U746 ( .A1(n569), .A2(n568), .ZN(n580) );
  FA_X1 U747 ( .A(n558), .B(n557), .CI(n556), .CO(n568), .S(n567) );
  AOI22_X1 U748 ( .A1(weight[3]), .A2(n1093), .B1(dataB[3]), .B2(n1166), .ZN(
        n564) );
  AOI22_X1 U749 ( .A1(n1079), .A2(n1099), .B1(dataB[5]), .B2(n1087), .ZN(n563)
         );
  AOI22_X1 U750 ( .A1(weight[7]), .A2(n1095), .B1(dataC[4]), .B2(n1165), .ZN(
        n562) );
  FA_X1 U751 ( .A(n561), .B(n560), .CI(n559), .CO(n569), .S(n565) );
  FA_X1 U752 ( .A(n564), .B(n563), .CI(n562), .CO(n571), .S(n566) );
  NAND2_X1 U753 ( .A1(n572), .A2(n571), .ZN(n579) );
  FA_X1 U754 ( .A(n567), .B(n566), .CI(n565), .CO(n572), .S(n577) );
  OAI21_X1 U755 ( .B1(n569), .B2(n568), .A(n580), .ZN(n573) );
  OAI21_X1 U756 ( .B1(n572), .B2(n571), .A(n579), .ZN(n570) );
  XOR2_X1 U757 ( .A(n573), .B(n570), .Z(n576) );
  NOR2_X1 U758 ( .A1(n572), .A2(n571), .ZN(n574) );
  OAI211_X1 U759 ( .C1(n574), .C2(n573), .A(n579), .B(n580), .ZN(n575) );
  OAI21_X1 U760 ( .B1(n577), .B2(n576), .A(n575), .ZN(n578) );
  OAI21_X1 U761 ( .B1(n580), .B2(n579), .A(n578), .ZN(n581) );
  AOI22_X1 U762 ( .A1(weight[8]), .A2(n1107), .B1(dataC[8]), .B2(n1075), .ZN(
        n588) );
  AOI22_X1 U763 ( .A1(weight[0]), .A2(n1100), .B1(dataA[6]), .B2(n1164), .ZN(
        n587) );
  AOI22_X1 U764 ( .A1(weight[1]), .A2(n1103), .B1(dataA[7]), .B2(n1073), .ZN(
        n586) );
  AOI22_X1 U765 ( .A1(weight[4]), .A2(n1105), .B1(dataB[7]), .B2(n1076), .ZN(
        n585) );
  AOI22_X1 U766 ( .A1(n1074), .A2(n1101), .B1(dataC[6]), .B2(n1086), .ZN(n584)
         );
  AOI22_X1 U767 ( .A1(weight[2]), .A2(n1106), .B1(dataA[8]), .B2(n1077), .ZN(
        n583) );
  NAND2_X1 U768 ( .A1(n596), .A2(n595), .ZN(n607) );
  FA_X1 U769 ( .A(n585), .B(n584), .CI(n583), .CO(n595), .S(n594) );
  AOI22_X1 U770 ( .A1(weight[3]), .A2(n1102), .B1(dataB[6]), .B2(n1166), .ZN(
        n591) );
  AOI22_X1 U771 ( .A1(n1079), .A2(n1108), .B1(dataB[8]), .B2(n1087), .ZN(n590)
         );
  AOI22_X1 U772 ( .A1(weight[7]), .A2(n1104), .B1(dataC[7]), .B2(n1165), .ZN(
        n589) );
  FA_X1 U773 ( .A(n588), .B(n587), .CI(n586), .CO(n596), .S(n592) );
  FA_X1 U774 ( .A(n591), .B(n590), .CI(n589), .CO(n598), .S(n593) );
  NAND2_X1 U775 ( .A1(n599), .A2(n598), .ZN(n606) );
  FA_X1 U776 ( .A(n594), .B(n593), .CI(n592), .CO(n599), .S(n604) );
  OAI21_X1 U777 ( .B1(n596), .B2(n595), .A(n607), .ZN(n600) );
  OAI21_X1 U778 ( .B1(n599), .B2(n598), .A(n606), .ZN(n597) );
  XOR2_X1 U779 ( .A(n600), .B(n597), .Z(n603) );
  NOR2_X1 U780 ( .A1(n599), .A2(n598), .ZN(n601) );
  OAI211_X1 U781 ( .C1(n601), .C2(n600), .A(n606), .B(n607), .ZN(n602) );
  OAI21_X1 U782 ( .B1(n604), .B2(n603), .A(n602), .ZN(n605) );
  OAI21_X1 U783 ( .B1(n607), .B2(n606), .A(n605), .ZN(n608) );
  AOI22_X1 U784 ( .A1(weight[8]), .A2(n1104), .B1(dataC[7]), .B2(n1075), .ZN(
        n615) );
  AOI22_X1 U785 ( .A1(weight[0]), .A2(n1097), .B1(dataA[5]), .B2(n1164), .ZN(
        n614) );
  AOI22_X1 U786 ( .A1(weight[1]), .A2(n1100), .B1(dataA[6]), .B2(n1073), .ZN(
        n613) );
  AOI22_X1 U787 ( .A1(weight[4]), .A2(n1102), .B1(dataB[6]), .B2(n1076), .ZN(
        n612) );
  AOI22_X1 U788 ( .A1(n1074), .A2(n1098), .B1(dataC[5]), .B2(n1086), .ZN(n611)
         );
  AOI22_X1 U789 ( .A1(weight[2]), .A2(n1103), .B1(dataA[7]), .B2(n1077), .ZN(
        n610) );
  NAND2_X1 U790 ( .A1(n623), .A2(n622), .ZN(n634) );
  FA_X1 U791 ( .A(n612), .B(n611), .CI(n610), .CO(n622), .S(n621) );
  AOI22_X1 U792 ( .A1(weight[3]), .A2(n1099), .B1(dataB[5]), .B2(n1166), .ZN(
        n618) );
  AOI22_X1 U793 ( .A1(n1079), .A2(n1105), .B1(dataB[7]), .B2(n1087), .ZN(n617)
         );
  AOI22_X1 U794 ( .A1(weight[7]), .A2(n1101), .B1(dataC[6]), .B2(n1165), .ZN(
        n616) );
  FA_X1 U795 ( .A(n615), .B(n614), .CI(n613), .CO(n623), .S(n619) );
  FA_X1 U796 ( .A(n618), .B(n617), .CI(n616), .CO(n625), .S(n620) );
  NAND2_X1 U797 ( .A1(n626), .A2(n625), .ZN(n633) );
  FA_X1 U798 ( .A(n621), .B(n620), .CI(n619), .CO(n626), .S(n631) );
  OAI21_X1 U799 ( .B1(n623), .B2(n622), .A(n634), .ZN(n627) );
  OAI21_X1 U800 ( .B1(n626), .B2(n625), .A(n633), .ZN(n624) );
  XOR2_X1 U801 ( .A(n627), .B(n624), .Z(n630) );
  NOR2_X1 U802 ( .A1(n626), .A2(n625), .ZN(n628) );
  OAI211_X1 U803 ( .C1(n628), .C2(n627), .A(n633), .B(n634), .ZN(n629) );
  OAI21_X1 U804 ( .B1(n631), .B2(n630), .A(n629), .ZN(n632) );
  OAI21_X1 U805 ( .B1(n634), .B2(n633), .A(n632), .ZN(n635) );
  AOI22_X1 U806 ( .A1(weight[8]), .A2(n1101), .B1(dataC[6]), .B2(n1075), .ZN(
        n642) );
  AOI22_X1 U807 ( .A1(weight[0]), .A2(n1094), .B1(dataA[4]), .B2(n1164), .ZN(
        n641) );
  AOI22_X1 U808 ( .A1(weight[1]), .A2(n1097), .B1(dataA[5]), .B2(n1073), .ZN(
        n640) );
  AOI22_X1 U809 ( .A1(weight[4]), .A2(n1099), .B1(dataB[5]), .B2(n1076), .ZN(
        n639) );
  AOI22_X1 U810 ( .A1(n1074), .A2(n1095), .B1(dataC[4]), .B2(n1086), .ZN(n638)
         );
  AOI22_X1 U811 ( .A1(weight[2]), .A2(n1100), .B1(dataA[6]), .B2(n1077), .ZN(
        n637) );
  NAND2_X1 U812 ( .A1(n650), .A2(n649), .ZN(n661) );
  FA_X1 U813 ( .A(n639), .B(n638), .CI(n637), .CO(n649), .S(n648) );
  AOI22_X1 U814 ( .A1(weight[3]), .A2(n1096), .B1(dataB[4]), .B2(n1166), .ZN(
        n645) );
  AOI22_X1 U815 ( .A1(n1079), .A2(n1102), .B1(dataB[6]), .B2(n1087), .ZN(n644)
         );
  AOI22_X1 U816 ( .A1(weight[7]), .A2(n1098), .B1(dataC[5]), .B2(n1165), .ZN(
        n643) );
  FA_X1 U817 ( .A(n642), .B(n641), .CI(n640), .CO(n650), .S(n646) );
  FA_X1 U818 ( .A(n645), .B(n644), .CI(n643), .CO(n652), .S(n647) );
  NAND2_X1 U819 ( .A1(n653), .A2(n652), .ZN(n660) );
  FA_X1 U820 ( .A(n648), .B(n647), .CI(n646), .CO(n653), .S(n658) );
  OAI21_X1 U821 ( .B1(n650), .B2(n649), .A(n661), .ZN(n654) );
  OAI21_X1 U822 ( .B1(n653), .B2(n652), .A(n660), .ZN(n651) );
  XOR2_X1 U823 ( .A(n654), .B(n651), .Z(n657) );
  NOR2_X1 U824 ( .A1(n653), .A2(n652), .ZN(n655) );
  OAI211_X1 U825 ( .C1(n655), .C2(n654), .A(n660), .B(n661), .ZN(n656) );
  OAI21_X1 U826 ( .B1(n658), .B2(n657), .A(n656), .ZN(n659) );
  OAI21_X1 U827 ( .B1(n661), .B2(n660), .A(n659), .ZN(n662) );
  AOI22_X1 U828 ( .A1(weight[8]), .A2(n1095), .B1(dataC[4]), .B2(n1075), .ZN(
        n669) );
  AOI22_X1 U829 ( .A1(weight[0]), .A2(n1088), .B1(dataA[2]), .B2(n1164), .ZN(
        n668) );
  AOI22_X1 U830 ( .A1(weight[1]), .A2(n1091), .B1(dataA[3]), .B2(n1073), .ZN(
        n667) );
  AOI22_X1 U831 ( .A1(weight[4]), .A2(n1093), .B1(dataB[3]), .B2(n1076), .ZN(
        n666) );
  AOI22_X1 U832 ( .A1(n1074), .A2(n1089), .B1(dataC[2]), .B2(n1086), .ZN(n665)
         );
  AOI22_X1 U833 ( .A1(weight[2]), .A2(n1094), .B1(dataA[4]), .B2(n1077), .ZN(
        n664) );
  NAND2_X1 U834 ( .A1(n677), .A2(n676), .ZN(n688) );
  FA_X1 U835 ( .A(n666), .B(n665), .CI(n664), .CO(n676), .S(n675) );
  AOI22_X1 U836 ( .A1(weight[3]), .A2(n1090), .B1(dataB[2]), .B2(n1166), .ZN(
        n672) );
  AOI22_X1 U837 ( .A1(n1079), .A2(n1096), .B1(dataB[4]), .B2(n1087), .ZN(n671)
         );
  AOI22_X1 U838 ( .A1(weight[7]), .A2(n1092), .B1(dataC[3]), .B2(n1165), .ZN(
        n670) );
  FA_X1 U839 ( .A(n669), .B(n668), .CI(n667), .CO(n677), .S(n673) );
  FA_X1 U840 ( .A(n672), .B(n671), .CI(n670), .CO(n679), .S(n674) );
  NAND2_X1 U841 ( .A1(n680), .A2(n679), .ZN(n687) );
  FA_X1 U842 ( .A(n675), .B(n674), .CI(n673), .CO(n680), .S(n685) );
  OAI21_X1 U843 ( .B1(n677), .B2(n676), .A(n688), .ZN(n681) );
  OAI21_X1 U844 ( .B1(n680), .B2(n679), .A(n687), .ZN(n678) );
  XOR2_X1 U845 ( .A(n681), .B(n678), .Z(n684) );
  NOR2_X1 U846 ( .A1(n680), .A2(n679), .ZN(n682) );
  OAI211_X1 U847 ( .C1(n682), .C2(n681), .A(n687), .B(n688), .ZN(n683) );
  OAI21_X1 U848 ( .B1(n685), .B2(n684), .A(n683), .ZN(n686) );
  OAI21_X1 U849 ( .B1(n688), .B2(n687), .A(n686), .ZN(n689) );
  AOI22_X1 U850 ( .A1(weight[8]), .A2(n1113), .B1(dataC[10]), .B2(n1075), .ZN(
        n696) );
  AOI22_X1 U851 ( .A1(weight[0]), .A2(n1106), .B1(dataA[8]), .B2(n1164), .ZN(
        n695) );
  AOI22_X1 U852 ( .A1(weight[1]), .A2(n1109), .B1(dataA[9]), .B2(n1073), .ZN(
        n694) );
  AOI22_X1 U853 ( .A1(weight[4]), .A2(n1111), .B1(dataB[9]), .B2(n1076), .ZN(
        n693) );
  AOI22_X1 U854 ( .A1(n1074), .A2(n1107), .B1(dataC[8]), .B2(n1086), .ZN(n692)
         );
  AOI22_X1 U855 ( .A1(weight[2]), .A2(n1112), .B1(dataA[10]), .B2(n1077), .ZN(
        n691) );
  NAND2_X1 U856 ( .A1(n698), .A2(n697), .ZN(n714) );
  FA_X1 U857 ( .A(n693), .B(n692), .CI(n691), .CO(n697), .S(n701) );
  AOI22_X1 U858 ( .A1(weight[3]), .A2(n1108), .B1(dataB[8]), .B2(n1166), .ZN(
        n704) );
  AOI22_X1 U859 ( .A1(n1079), .A2(n1114), .B1(dataB[10]), .B2(n1087), .ZN(n703) );
  AOI22_X1 U860 ( .A1(weight[7]), .A2(n1110), .B1(dataC[9]), .B2(n1165), .ZN(
        n702) );
  FA_X1 U861 ( .A(n696), .B(n695), .CI(n694), .CO(n698), .S(n699) );
  OAI21_X1 U862 ( .B1(n698), .B2(n697), .A(n714), .ZN(n709) );
  FA_X1 U863 ( .A(n701), .B(n700), .CI(n699), .CO(n708), .S(n713) );
  FA_X1 U864 ( .A(n704), .B(n703), .CI(n702), .CO(n707), .S(n700) );
  NAND2_X1 U865 ( .A1(n708), .A2(n707), .ZN(n716) );
  OAI21_X1 U866 ( .B1(n708), .B2(n707), .A(n716), .ZN(n705) );
  XNOR2_X1 U867 ( .A(n706), .B(n705), .ZN(n712) );
  NOR2_X1 U868 ( .A1(n708), .A2(n707), .ZN(n710) );
  OAI211_X1 U869 ( .C1(n710), .C2(n709), .A(n716), .B(n714), .ZN(n711) );
  OAI21_X1 U870 ( .B1(n713), .B2(n712), .A(n711), .ZN(n715) );
  NAND2_X1 U871 ( .A1(n714), .A2(n715), .ZN(n719) );
  NAND2_X1 U872 ( .A1(n716), .A2(n715), .ZN(n718) );
  AOI22_X1 U873 ( .A1(weight[8]), .A2(n1119), .B1(dataC[12]), .B2(n1075), .ZN(
        n726) );
  AOI22_X1 U874 ( .A1(weight[0]), .A2(n1112), .B1(dataA[10]), .B2(n1164), .ZN(
        n725) );
  AOI22_X1 U875 ( .A1(weight[1]), .A2(n1115), .B1(dataA[11]), .B2(n1073), .ZN(
        n724) );
  AOI22_X1 U876 ( .A1(weight[4]), .A2(n1117), .B1(dataB[11]), .B2(n1076), .ZN(
        n723) );
  AOI22_X1 U877 ( .A1(n1074), .A2(n1113), .B1(dataC[10]), .B2(n1086), .ZN(n722) );
  AOI22_X1 U878 ( .A1(weight[2]), .A2(n1118), .B1(dataA[12]), .B2(n1077), .ZN(
        n721) );
  NAND2_X1 U879 ( .A1(n728), .A2(n727), .ZN(n744) );
  FA_X1 U880 ( .A(n723), .B(n722), .CI(n721), .CO(n727), .S(n731) );
  AOI22_X1 U881 ( .A1(weight[3]), .A2(n1114), .B1(dataB[10]), .B2(n1166), .ZN(
        n734) );
  AOI22_X1 U882 ( .A1(n1079), .A2(n1120), .B1(dataB[12]), .B2(n1087), .ZN(n733) );
  AOI22_X1 U883 ( .A1(weight[7]), .A2(n1116), .B1(dataC[11]), .B2(n1165), .ZN(
        n732) );
  FA_X1 U884 ( .A(n726), .B(n725), .CI(n724), .CO(n728), .S(n729) );
  OAI21_X1 U885 ( .B1(n728), .B2(n727), .A(n744), .ZN(n739) );
  FA_X1 U886 ( .A(n731), .B(n730), .CI(n729), .CO(n738), .S(n743) );
  FA_X1 U887 ( .A(n734), .B(n733), .CI(n732), .CO(n737), .S(n730) );
  NAND2_X1 U888 ( .A1(n738), .A2(n737), .ZN(n746) );
  OAI21_X1 U889 ( .B1(n738), .B2(n737), .A(n746), .ZN(n735) );
  XNOR2_X1 U890 ( .A(n736), .B(n735), .ZN(n742) );
  NOR2_X1 U891 ( .A1(n738), .A2(n737), .ZN(n740) );
  OAI211_X1 U892 ( .C1(n740), .C2(n739), .A(n746), .B(n744), .ZN(n741) );
  OAI21_X1 U893 ( .B1(n743), .B2(n742), .A(n741), .ZN(n745) );
  NAND2_X1 U894 ( .A1(n744), .A2(n745), .ZN(n748) );
  NAND2_X1 U895 ( .A1(n746), .A2(n745), .ZN(n747) );
  AOI22_X1 U896 ( .A1(weight[8]), .A2(n1122), .B1(dataC[13]), .B2(n1075), .ZN(
        n755) );
  AOI22_X1 U897 ( .A1(weight[0]), .A2(n1115), .B1(dataA[11]), .B2(n1164), .ZN(
        n754) );
  AOI22_X1 U898 ( .A1(weight[1]), .A2(n1118), .B1(dataA[12]), .B2(n1073), .ZN(
        n753) );
  AOI22_X1 U899 ( .A1(weight[4]), .A2(n1120), .B1(dataB[12]), .B2(n1076), .ZN(
        n752) );
  AOI22_X1 U900 ( .A1(n1074), .A2(n1116), .B1(dataC[11]), .B2(n1086), .ZN(n751) );
  AOI22_X1 U901 ( .A1(weight[2]), .A2(n1121), .B1(dataA[13]), .B2(n1077), .ZN(
        n750) );
  NAND2_X1 U902 ( .A1(n757), .A2(n756), .ZN(n773) );
  FA_X1 U903 ( .A(n752), .B(n751), .CI(n750), .CO(n756), .S(n760) );
  AOI22_X1 U904 ( .A1(weight[3]), .A2(n1117), .B1(dataB[11]), .B2(n1166), .ZN(
        n763) );
  AOI22_X1 U905 ( .A1(n1079), .A2(n1123), .B1(dataB[13]), .B2(n1087), .ZN(n762) );
  AOI22_X1 U906 ( .A1(weight[7]), .A2(n1119), .B1(dataC[12]), .B2(n1165), .ZN(
        n761) );
  FA_X1 U907 ( .A(n755), .B(n754), .CI(n753), .CO(n757), .S(n758) );
  OAI21_X1 U908 ( .B1(n757), .B2(n756), .A(n773), .ZN(n768) );
  FA_X1 U909 ( .A(n760), .B(n759), .CI(n758), .CO(n767), .S(n772) );
  FA_X1 U910 ( .A(n763), .B(n762), .CI(n761), .CO(n766), .S(n759) );
  NAND2_X1 U911 ( .A1(n767), .A2(n766), .ZN(n775) );
  OAI21_X1 U912 ( .B1(n767), .B2(n766), .A(n775), .ZN(n764) );
  XNOR2_X1 U913 ( .A(n765), .B(n764), .ZN(n771) );
  NOR2_X1 U914 ( .A1(n767), .A2(n766), .ZN(n769) );
  OAI211_X1 U915 ( .C1(n769), .C2(n768), .A(n775), .B(n773), .ZN(n770) );
  OAI21_X1 U916 ( .B1(n772), .B2(n771), .A(n770), .ZN(n774) );
  NAND2_X1 U917 ( .A1(n773), .A2(n774), .ZN(n778) );
  NAND2_X1 U918 ( .A1(n775), .A2(n774), .ZN(n777) );
  AOI22_X1 U919 ( .A1(weight[8]), .A2(n1116), .B1(dataC[11]), .B2(n1075), .ZN(
        n785) );
  AOI22_X1 U920 ( .A1(weight[0]), .A2(n1109), .B1(dataA[9]), .B2(n1164), .ZN(
        n784) );
  AOI22_X1 U921 ( .A1(weight[1]), .A2(n1112), .B1(dataA[10]), .B2(n1073), .ZN(
        n783) );
  AOI22_X1 U922 ( .A1(weight[4]), .A2(n1114), .B1(dataB[10]), .B2(n1076), .ZN(
        n782) );
  AOI22_X1 U923 ( .A1(n1074), .A2(n1110), .B1(dataC[9]), .B2(n1086), .ZN(n781)
         );
  AOI22_X1 U924 ( .A1(weight[2]), .A2(n1115), .B1(dataA[11]), .B2(n1077), .ZN(
        n780) );
  NAND2_X1 U925 ( .A1(n787), .A2(n786), .ZN(n803) );
  FA_X1 U926 ( .A(n782), .B(n781), .CI(n780), .CO(n786), .S(n790) );
  AOI22_X1 U927 ( .A1(weight[3]), .A2(n1111), .B1(dataB[9]), .B2(n1166), .ZN(
        n793) );
  AOI22_X1 U928 ( .A1(n1079), .A2(n1117), .B1(dataB[11]), .B2(n1087), .ZN(n792) );
  AOI22_X1 U929 ( .A1(weight[7]), .A2(n1113), .B1(dataC[10]), .B2(n1165), .ZN(
        n791) );
  FA_X1 U930 ( .A(n785), .B(n784), .CI(n783), .CO(n787), .S(n788) );
  OAI21_X1 U931 ( .B1(n787), .B2(n786), .A(n803), .ZN(n798) );
  FA_X1 U932 ( .A(n790), .B(n789), .CI(n788), .CO(n797), .S(n802) );
  FA_X1 U933 ( .A(n793), .B(n792), .CI(n791), .CO(n796), .S(n789) );
  NAND2_X1 U934 ( .A1(n797), .A2(n796), .ZN(n805) );
  OAI21_X1 U935 ( .B1(n797), .B2(n796), .A(n805), .ZN(n794) );
  XNOR2_X1 U936 ( .A(n795), .B(n794), .ZN(n801) );
  NOR2_X1 U937 ( .A1(n797), .A2(n796), .ZN(n799) );
  OAI211_X1 U938 ( .C1(n799), .C2(n798), .A(n805), .B(n803), .ZN(n800) );
  OAI21_X1 U939 ( .B1(n802), .B2(n801), .A(n800), .ZN(n804) );
  NAND2_X1 U940 ( .A1(n803), .A2(n804), .ZN(n808) );
  NAND2_X1 U941 ( .A1(n805), .A2(n804), .ZN(n807) );
  AOI22_X1 U942 ( .A1(weight[8]), .A2(n1092), .B1(dataC[3]), .B2(n1075), .ZN(
        n815) );
  XOR2_X1 U943 ( .A(n1164), .B(dataA[1]), .Z(n814) );
  AOI22_X1 U944 ( .A1(weight[1]), .A2(n1088), .B1(dataA[2]), .B2(n1073), .ZN(
        n813) );
  AOI22_X1 U945 ( .A1(weight[4]), .A2(n1090), .B1(dataB[2]), .B2(n1076), .ZN(
        n812) );
  XOR2_X1 U946 ( .A(n1086), .B(dataC[1]), .Z(n811) );
  AOI22_X1 U947 ( .A1(weight[2]), .A2(n1091), .B1(dataA[3]), .B2(n1077), .ZN(
        n810) );
  NAND2_X1 U948 ( .A1(n823), .A2(n822), .ZN(n834) );
  FA_X1 U949 ( .A(n812), .B(n811), .CI(n810), .CO(n822), .S(n821) );
  XOR2_X1 U950 ( .A(n1166), .B(dataB[1]), .Z(n818) );
  AOI22_X1 U951 ( .A1(n1079), .A2(n1093), .B1(dataB[3]), .B2(n1087), .ZN(n817)
         );
  AOI22_X1 U952 ( .A1(weight[7]), .A2(n1089), .B1(dataC[2]), .B2(n1165), .ZN(
        n816) );
  FA_X1 U953 ( .A(n815), .B(n814), .CI(n813), .CO(n823), .S(n819) );
  FA_X1 U954 ( .A(n818), .B(n817), .CI(n816), .CO(n825), .S(n820) );
  NAND2_X1 U955 ( .A1(n826), .A2(n825), .ZN(n833) );
  FA_X1 U956 ( .A(n821), .B(n820), .CI(n819), .CO(n826), .S(n831) );
  OAI21_X1 U957 ( .B1(n823), .B2(n822), .A(n834), .ZN(n827) );
  OAI21_X1 U958 ( .B1(n826), .B2(n825), .A(n833), .ZN(n824) );
  XOR2_X1 U959 ( .A(n827), .B(n824), .Z(n830) );
  NOR2_X1 U960 ( .A1(n826), .A2(n825), .ZN(n828) );
  OAI211_X1 U961 ( .C1(n828), .C2(n827), .A(n833), .B(n834), .ZN(n829) );
  OAI21_X1 U962 ( .B1(n831), .B2(n830), .A(n829), .ZN(n832) );
  OAI21_X1 U963 ( .B1(n834), .B2(n833), .A(n832), .ZN(n835) );
  INV_X4 U964 ( .A(n836), .ZN(dut_sram_write_data[1]) );
  NAND3_X1 U965 ( .A1(dut_wmem_read_address[1]), .A2(dut_wmem_read_address[0]), 
        .A3(dut_wmem_read_address[2]), .ZN(n972) );
  NOR2_X1 U966 ( .A1(n972), .A2(n1083), .ZN(n973) );
  NAND2_X1 U967 ( .A1(n973), .A2(dut_wmem_read_address[4]), .ZN(n978) );
  NOR2_X1 U968 ( .A1(n978), .A2(n1127), .ZN(n979) );
  NAND2_X1 U969 ( .A1(n979), .A2(dut_wmem_read_address[6]), .ZN(n985) );
  NOR2_X1 U970 ( .A1(n985), .A2(n1128), .ZN(n986) );
  NAND2_X1 U971 ( .A1(n986), .A2(dut_wmem_read_address[8]), .ZN(n990) );
  AOI21_X1 U972 ( .B1(n989), .B2(n990), .A(n984), .ZN(n992) );
  OAI21_X1 U973 ( .B1(n964), .B2(dut_wmem_read_address[9]), .A(n992), .ZN(n993) );
  AOI21_X1 U974 ( .B1(n989), .B2(n1131), .A(n993), .ZN(n838) );
  MUX2_X1 U975 ( .A(n840), .B(n839), .S(dut_wmem_read_address[11]), .Z(n268)
         );
  NAND3_X1 U976 ( .A1(dut_sram_read_address[1]), .A2(dut_sram_read_address[0]), 
        .A3(dut_sram_read_address[2]), .ZN(n942) );
  NOR2_X1 U977 ( .A1(n942), .A2(n1082), .ZN(n943) );
  NAND2_X1 U978 ( .A1(n943), .A2(dut_sram_read_address[4]), .ZN(n948) );
  NOR2_X1 U979 ( .A1(n948), .A2(n1125), .ZN(n949) );
  NAND2_X1 U980 ( .A1(n949), .A2(dut_sram_read_address[6]), .ZN(n954) );
  NOR2_X1 U981 ( .A1(n954), .A2(n1126), .ZN(n955) );
  NAND2_X1 U982 ( .A1(n955), .A2(dut_sram_read_address[8]), .ZN(n958) );
  AOI21_X1 U983 ( .B1(n989), .B2(n958), .A(n984), .ZN(n960) );
  OAI21_X1 U984 ( .B1(n964), .B2(dut_sram_read_address[9]), .A(n960), .ZN(n961) );
  AOI21_X1 U985 ( .B1(n989), .B2(n1130), .A(n961), .ZN(n842) );
  MUX2_X1 U986 ( .A(n844), .B(n843), .S(dut_sram_read_address[11]), .Z(n280)
         );
  NAND3_X1 U987 ( .A1(dut_sram_write_address[1]), .A2(
        dut_sram_write_address[0]), .A3(dut_sram_write_address[2]), .ZN(n913)
         );
  NOR2_X1 U988 ( .A1(n913), .A2(n1080), .ZN(n914) );
  NAND2_X1 U989 ( .A1(dut_sram_write_address[4]), .A2(n914), .ZN(n919) );
  NOR2_X1 U990 ( .A1(n919), .A2(n1081), .ZN(n920) );
  NAND2_X1 U991 ( .A1(dut_sram_write_address[6]), .A2(n920), .ZN(n926) );
  NOR2_X1 U992 ( .A1(n926), .A2(n1124), .ZN(n927) );
  NAND2_X1 U993 ( .A1(dut_sram_write_address[8]), .A2(n927), .ZN(n930) );
  AOI21_X1 U994 ( .B1(dut_sram_write_enable), .B2(n930), .A(n925), .ZN(n932)
         );
  OAI21_X1 U995 ( .B1(n905), .B2(dut_sram_write_address[9]), .A(n932), .ZN(
        n933) );
  AOI21_X1 U996 ( .B1(dut_sram_write_enable), .B2(n1129), .A(n933), .ZN(n846)
         );
  MUX2_X1 U997 ( .A(n848), .B(n847), .S(dut_sram_write_address[11]), .Z(n292)
         );
  AOI22_X1 U998 ( .A1(weight[8]), .A2(n1089), .B1(dataC[2]), .B2(n1075), .ZN(
        n854) );
  XOR2_X1 U999 ( .A(n1164), .B(dataA[0]), .Z(n853) );
  XOR2_X1 U1000 ( .A(n1073), .B(dataA[1]), .Z(n852) );
  XOR2_X1 U1001 ( .A(n1076), .B(dataB[1]), .Z(n851) );
  XOR2_X1 U1002 ( .A(n1086), .B(dataC[0]), .Z(n850) );
  AOI22_X1 U1003 ( .A1(weight[2]), .A2(n1088), .B1(dataA[2]), .B2(n1077), .ZN(
        n849) );
  NAND2_X1 U1004 ( .A1(n862), .A2(n861), .ZN(n873) );
  FA_X1 U1005 ( .A(n851), .B(n850), .CI(n849), .CO(n861), .S(n860) );
  XOR2_X1 U1006 ( .A(n1166), .B(dataB[0]), .Z(n857) );
  AOI22_X1 U1007 ( .A1(n1079), .A2(n1090), .B1(dataB[2]), .B2(n1087), .ZN(n856) );
  XOR2_X1 U1008 ( .A(n1165), .B(dataC[1]), .Z(n855) );
  FA_X1 U1009 ( .A(n854), .B(n853), .CI(n852), .CO(n862), .S(n858) );
  FA_X1 U1010 ( .A(n857), .B(n856), .CI(n855), .CO(n864), .S(n859) );
  NAND2_X1 U1011 ( .A1(n865), .A2(n864), .ZN(n872) );
  FA_X1 U1012 ( .A(n860), .B(n859), .CI(n858), .CO(n865), .S(n870) );
  OAI21_X1 U1013 ( .B1(n862), .B2(n861), .A(n873), .ZN(n866) );
  OAI21_X1 U1014 ( .B1(n865), .B2(n864), .A(n872), .ZN(n863) );
  XOR2_X1 U1015 ( .A(n866), .B(n863), .Z(n869) );
  NOR2_X1 U1016 ( .A1(n865), .A2(n864), .ZN(n867) );
  OAI211_X1 U1017 ( .C1(n867), .C2(n866), .A(n872), .B(n873), .ZN(n868) );
  OAI21_X1 U1018 ( .B1(n870), .B2(n869), .A(n868), .ZN(n871) );
  OAI21_X1 U1019 ( .B1(n873), .B2(n872), .A(n871), .ZN(n874) );
  CLKBUF_X3 U1020 ( .A(n874), .Z(dut_sram_write_data[0]) );
  NOR2_X1 U1021 ( .A1(SizeCount[13]), .A2(SizeCount[12]), .ZN(n901) );
  NOR2_X1 U1022 ( .A1(SizeCount[5]), .A2(SizeCount[4]), .ZN(n899) );
  NAND3_X1 U1023 ( .A1(n899), .A2(SizeCount[1]), .A3(n1138), .ZN(n879) );
  NOR2_X1 U1024 ( .A1(SizeCount[11]), .A2(SizeCount[10]), .ZN(n877) );
  NOR2_X1 U1025 ( .A1(SizeCount[7]), .A2(SizeCount[6]), .ZN(n876) );
  NOR3_X1 U1026 ( .A1(SizeCount[0]), .A2(SizeCount[2]), .A3(SizeCount[3]), 
        .ZN(n875) );
  NOR2_X1 U1027 ( .A1(SizeCount[9]), .A2(SizeCount[8]), .ZN(n900) );
  NAND4_X1 U1028 ( .A1(n877), .A2(n876), .A3(n875), .A4(n900), .ZN(n878) );
  NOR4_X1 U1029 ( .A1(SizeCount[15]), .A2(n880), .A3(n879), .A4(n878), .ZN(
        n887) );
  NAND3_X1 U1030 ( .A1(current_state[1]), .A2(current_state[2]), .A3(
        current_state[3]), .ZN(n885) );
  NAND3_X1 U1031 ( .A1(current_state[0]), .A2(n881), .A3(n1085), .ZN(n883) );
  OAI21_X1 U1032 ( .B1(dut_run), .B2(n989), .A(n1071), .ZN(n882) );
  OAI221_X1 U1033 ( .B1(n887), .B2(n885), .C1(n887), .C2(n883), .A(n882), .ZN(
        next_state[0]) );
  NOR2_X1 U1034 ( .A1(current_state[1]), .A2(n1078), .ZN(n1044) );
  AOI211_X1 U1035 ( .C1(n887), .C2(n1085), .A(n1044), .B(n964), .ZN(n886) );
  OAI211_X1 U1036 ( .C1(n886), .C2(n1071), .A(n885), .B(n884), .ZN(
        next_state[1]) );
  OAI21_X1 U1037 ( .B1(n1072), .B2(n887), .A(n889), .ZN(n888) );
  OAI21_X1 U1038 ( .B1(n1072), .B2(n892), .A(n889), .ZN(n890) );
  AOI22_X1 U1039 ( .A1(current_state[2]), .A2(n891), .B1(n890), .B2(n1078), 
        .ZN(next_state[2]) );
  NOR2_X1 U1040 ( .A1(n892), .A2(n893), .ZN(n894) );
  OAI22_X1 U1041 ( .A1(n1072), .A2(n894), .B1(n1078), .B2(n893), .ZN(
        next_state[3]) );
  NOR2_X1 U1042 ( .A1(n895), .A2(n1149), .ZN(N292) );
  NOR2_X1 U1043 ( .A1(n895), .A2(n1150), .ZN(N296) );
  NOR2_X1 U1044 ( .A1(n895), .A2(n1151), .ZN(N300) );
  OAI21_X1 U1045 ( .B1(n1044), .B2(n1072), .A(n1071), .ZN(n997) );
  NOR2_X1 U1046 ( .A1(n996), .A2(n997), .ZN(n1040) );
  NAND2_X1 U1047 ( .A1(n1030), .A2(n997), .ZN(n1031) );
  NOR2_X1 U1048 ( .A1(SizeCount[0]), .A2(n1031), .ZN(n998) );
  AOI21_X1 U1049 ( .B1(n1040), .B2(dataAA[0]), .A(n998), .ZN(n898) );
  OAI21_X1 U1050 ( .B1(n1030), .B2(n1153), .A(n898), .ZN(n294) );
  NOR4_X1 U1051 ( .A1(SizeCount[1]), .A2(SizeCount[0]), .A3(SizeCount[2]), 
        .A4(SizeCount[3]), .ZN(n1008) );
  NAND2_X1 U1052 ( .A1(n1008), .A2(n899), .ZN(n1011) );
  NOR3_X1 U1053 ( .A1(SizeCount[7]), .A2(SizeCount[6]), .A3(n1011), .ZN(n1020)
         );
  NAND2_X1 U1054 ( .A1(n1020), .A2(n900), .ZN(n1023) );
  NOR3_X1 U1055 ( .A1(SizeCount[11]), .A2(SizeCount[10]), .A3(n1023), .ZN(
        n1032) );
  NAND2_X1 U1056 ( .A1(n901), .A2(n1032), .ZN(n902) );
  NOR2_X1 U1057 ( .A1(n902), .A2(n1031), .ZN(n1035) );
  NAND2_X1 U1058 ( .A1(n1035), .A2(n1138), .ZN(n1041) );
  AOI21_X1 U1059 ( .B1(n1036), .B2(n902), .A(n996), .ZN(n1043) );
  OAI21_X1 U1060 ( .B1(n1031), .B2(n1138), .A(n1043), .ZN(n903) );
  AOI22_X1 U1061 ( .A1(dataAA[15]), .A2(n1040), .B1(SizeCount[15]), .B2(n903), 
        .ZN(n904) );
  OAI21_X1 U1062 ( .B1(SizeCount[15]), .B2(n1041), .A(n904), .ZN(n293) );
  AOI22_X1 U1063 ( .A1(dut_sram_write_address[0]), .A2(n906), .B1(n905), .B2(
        n1135), .ZN(n291) );
  NAND3_X1 U1064 ( .A1(dut_sram_write_address[1]), .A2(
        dut_sram_write_address[0]), .A3(dut_sram_write_enable), .ZN(n910) );
  OAI21_X1 U1065 ( .B1(n908), .B2(n907), .A(dut_sram_write_address[2]), .ZN(
        n909) );
  OAI21_X1 U1066 ( .B1(dut_sram_write_address[2]), .B2(n910), .A(n909), .ZN(
        n289) );
  AOI21_X1 U1067 ( .B1(dut_sram_write_enable), .B2(n913), .A(n925), .ZN(n912)
         );
  NAND2_X1 U1068 ( .A1(dut_sram_write_enable), .A2(n1080), .ZN(n911) );
  OAI22_X1 U1069 ( .A1(n912), .A2(n1080), .B1(n913), .B2(n911), .ZN(n288) );
  AOI221_X1 U1070 ( .B1(n913), .B2(dut_sram_write_enable), .C1(n1080), .C2(
        dut_sram_write_enable), .A(n925), .ZN(n916) );
  NAND3_X1 U1071 ( .A1(n914), .A2(dut_sram_write_enable), .A3(n1139), .ZN(n915) );
  OAI21_X1 U1072 ( .B1(n916), .B2(n1139), .A(n915), .ZN(n287) );
  AOI21_X1 U1073 ( .B1(dut_sram_write_enable), .B2(n919), .A(n925), .ZN(n918)
         );
  NAND2_X1 U1074 ( .A1(dut_sram_write_enable), .A2(n1081), .ZN(n917) );
  OAI22_X1 U1075 ( .A1(n918), .A2(n1081), .B1(n919), .B2(n917), .ZN(n286) );
  AOI221_X1 U1076 ( .B1(n919), .B2(dut_sram_write_enable), .C1(n1081), .C2(
        dut_sram_write_enable), .A(n925), .ZN(n922) );
  NAND3_X1 U1077 ( .A1(n920), .A2(dut_sram_write_enable), .A3(n1140), .ZN(n921) );
  OAI21_X1 U1078 ( .B1(n922), .B2(n1140), .A(n921), .ZN(n285) );
  AOI21_X1 U1079 ( .B1(dut_sram_write_enable), .B2(n926), .A(n925), .ZN(n924)
         );
  NAND2_X1 U1080 ( .A1(dut_sram_write_enable), .A2(n1124), .ZN(n923) );
  OAI22_X1 U1081 ( .A1(n924), .A2(n1124), .B1(n926), .B2(n923), .ZN(n284) );
  AOI221_X1 U1082 ( .B1(n926), .B2(dut_sram_write_enable), .C1(n1124), .C2(
        dut_sram_write_enable), .A(n925), .ZN(n929) );
  NAND3_X1 U1083 ( .A1(n927), .A2(dut_sram_write_enable), .A3(n1141), .ZN(n928) );
  OAI21_X1 U1084 ( .B1(n929), .B2(n1141), .A(n928), .ZN(n283) );
  NAND2_X1 U1085 ( .A1(dut_sram_write_enable), .A2(n1132), .ZN(n931) );
  OAI22_X1 U1086 ( .A1(n932), .A2(n1132), .B1(n931), .B2(n930), .ZN(n282) );
  AOI22_X1 U1087 ( .A1(dut_sram_write_address[10]), .A2(n935), .B1(n934), .B2(
        n1129), .ZN(n281) );
  AOI22_X1 U1088 ( .A1(dut_sram_read_address[0]), .A2(n965), .B1(n964), .B2(
        n1136), .ZN(n279) );
  NAND3_X1 U1089 ( .A1(dut_sram_read_address[1]), .A2(dut_sram_read_address[0]), .A3(n989), .ZN(n939) );
  OAI21_X1 U1090 ( .B1(n937), .B2(n936), .A(dut_sram_read_address[2]), .ZN(
        n938) );
  OAI21_X1 U1091 ( .B1(dut_sram_read_address[2]), .B2(n939), .A(n938), .ZN(
        n277) );
  AOI21_X1 U1092 ( .B1(n989), .B2(n942), .A(n984), .ZN(n941) );
  NAND2_X1 U1093 ( .A1(n989), .A2(n1082), .ZN(n940) );
  OAI22_X1 U1094 ( .A1(n941), .A2(n1082), .B1(n942), .B2(n940), .ZN(n276) );
  AOI221_X1 U1095 ( .B1(n942), .B2(n989), .C1(n1082), .C2(n989), .A(n984), 
        .ZN(n945) );
  NAND3_X1 U1096 ( .A1(n943), .A2(n989), .A3(n1142), .ZN(n944) );
  OAI21_X1 U1097 ( .B1(n945), .B2(n1142), .A(n944), .ZN(n275) );
  AOI21_X1 U1098 ( .B1(n989), .B2(n948), .A(n984), .ZN(n947) );
  NAND2_X1 U1099 ( .A1(n989), .A2(n1125), .ZN(n946) );
  OAI22_X1 U1100 ( .A1(n947), .A2(n1125), .B1(n948), .B2(n946), .ZN(n274) );
  AOI221_X1 U1101 ( .B1(n948), .B2(n989), .C1(n1125), .C2(n989), .A(n984), 
        .ZN(n951) );
  NAND3_X1 U1102 ( .A1(n949), .A2(n989), .A3(n1143), .ZN(n950) );
  OAI21_X1 U1103 ( .B1(n951), .B2(n1143), .A(n950), .ZN(n273) );
  AOI21_X1 U1104 ( .B1(n989), .B2(n954), .A(n984), .ZN(n953) );
  NAND2_X1 U1105 ( .A1(n989), .A2(n1126), .ZN(n952) );
  OAI22_X1 U1106 ( .A1(n953), .A2(n1126), .B1(n954), .B2(n952), .ZN(n272) );
  AOI221_X1 U1107 ( .B1(n954), .B2(n989), .C1(n1126), .C2(n989), .A(n984), 
        .ZN(n957) );
  NAND3_X1 U1108 ( .A1(n955), .A2(n989), .A3(n1144), .ZN(n956) );
  OAI21_X1 U1109 ( .B1(n957), .B2(n1144), .A(n956), .ZN(n271) );
  NAND2_X1 U1110 ( .A1(n989), .A2(n1133), .ZN(n959) );
  OAI22_X1 U1111 ( .A1(n960), .A2(n1133), .B1(n959), .B2(n958), .ZN(n270) );
  AOI22_X1 U1112 ( .A1(dut_sram_read_address[10]), .A2(n963), .B1(n962), .B2(
        n1130), .ZN(n269) );
  AOI22_X1 U1113 ( .A1(dut_wmem_read_address[0]), .A2(n965), .B1(n964), .B2(
        n1137), .ZN(n267) );
  NAND3_X1 U1114 ( .A1(dut_wmem_read_address[1]), .A2(dut_wmem_read_address[0]), .A3(n989), .ZN(n969) );
  OAI21_X1 U1115 ( .B1(n967), .B2(n966), .A(dut_wmem_read_address[2]), .ZN(
        n968) );
  OAI21_X1 U1116 ( .B1(dut_wmem_read_address[2]), .B2(n969), .A(n968), .ZN(
        n265) );
  AOI21_X1 U1117 ( .B1(n989), .B2(n972), .A(n984), .ZN(n971) );
  NAND2_X1 U1118 ( .A1(n989), .A2(n1083), .ZN(n970) );
  OAI22_X1 U1119 ( .A1(n971), .A2(n1083), .B1(n972), .B2(n970), .ZN(n264) );
  AOI221_X1 U1120 ( .B1(n972), .B2(n989), .C1(n1083), .C2(n989), .A(n984), 
        .ZN(n975) );
  NAND3_X1 U1121 ( .A1(n973), .A2(n989), .A3(n1145), .ZN(n974) );
  OAI21_X1 U1122 ( .B1(n975), .B2(n1145), .A(n974), .ZN(n263) );
  AOI21_X1 U1123 ( .B1(n989), .B2(n978), .A(n984), .ZN(n977) );
  NAND2_X1 U1124 ( .A1(n989), .A2(n1127), .ZN(n976) );
  OAI22_X1 U1125 ( .A1(n977), .A2(n1127), .B1(n978), .B2(n976), .ZN(n262) );
  AOI221_X1 U1126 ( .B1(n978), .B2(n989), .C1(n1127), .C2(n989), .A(n984), 
        .ZN(n981) );
  NAND3_X1 U1127 ( .A1(n979), .A2(n989), .A3(n1146), .ZN(n980) );
  OAI21_X1 U1128 ( .B1(n981), .B2(n1146), .A(n980), .ZN(n261) );
  AOI21_X1 U1129 ( .B1(n989), .B2(n985), .A(n984), .ZN(n983) );
  NAND2_X1 U1130 ( .A1(n989), .A2(n1128), .ZN(n982) );
  OAI22_X1 U1131 ( .A1(n983), .A2(n1128), .B1(n985), .B2(n982), .ZN(n260) );
  AOI221_X1 U1132 ( .B1(n985), .B2(n989), .C1(n1128), .C2(n989), .A(n984), 
        .ZN(n988) );
  NAND3_X1 U1133 ( .A1(n986), .A2(n989), .A3(n1147), .ZN(n987) );
  OAI21_X1 U1134 ( .B1(n988), .B2(n1147), .A(n987), .ZN(n259) );
  NAND2_X1 U1135 ( .A1(n989), .A2(n1134), .ZN(n991) );
  OAI22_X1 U1136 ( .A1(n992), .A2(n1134), .B1(n991), .B2(n990), .ZN(n258) );
  AOI22_X1 U1137 ( .A1(dut_wmem_read_address[10]), .A2(n995), .B1(n994), .B2(
        n1131), .ZN(n257) );
  AOI21_X1 U1138 ( .B1(SizeCount[0]), .B2(n997), .A(n996), .ZN(n1000) );
  NAND2_X1 U1139 ( .A1(n998), .A2(n1148), .ZN(n1002) );
  NAND2_X1 U1140 ( .A1(n1040), .A2(dataAA[1]), .ZN(n999) );
  OAI211_X1 U1141 ( .C1(n1000), .C2(n1148), .A(n1002), .B(n999), .ZN(n256) );
  OAI21_X1 U1142 ( .B1(n1148), .B2(n1031), .A(n1000), .ZN(n1003) );
  AOI22_X1 U1143 ( .A1(SizeCount[2]), .A2(n1003), .B1(n1040), .B2(dataAA[2]), 
        .ZN(n1001) );
  OAI21_X1 U1144 ( .B1(SizeCount[2]), .B2(n1002), .A(n1001), .ZN(n255) );
  OAI221_X1 U1145 ( .B1(n1003), .B2(SizeCount[2]), .C1(n1003), .C2(n1036), .A(
        SizeCount[3]), .ZN(n1004) );
  NAND2_X1 U1146 ( .A1(n1008), .A2(n1036), .ZN(n1007) );
  OAI211_X1 U1147 ( .C1(n1029), .C2(n1149), .A(n1004), .B(n1007), .ZN(n254) );
  OAI21_X1 U1148 ( .B1(n1008), .B2(n1031), .A(n1030), .ZN(n1005) );
  AOI22_X1 U1149 ( .A1(SizeCount[4]), .A2(n1005), .B1(n1040), .B2(dataAA[4]), 
        .ZN(n1006) );
  OAI21_X1 U1150 ( .B1(SizeCount[4]), .B2(n1007), .A(n1006), .ZN(n253) );
  OAI221_X1 U1151 ( .B1(n1031), .B2(n1008), .C1(n1031), .C2(n1154), .A(n1030), 
        .ZN(n1009) );
  AOI22_X1 U1152 ( .A1(SizeCount[5]), .A2(n1009), .B1(n1040), .B2(dataAA[5]), 
        .ZN(n1010) );
  OAI21_X1 U1153 ( .B1(n1011), .B2(n1031), .A(n1010), .ZN(n252) );
  NAND2_X1 U1154 ( .A1(n1012), .A2(n1036), .ZN(n1014) );
  OAI21_X1 U1155 ( .B1(n1012), .B2(n1031), .A(n1030), .ZN(n1015) );
  AOI22_X1 U1156 ( .A1(SizeCount[6]), .A2(n1015), .B1(n1040), .B2(dataAA[6]), 
        .ZN(n1013) );
  OAI21_X1 U1157 ( .B1(SizeCount[6]), .B2(n1014), .A(n1013), .ZN(n251) );
  OAI221_X1 U1158 ( .B1(n1015), .B2(SizeCount[6]), .C1(n1015), .C2(n1036), .A(
        SizeCount[7]), .ZN(n1016) );
  NAND2_X1 U1159 ( .A1(n1020), .A2(n1036), .ZN(n1019) );
  OAI211_X1 U1160 ( .C1(n1029), .C2(n1150), .A(n1016), .B(n1019), .ZN(n250) );
  OAI21_X1 U1161 ( .B1(n1020), .B2(n1031), .A(n1030), .ZN(n1017) );
  AOI22_X1 U1162 ( .A1(SizeCount[8]), .A2(n1017), .B1(n1040), .B2(dataAA[8]), 
        .ZN(n1018) );
  OAI21_X1 U1163 ( .B1(SizeCount[8]), .B2(n1019), .A(n1018), .ZN(n249) );
  OAI221_X1 U1164 ( .B1(n1031), .B2(n1020), .C1(n1031), .C2(n1155), .A(n1030), 
        .ZN(n1021) );
  AOI22_X1 U1165 ( .A1(SizeCount[9]), .A2(n1021), .B1(n1040), .B2(dataAA[9]), 
        .ZN(n1022) );
  OAI21_X1 U1166 ( .B1(n1023), .B2(n1031), .A(n1022), .ZN(n248) );
  NAND2_X1 U1167 ( .A1(n1024), .A2(n1036), .ZN(n1026) );
  OAI21_X1 U1168 ( .B1(n1024), .B2(n1031), .A(n1030), .ZN(n1027) );
  AOI22_X1 U1169 ( .A1(SizeCount[10]), .A2(n1027), .B1(n1040), .B2(dataAA[10]), 
        .ZN(n1025) );
  OAI21_X1 U1170 ( .B1(SizeCount[10]), .B2(n1026), .A(n1025), .ZN(n247) );
  OAI221_X1 U1171 ( .B1(n1027), .B2(SizeCount[10]), .C1(n1027), .C2(n1036), 
        .A(SizeCount[11]), .ZN(n1028) );
  NAND2_X1 U1172 ( .A1(n1032), .A2(n1036), .ZN(n1034) );
  OAI211_X1 U1173 ( .C1(n1029), .C2(n1151), .A(n1028), .B(n1034), .ZN(n246) );
  OAI21_X1 U1174 ( .B1(n1032), .B2(n1031), .A(n1030), .ZN(n1037) );
  AOI22_X1 U1175 ( .A1(SizeCount[12]), .A2(n1037), .B1(n1040), .B2(dataAA[12]), 
        .ZN(n1033) );
  OAI21_X1 U1176 ( .B1(SizeCount[12]), .B2(n1034), .A(n1033), .ZN(n245) );
  AOI21_X1 U1177 ( .B1(n1040), .B2(dataAA[13]), .A(n1035), .ZN(n1039) );
  OAI221_X1 U1178 ( .B1(n1037), .B2(SizeCount[12]), .C1(n1037), .C2(n1036), 
        .A(SizeCount[13]), .ZN(n1038) );
  NAND2_X1 U1179 ( .A1(n1039), .A2(n1038), .ZN(n244) );
  NAND2_X1 U1180 ( .A1(n1040), .A2(dataAA[14]), .ZN(n1042) );
  OAI211_X1 U1181 ( .C1(n1043), .C2(n1138), .A(n1042), .B(n1041), .ZN(n243) );
  NAND3_X1 U1182 ( .A1(n1044), .A2(n1072), .A3(n1071), .ZN(n1045) );
  MUX2_X1 U1183 ( .A(wmem_dut_read_data[0]), .B(weight_matrix[0]), .S(n1045), 
        .Z(n242) );
  MUX2_X1 U1184 ( .A(wmem_dut_read_data[1]), .B(weight_matrix[1]), .S(n1045), 
        .Z(n241) );
  MUX2_X1 U1185 ( .A(wmem_dut_read_data[2]), .B(weight_matrix[2]), .S(n1045), 
        .Z(n240) );
  MUX2_X1 U1186 ( .A(wmem_dut_read_data[3]), .B(weight_matrix[3]), .S(n1045), 
        .Z(n239) );
  MUX2_X1 U1187 ( .A(wmem_dut_read_data[4]), .B(weight_matrix[4]), .S(n1045), 
        .Z(n238) );
  MUX2_X1 U1188 ( .A(wmem_dut_read_data[5]), .B(weight_matrix[5]), .S(n1045), 
        .Z(n237) );
  MUX2_X1 U1189 ( .A(wmem_dut_read_data[6]), .B(weight_matrix[6]), .S(n1045), 
        .Z(n236) );
  MUX2_X1 U1190 ( .A(wmem_dut_read_data[7]), .B(weight_matrix[7]), .S(n1045), 
        .Z(n235) );
  MUX2_X1 U1191 ( .A(wmem_dut_read_data[8]), .B(weight_matrix[8]), .S(n1045), 
        .Z(n234) );
  OAI22_X1 U1192 ( .A1(n1070), .A2(n1162), .B1(sram_dut_read_data[1]), .B2(
        n1068), .ZN(n232) );
  AOI21_X1 U1193 ( .B1(sram_dut_read_data[2]), .B2(sram_dut_read_data[1]), .A(
        n1048), .ZN(n1049) );
  OAI22_X1 U1194 ( .A1(n1070), .A2(n1152), .B1(n1049), .B2(n1068), .ZN(n231)
         );
  AOI21_X1 U1195 ( .B1(sram_dut_read_data[4]), .B2(n1051), .A(n1050), .ZN(
        n1052) );
  OAI22_X1 U1196 ( .A1(n1070), .A2(n1163), .B1(n1052), .B2(n1068), .ZN(n229)
         );
  AOI21_X1 U1197 ( .B1(sram_dut_read_data[6]), .B2(n1054), .A(n1053), .ZN(
        n1055) );
  OAI22_X1 U1198 ( .A1(n1070), .A2(n1156), .B1(n1055), .B2(n1068), .ZN(n227)
         );
  AOI21_X1 U1199 ( .B1(sram_dut_read_data[8]), .B2(n1057), .A(n1056), .ZN(
        n1058) );
  OAI22_X1 U1200 ( .A1(n1070), .A2(n1159), .B1(n1058), .B2(n1068), .ZN(n225)
         );
  AOI21_X1 U1201 ( .B1(sram_dut_read_data[10]), .B2(n1060), .A(n1059), .ZN(
        n1061) );
  OAI22_X1 U1202 ( .A1(n1070), .A2(n1157), .B1(n1061), .B2(n1068), .ZN(n223)
         );
  AOI21_X1 U1203 ( .B1(sram_dut_read_data[12]), .B2(n1063), .A(n1062), .ZN(
        n1064) );
  OAI22_X1 U1204 ( .A1(n1070), .A2(n1160), .B1(n1064), .B2(n1068), .ZN(n221)
         );
  NOR2_X1 U1205 ( .A1(sram_dut_read_data[14]), .A2(n1065), .ZN(n1067) );
  AOI21_X1 U1206 ( .B1(sram_dut_read_data[14]), .B2(n1065), .A(n1067), .ZN(
        n1066) );
  OAI22_X1 U1207 ( .A1(n1070), .A2(n1161), .B1(n1066), .B2(n1068), .ZN(n219)
         );
  XNOR2_X1 U1208 ( .A(sram_dut_read_data[15]), .B(n1067), .ZN(n1069) );
  OAI22_X1 U1209 ( .A1(n1070), .A2(n1158), .B1(n1069), .B2(n1068), .ZN(n218)
         );
endmodule

