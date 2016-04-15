//Maya ASCII 2016 scene
//Name: tan.ma
//Last modified: Wed, Apr 06, 2016 12:00:36 PM
//Codeset: 1252
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "512633E4-4228-F625-6947-D9A006288BE4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.5230921770217321 0.24839964616875798 15.064583870195342 ;
	setAttr ".r" -type "double3" 1.4616472703975134 5.000000000003725 1.2471499545486169e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "D54F107A-4FDE-DAA5-5CF2-C4804F391CB6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 18.140516702555306;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B99656D0-4424-4F1E-A545-3AAE3D62E5E2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "EAAD5462-4138-84FD-C0B0-D396FEBB35C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "464295D0-4D1F-3E22-CF7B-279B7A1FA489";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.9571107755415156 1.9497299722331813 100.13542000760101 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "66ED07B5-4EDA-435E-1E8C-F4B6839B03C2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 16.233774989204282;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "069A16FB-4CCF-1980-B5D9-B8AD4D397685";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "241DB459-45D8-80FF-216E-AABF42D44A1C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "locator1";
	rename -uid "96C42F01-47B2-2A4A-EC0E-DAB9847EA848";
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "F97B521C-4091-BD4B-1259-DD868B063B38";
	setAttr -k off ".v";
createNode transform -n "curve1";
	rename -uid "F503D235-434C-B9C6-00F4-E79EC111D338";
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "A7456B44-4DB9-3DDB-9328-C790771DA4FE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "group1";
	rename -uid "870FB29A-4D1F-CC40-0FC0-56B0CDE91F0C";
	setAttr ".rp" -type "double3" 3.9900673097177219 3.9999987836396711 -3 ;
	setAttr ".sp" -type "double3" 3.9900673097177219 3.9999987836396711 -3 ;
createNode transform -n "locator2" -p "group1";
	rename -uid "E4FCE8F0-4ADC-EF92-4291-228C04266AE1";
	setAttr ".t" -type "double3" 3 3 -3 ;
createNode locator -n "locatorShape2" -p "locator2";
	rename -uid "53D62834-4F54-A1E0-BD3D-5CA2164402B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator4" -p "group1";
	rename -uid "4507D032-4958-087E-9B58-9EB3A00B9BFD";
	setAttr ".t" -type "double3" 3.0188589265184849 2.8026766612629652 -3 ;
createNode locator -n "locatorShape4" -p "locator4";
	rename -uid "C20FBC6D-4067-175F-8898-C5B945707114";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator6" -p "group1";
	rename -uid "2E7461D4-45D1-4DB7-1FF4-11962C07234E";
	setAttr ".t" -type "double3" 3.0377666766005751 2.6185244308031081 -3 ;
createNode locator -n "locatorShape6" -p "locator6";
	rename -uid "B8DC281E-4940-8292-8692-80A2D8ADE0B5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator8" -p "group1";
	rename -uid "C6C1BACC-4D0B-23A5-755E-E2AF18F702CE";
	setAttr ".t" -type "double3" 3.0567224613205344 2.4472745105245832 -3 ;
createNode locator -n "locatorShape8" -p "locator8";
	rename -uid "579A65FE-45BE-5529-DFED-7CA56DFFBD26";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator10" -p "group1";
	rename -uid "DB7FAD9D-4BB3-1018-B381-A6B2570BF1EE";
	setAttr ".t" -type "double3" 3.0757254917526242 2.2886581023315422 -3 ;
createNode locator -n "locatorShape10" -p "locator10";
	rename -uid "A1BD191B-4D34-558D-87F2-89BA83FF953B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator12" -p "group1";
	rename -uid "21A60A05-44EE-76DB-0666-D69A5152C1B3";
	setAttr ".t" -type "double3" 3.0947749789711083 2.1424064081281422 -3 ;
createNode locator -n "locatorShape12" -p "locator12";
	rename -uid "EADA0657-412E-0F4E-A55E-64996915D47F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator14" -p "group1";
	rename -uid "B71D71D1-41DA-F26E-7BEE-78B96BA1ECEE";
	setAttr ".t" -type "double3" 3.1138701340502499 2.008250629818535 -3 ;
createNode locator -n "locatorShape14" -p "locator14";
	rename -uid "A7E6EEBC-47DE-8AF6-0F83-2E9D1C774C6A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator16" -p "group1";
	rename -uid "3F3F4D82-408A-9A25-632F-2A85C8B4C2FC";
	setAttr ".t" -type "double3" 3.1330101680643114 1.8859219693068741 -3 ;
createNode locator -n "locatorShape16" -p "locator16";
	rename -uid "107935C3-49B5-8E29-9C9D-9BBBA4E253C9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator18" -p "group1";
	rename -uid "1B295EAC-4CE5-9781-7851-65A4A4313481";
	setAttr ".t" -type "double3" 3.1521942920875552 1.7751516284973148 -3 ;
createNode locator -n "locatorShape18" -p "locator18";
	rename -uid "1A5D1FFD-4062-A127-7AD9-C7B62B225C4C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator20" -p "group1";
	rename -uid "A6D60635-4A1C-8D98-B543-77872D9A9049";
	setAttr ".t" -type "double3" 3.1714217171942445 1.6756708092940091 -3 ;
createNode locator -n "locatorShape20" -p "locator20";
	rename -uid "E07807EC-4CBE-9DBC-5CEA-C4B2BD47F25A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator22" -p "group1";
	rename -uid "28202B95-4D43-9A32-F40D-0A95E55F7A88";
	setAttr ".t" -type "double3" 3.1906916544586421 1.587210713601112 -3 ;
createNode locator -n "locatorShape22" -p "locator22";
	rename -uid "BA7B296B-4BCC-9F47-B87B-4F957E6774E2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator24" -p "group1";
	rename -uid "6D6FFF56-4FD0-D739-6CE4-7FAE10EBEC4F";
	setAttr ".t" -type "double3" 3.2100033149550105 1.5095025433227776 -3 ;
createNode locator -n "locatorShape24" -p "locator24";
	rename -uid "D62C7C01-49AA-E5CA-21BE-23A1A9EFA554";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator26" -p "group1";
	rename -uid "959E8679-4B94-0E4F-6437-6C9DCAB8169D";
	setAttr ".t" -type "double3" 3.2293559097576141 1.4422775003631594 -3 ;
createNode locator -n "locatorShape26" -p "locator26";
	rename -uid "61F0B9E5-4793-C7DE-9306-9EB5C59B57B1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator28" -p "group1";
	rename -uid "90B425B1-4DC4-8973-9E6B-0A837D3CAFE7";
	setAttr ".t" -type "double3" 3.2487486499407141 1.385266786626411 -3 ;
createNode locator -n "locatorShape28" -p "locator28";
	rename -uid "D87574A5-4A07-6055-0031-EBAB68E2E875";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator30" -p "group1";
	rename -uid "B77D1A6C-4D5A-4589-D3FF-7F95A073C4BE";
	setAttr ".t" -type "double3" 3.2681807465785746 1.3382016040166851 -3 ;
createNode locator -n "locatorShape30" -p "locator30";
	rename -uid "C66ECFAE-4CB5-830E-4CDD-BC8E5283CBAC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator32" -p "group1";
	rename -uid "F282EC59-4BEB-8242-DB0D-8FB148BE211E";
	setAttr ".t" -type "double3" 3.2876514107454571 1.3008131544381383 -3 ;
createNode locator -n "locatorShape32" -p "locator32";
	rename -uid "E9AF36B1-484E-D53C-45C3-F8817122C7A8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator34" -p "group1";
	rename -uid "7368FA7C-4F02-A249-C1EB-498EFDA72504";
	setAttr ".t" -type "double3" 3.3071598535156252 1.2728326397949221 -3 ;
createNode locator -n "locatorShape34" -p "locator34";
	rename -uid "E0DE08B2-44FA-4287-96E3-5B8FAA9FD982";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator36" -p "group1";
	rename -uid "D63834D2-4A4F-9D5F-5DDB-EFA6CE855363";
	setAttr ".t" -type "double3" 3.3267052859633415 1.2539912619911915 -3 ;
createNode locator -n "locatorShape36" -p "locator36";
	rename -uid "E537DFEE-4B03-39B2-5493-AFB0DD2FAA94";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator38" -p "group1";
	rename -uid "302B86E8-4C8D-0BBE-2D9B-29AC4057CBCA";
	setAttr ".t" -type "double3" 3.3462869191628695 1.2440202229310988 -3 ;
createNode locator -n "locatorShape38" -p "locator38";
	rename -uid "AB77F4CE-4BFC-DF61-6B18-3399A183E3D6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator40" -p "group1";
	rename -uid "6520CF90-49DB-4761-9F22-9D9952BEB108";
	setAttr ".t" -type "double3" 3.3659039641884716 1.2426507245187994 -3 ;
createNode locator -n "locatorShape40" -p "locator40";
	rename -uid "5FFDFD9F-4823-1880-ADF5-F3B4B2044411";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator42" -p "group1";
	rename -uid "7E44CADD-40A0-EDED-1430-B783998F2C8F";
	setAttr ".t" -type "double3" 3.3855556321144107 1.2496139686584469 -3 ;
createNode locator -n "locatorShape42" -p "locator42";
	rename -uid "E2E5DBE3-484C-520D-C078-E3B3EC65C885";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator44" -p "group1";
	rename -uid "9F4F20D8-4C0F-F9C0-9B2E-0999341B913C";
	setAttr ".t" -type "double3" 3.4052411340149491 1.2646411572541949 -3 ;
createNode locator -n "locatorShape44" -p "locator44";
	rename -uid "20D565B7-4335-AE71-C855-938AEC0A8241";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator46" -p "group1";
	rename -uid "FD6CD860-433B-94AA-063E-A0BF2AAEADC0";
	setAttr ".t" -type "double3" 3.4249596809643506 1.2874634922101973 -3 ;
createNode locator -n "locatorShape46" -p "locator46";
	rename -uid "0C90D2EE-4832-07C9-F7D2-8EA91BD11BD0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator48" -p "group1";
	rename -uid "14EAAE9B-4C2E-0CEE-0437-3EB7890A190A";
	setAttr ".t" -type "double3" 3.4447104840368779 1.3178121754306078 -3 ;
createNode locator -n "locatorShape48" -p "locator48";
	rename -uid "7333449B-4040-9040-BFEB-18A4670FC374";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator50" -p "group1";
	rename -uid "6C5E704D-4FB9-3C79-A5E7-0E9D0FCABD05";
	setAttr ".t" -type "double3" 3.4644927543067929 1.3554184088195804 -3 ;
createNode locator -n "locatorShape50" -p "locator50";
	rename -uid "80308CB8-434F-F381-322B-4FA82A112949";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator52" -p "group1";
	rename -uid "7E49584C-4AF6-6102-4E6F-548B749D6998";
	setAttr ".t" -type "double3" 3.4843057028483599 1.4000133942812683 -3 ;
createNode locator -n "locatorShape52" -p "locator52";
	rename -uid "E812B1E5-458D-E6D9-0D59-7F9494E50ACE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator54" -p "group1";
	rename -uid "7BA95647-491E-6771-DF6A-D68B9819334C";
	setAttr ".t" -type "double3" 3.5041485407358413 1.4513283337198264 -3 ;
createNode locator -n "locatorShape54" -p "locator54";
	rename -uid "DF527562-48CE-58DD-0D17-469982A1DE66";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator56" -p "group1";
	rename -uid "865084DE-4836-EB8B-C93A-DBB24845C4F8";
	setAttr ".t" -type "double3" 3.5240204790434988 1.5090944290394062 -3 ;
createNode locator -n "locatorShape56" -p "locator56";
	rename -uid "6D05251F-4B88-E4B0-CC8A-66AFBDE01FD4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator58" -p "group1";
	rename -uid "D585729B-44D8-F027-2B49-A4B3F263D890";
	setAttr ".t" -type "double3" 3.5439207288455967 1.5730428821441647 -3 ;
createNode locator -n "locatorShape58" -p "locator58";
	rename -uid "1B3047AB-4ACB-7F5C-98C2-81B8B097F9FB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator60" -p "group1";
	rename -uid "22E50336-4B01-92D7-82B0-57AF36917783";
	setAttr ".t" -type "double3" 3.5638485012163965 1.6429048949382548 -3 ;
createNode locator -n "locatorShape60" -p "locator60";
	rename -uid "8DD41326-4837-E5D0-D447-199A3E535177";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator62" -p "group1";
	rename -uid "768E8AF9-42E9-7B8F-719A-AEA8B0B7C59D";
	setAttr ".t" -type "double3" 3.5838030072301623 1.7184116693258298 -3 ;
createNode locator -n "locatorShape62" -p "locator62";
	rename -uid "D2A8CF67-4EEB-4214-BCFD-C0B0562E46CC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator64" -p "group1";
	rename -uid "9DE9CDF0-4027-E482-065C-E081298CFAEE";
	setAttr ".t" -type "double3" 3.603783457961157 1.7992944072110424 -3 ;
createNode locator -n "locatorShape64" -p "locator64";
	rename -uid "F6BDEFF1-4900-47E2-73CE-50ADFBF50E57";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator66" -p "group1";
	rename -uid "9494BFD2-4096-CB81-EA3B-749CDACB74F8";
	setAttr ".t" -type "double3" 3.6237890644836428 1.8852843104980472 -3 ;
createNode locator -n "locatorShape66" -p "locator66";
	rename -uid "C8CD2F9F-473E-D9BA-B61D-6ABE3B3B2DAA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator68" -p "group1";
	rename -uid "65FE2639-41DE-3709-1AA8-26AB97254E2C";
	setAttr ".t" -type "double3" 3.6438190378718827 1.9761125810909999 -3 ;
createNode locator -n "locatorShape68" -p "locator68";
	rename -uid "CFA85FC1-45EB-30F4-B5B6-AD961A872AB5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator70" -p "group1";
	rename -uid "4B9B0A7A-4B13-754D-E3C5-A78157BFFFD5";
	setAttr ".t" -type "double3" 3.6638725892001389 2.0715104208940511 -3 ;
createNode locator -n "locatorShape70" -p "locator70";
	rename -uid "24691102-4897-58F8-D402-64BB1F05DFD3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator72" -p "group1";
	rename -uid "3DFCDA7E-40DF-1C91-CAD9-568CD9350CB7";
	setAttr ".t" -type "double3" 3.6839489295426753 2.1712090318113568 -3 ;
createNode locator -n "locatorShape72" -p "locator72";
	rename -uid "9794E388-4AFD-6CB9-F86D-B696640F1DC3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator74" -p "group1";
	rename -uid "3F57765D-4EFE-2554-D178-1DB0D910FD89";
	setAttr ".t" -type "double3" 3.704047269973755 2.2749396157470696 -3 ;
createNode locator -n "locatorShape74" -p "locator74";
	rename -uid "B456CE06-419C-3431-2AA7-06BD1B2C2AB7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator76" -p "group1";
	rename -uid "B26DBA7B-4573-F871-FD9B-FCB22A48F529";
	setAttr ".t" -type "double3" 3.7241668215676396 2.3824333746053465 -3 ;
createNode locator -n "locatorShape76" -p "locator76";
	rename -uid "845B11D9-42A2-1925-5425-A4809C15A38D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator78" -p "group1";
	rename -uid "0577D669-4024-9806-7381-6E9AF3FD0C8B";
	setAttr ".t" -type "double3" 3.7443067953985931 2.4934215102903368 -3 ;
createNode locator -n "locatorShape78" -p "locator78";
	rename -uid "5F4B6B04-40A0-ECA5-2ADC-1587CB0F0FEA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator80" -p "group1";
	rename -uid "E73FC315-42CC-19B0-1AD4-AE97A8AC8627";
	setAttr ".t" -type "double3" 3.7644664025408776 2.6076352247061978 -3 ;
createNode locator -n "locatorShape80" -p "locator80";
	rename -uid "29744064-4A5E-B3B3-D82C-61A75F1994FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator82" -p "group1";
	rename -uid "AFEB54D3-4BDC-BF64-CBAE-97B01AD1999B";
	setAttr ".t" -type "double3" 3.7846448540687572 2.7248057197570805 -3 ;
createNode locator -n "locatorShape82" -p "locator82";
	rename -uid "E1BF5877-4293-C5A0-9F36-D3A4249E6617";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator84" -p "group1";
	rename -uid "D3724A1E-4D71-8116-F25C-08A89C65366B";
	setAttr ".t" -type "double3" 3.8048413610564915 2.8446641973471416 -3 ;
createNode locator -n "locatorShape84" -p "locator84";
	rename -uid "1A1DE633-40A5-A88F-3715-A78EEC81BD5B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator86" -p "group1";
	rename -uid "9CACA545-44FD-0794-6C4A-FAAB908AC3D5";
	setAttr ".t" -type "double3" 3.8250551345783474 2.9669418593805292 -3 ;
createNode locator -n "locatorShape86" -p "locator86";
	rename -uid "E285DBA6-4FDF-6139-202F-B9BCC72EEBAF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator88" -p "group1";
	rename -uid "C9A88FF5-4A52-7DB8-B2E2-78AC5E5A8640";
	setAttr ".t" -type "double3" 3.8452853857085851 3.0913699077614063 -3 ;
createNode locator -n "locatorShape88" -p "locator88";
	rename -uid "9C955B8B-4F26-0246-C225-C49B0A13069D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator90" -p "group1";
	rename -uid "868D7616-4085-FF94-5290-DAB5BE4C4180";
	setAttr ".t" -type "double3" 3.8655313255214692 3.2176795443939201 -3 ;
createNode locator -n "locatorShape90" -p "locator90";
	rename -uid "5AB010FF-4C4C-13D8-3B3F-A095C2227DBD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator92" -p "group1";
	rename -uid "5D016409-4EBC-48D4-CFD5-CEB38249EB40";
	setAttr ".t" -type "double3" 3.8857921650912615 3.3456019711822269 -3 ;
createNode locator -n "locatorShape92" -p "locator92";
	rename -uid "EA84A595-44C6-0514-ADC7-BAAB15F80485";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator94" -p "group1";
	rename -uid "C01C3B58-45B1-5DCE-34B2-39A327B9BAEE";
	setAttr ".t" -type "double3" 3.9060671154922249 3.4748683900304789 -3 ;
createNode locator -n "locatorShape94" -p "locator94";
	rename -uid "5C205376-4A47-76ED-C96C-77AC1FF50AD7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator96" -p "group1";
	rename -uid "6CD875DD-4565-D4A8-61A9-9CADBFF5739D";
	setAttr ".t" -type "double3" 3.9263553877986226 3.6052100028428313 -3 ;
createNode locator -n "locatorShape96" -p "locator96";
	rename -uid "C8B82999-473F-45ED-A085-20B11AD29180";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator98" -p "group1";
	rename -uid "BD204CA2-447A-163F-4909-F8B352C72F73";
	setAttr ".t" -type "double3" 3.946656193084717 3.7363580115234383 -3 ;
createNode locator -n "locatorShape98" -p "locator98";
	rename -uid "AB9E09D3-417C-B599-2333-BCAB0DC916DB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator100" -p "group1";
	rename -uid "2DAA7F17-4417-9977-2331-6F9D94FA9A9B";
	setAttr ".t" -type "double3" 3.966968742424771 3.8680436179764497 -3 ;
createNode locator -n "locatorShape100" -p "locator100";
	rename -uid "74454E61-4A5B-0BFF-645F-9585BA6B0192";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator102" -p "group1";
	rename -uid "9A05DB5C-486A-5AA9-44E6-7FAE520955D2";
	setAttr ".t" -type "double3" 3.9872922468930483 3.9999980241060253 -3 ;
createNode locator -n "locatorShape102" -p "locator102";
	rename -uid "49C6DEA5-405E-56C3-2018-24A2377A9536";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator104" -p "group1";
	rename -uid "864612A8-4A2A-FE2C-83B9-27A8671D1505";
	setAttr ".t" -type "double3" 4.0076259175638107 4.1319524318163143 -3 ;
createNode locator -n "locatorShape104" -p "locator104";
	rename -uid "6C12D6F7-4785-64DC-ADD8-3287C8779848";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator106" -p "group1";
	rename -uid "A22BBD76-434F-EC41-D7E2-DC914B620CA0";
	setAttr ".t" -type "double3" 4.027968965511322 4.2636380430114773 -3 ;
createNode locator -n "locatorShape106" -p "locator106";
	rename -uid "3C13DF48-4143-290E-38A3-CCBFDA1DB437";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator108" -p "group1";
	rename -uid "CC4AAC7B-49AD-EA7E-5368-EFB92AAB3D77";
	setAttr ".t" -type "double3" 4.0483206018098441 4.394786059595658 -3 ;
createNode locator -n "locatorShape108" -p "locator108";
	rename -uid "58F6CD93-42B5-95DD-EB80-C29769DBB240";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator110" -p "group1";
	rename -uid "641D6A97-4D0B-6C3F-598B-98A3FD36F981";
	setAttr ".t" -type "double3" 4.0686800375336416 4.5251276834730128 -3 ;
createNode locator -n "locatorShape110" -p "locator110";
	rename -uid "2087BE65-40F5-CF2A-1197-F5BE1338EA7C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator112" -p "group1";
	rename -uid "99C4D362-4795-F193-AA1E-42AA840E534F";
	setAttr ".t" -type "double3" 4.0890464837569747 4.6543941165477047 -3 ;
createNode locator -n "locatorShape112" -p "locator112";
	rename -uid "BF9A466B-4ED8-9202-C1ED-998FEB3C3C13";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator114" -p "group1";
	rename -uid "A51D605B-4424-2A4A-F025-65903C1DB6AF";
	setAttr ".t" -type "double3" 4.1094191515541079 4.7823165607238742 -3 ;
createNode locator -n "locatorShape114" -p "locator114";
	rename -uid "223DDD71-4220-13CD-4236-CF827900784A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator116" -p "group1";
	rename -uid "67427F26-4CC4-047D-C19E-AF84EBDF7C4B";
	setAttr ".t" -type "double3" 4.129797251999304 4.9086262179056899 -3 ;
createNode locator -n "locatorShape116" -p "locator116";
	rename -uid "97533A52-4980-1203-3106-6D9A4D79BBA6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator118" -p "group1";
	rename -uid "5EE6F432-497A-255F-32EC-79874732E782";
	setAttr ".t" -type "double3" 4.1501799961668251 5.0330542899972919 -3 ;
createNode locator -n "locatorShape118" -p "locator118";
	rename -uid "7D0B3DB1-4508-66D1-71BB-2AA34BF92883";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator120" -p "group1";
	rename -uid "C796E50A-4E1B-2E1B-CA57-9BAC0E157CDE";
	setAttr ".t" -type "double3" 4.1705665951309348 5.1553319789028365 -3 ;
createNode locator -n "locatorShape120" -p "locator120";
	rename -uid "9E9A90E8-434E-221A-89D5-C9B41863AA96";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator122" -p "group1";
	rename -uid "5F70343F-4B55-39CB-5249-CBB651A081E5";
	setAttr ".t" -type "double3" 4.1909562599658967 5.2751904865264931 -3 ;
createNode locator -n "locatorShape122" -p "locator122";
	rename -uid "9C2AA941-446F-B0C9-4E39-DBA9DF3E978A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator124" -p "group1";
	rename -uid "49809384-465A-DC6C-2F5E-B89F925CF870";
	setAttr ".t" -type "double3" 4.211348201745972 5.3923610147723871 -3 ;
createNode locator -n "locatorShape124" -p "locator124";
	rename -uid "A021C319-4023-C27A-433E-41B7356965E6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator126" -p "group1";
	rename -uid "6841496B-40B5-0D53-3803-F9A566BA809E";
	setAttr ".t" -type "double3" 4.2317416315454235 5.5065747655447037 -3 ;
createNode locator -n "locatorShape126" -p "locator126";
	rename -uid "FA4FEE39-489F-8BCB-BCE2-EE80F6361379";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator128" -p "group1";
	rename -uid "B2891BE4-4587-F0B0-8C99-9A883AA35310";
	setAttr ".t" -type "double3" 4.2521357604385166 5.6175629407475709 -3 ;
createNode locator -n "locatorShape128" -p "locator128";
	rename -uid "EA390BF2-481B-D519-56E4-52840164B9CC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator130" -p "group1";
	rename -uid "FCB2EE9D-4132-14CE-ACC4-128E0905AF76";
	setAttr ".t" -type "double3" 4.2725297994995106 5.7250567422851582 -3 ;
createNode locator -n "locatorShape130" -p "locator130";
	rename -uid "7B75B7AD-4474-D574-74EC-92A8CAC936FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator132" -p "group1";
	rename -uid "6C3D8960-4B39-AECE-A079-C3A55CA3FD75";
	setAttr ".t" -type "double3" 4.2929229598026728 5.8287873720616092 -3 ;
createNode locator -n "locatorShape132" -p "locator132";
	rename -uid "DA621E42-449D-1EBA-E00A-9B80FDFDF608";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator134" -p "group1";
	rename -uid "646065CC-4120-3ADB-A0CB-8AB0D0BC9076";
	setAttr ".t" -type "double3" 4.3133144524222615 5.9284860319810884 -3 ;
createNode locator -n "locatorShape134" -p "locator134";
	rename -uid "1C7A9A04-4CF7-74EB-CE4E-FBAFAF3B7D17";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator136" -p "group1";
	rename -uid "CE2B9EF8-4AAC-91C0-7CED-8D8073F7DBBA";
	setAttr ".t" -type "double3" 4.3337034884325414 6.0238839239477411 -3 ;
createNode locator -n "locatorShape136" -p "locator136";
	rename -uid "873EF8C3-459B-5FDF-3642-A7AFE51D3675";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator138" -p "group1";
	rename -uid "6AA46103-4406-8FE2-6301-82970D31C0C6";
	setAttr ".t" -type "double3" 4.3540892789077761 6.1147122498657245 -3 ;
createNode locator -n "locatorShape138" -p "locator138";
	rename -uid "F37525D0-461C-0BC5-4797-478ECE296185";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator140" -p "group1";
	rename -uid "863E5602-4E3A-C1FC-2582-888298235B87";
	setAttr ".t" -type "double3" 4.3744710349222267 6.2007022116391859 -3 ;
createNode locator -n "locatorShape140" -p "locator140";
	rename -uid "AC63E0AB-4FA1-EF61-171A-A99EADDBCCD5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator142" -p "group1";
	rename -uid "1BAA208A-44E7-3B4C-12CF-5B8547699FA2";
	setAttr ".t" -type "double3" 4.3948479675501586 6.2815850111722931 -3 ;
createNode locator -n "locatorShape142" -p "locator142";
	rename -uid "FD438578-462D-5291-02FC-1289AB2F1649";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator144" -p "group1";
	rename -uid "CBEE4CB5-4CAA-BED3-1657-E7B0D50BAD80";
	setAttr ".t" -type "double3" 4.415219287865833 6.3570918503691942 -3 ;
createNode locator -n "locatorShape144" -p "locator144";
	rename -uid "760C438B-41DD-8AD1-AFCA-B78A5E91DC21";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator146" -p "group1";
	rename -uid "34CF5EC2-44A7-8280-0BAA-F19042FE8E4C";
	setAttr ".t" -type "double3" 4.4355842069435116 6.4269539311340314 -3 ;
createNode locator -n "locatorShape146" -p "locator146";
	rename -uid "112632F6-418A-DBF2-B149-90BE749C4610";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator148" -p "group1";
	rename -uid "1CD2C958-430A-469E-15D2-9CA4B3DBA638";
	setAttr ".t" -type "double3" 4.4559419358574601 6.4909024553709722 -3 ;
createNode locator -n "locatorShape148" -p "locator148";
	rename -uid "1A3AB79C-4283-AFC3-A6E3-FABD0AFF7CF2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator150" -p "group1";
	rename -uid "9E34CC92-42E8-2576-8EC2-6C9CBD9A63FD";
	setAttr ".t" -type "double3" 4.4762916856819377 6.5486686249841686 -3 ;
createNode locator -n "locatorShape150" -p "locator150";
	rename -uid "77DE1915-4589-35CD-388C-4D860124C7CB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator152" -p "group1";
	rename -uid "DB819A62-4DC6-7BE2-1F87-15B7D81B67F9";
	setAttr ".t" -type "double3" 4.4966326674912125 6.5999836418777704 -3 ;
createNode locator -n "locatorShape152" -p "locator152";
	rename -uid "AEE866C0-46D2-429C-04C9-F79DBB768725";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator154" -p "group1";
	rename -uid "34D7E929-4569-96D5-98A9-F7B7055DAEC5";
	setAttr ".t" -type "double3" 4.516964092359542 6.6445787079559322 -3 ;
createNode locator -n "locatorShape154" -p "locator154";
	rename -uid "5996450D-4A99-DA8C-8AE2-FEB82EF1228B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator156" -p "group1";
	rename -uid "1ADE392F-4BC7-4E6C-2A78-038E92D996EC";
	setAttr ".t" -type "double3" 4.5372851713611926 6.6821850251228074 -3 ;
createNode locator -n "locatorShape156" -p "locator156";
	rename -uid "93683796-4677-5FDF-31F5-1D902EB044BA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator158" -p "group1";
	rename -uid "10A4E2A3-4429-6388-1E48-42A56396E3E9";
	setAttr ".t" -type "double3" 4.5575951155704271 6.7125337952825568 -3 ;
createNode locator -n "locatorShape158" -p "locator158";
	rename -uid "065AFB26-4C85-C6AD-F3A0-608B86EA4FF9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator160" -p "group1";
	rename -uid "812C6D61-4421-810A-F038-5DA7F1B37C08";
	setAttr ".t" -type "double3" 4.5778931360615047 6.7353562203393258 -3 ;
createNode locator -n "locatorShape160" -p "locator160";
	rename -uid "51FD659C-4BA2-7E88-07CA-E398C530D81A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator162" -p "group1";
	rename -uid "B8144D51-429E-C433-B543-269F845F4F13";
	setAttr ".t" -type "double3" 4.5981784439086919 6.7503835021972636 -3 ;
createNode locator -n "locatorShape162" -p "locator162";
	rename -uid "4F8F47D0-45D9-2430-4D98-159720481EEC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator164" -p "group1";
	rename -uid "C34FD20B-406D-2E9E-8140-98BB96E53BBA";
	setAttr ".t" -type "double3" 4.6184502501862497 6.7573468427605432 -3 ;
createNode locator -n "locatorShape164" -p "locator164";
	rename -uid "31CD3C80-405F-A93F-5C0C-899017FD38C2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator166" -p "group1";
	rename -uid "1612502E-4920-4DC1-F7CC-3CBD838A4517";
	setAttr ".t" -type "double3" 4.6387077659684426 6.7559774439333005 -3 ;
createNode locator -n "locatorShape166" -p "locator166";
	rename -uid "E4AFEBDC-4B4B-60AC-383A-319895F7A358";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator168" -p "group1";
	rename -uid "155AB774-46EE-B85A-CEFD-A59A890A7214";
	setAttr ".t" -type "double3" 4.6589502023295317 6.7460065076196809 -3 ;
createNode locator -n "locatorShape168" -p "locator168";
	rename -uid "6CA5EE0F-4472-CB27-23CC-968EC134A9C2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator170" -p "group1";
	rename -uid "550BED02-43A2-FA55-B978-0088FD59B42B";
	setAttr ".t" -type "double3" 4.6791767703437808 6.7271652357238718 -3 ;
createNode locator -n "locatorShape170" -p "locator170";
	rename -uid "99F51FC5-4950-F06A-9166-3FA02B897DF1";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator172" -p "group1";
	rename -uid "CC46B100-447E-D9EC-4E3E-53B3D219710D";
	setAttr ".t" -type "double3" 4.6993866810854525 6.6991848301500037 -3 ;
createNode locator -n "locatorShape172" -p "locator172";
	rename -uid "987AA772-4A32-6243-8BE2-67924054EC12";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator174" -p "group1";
	rename -uid "89214FCD-45B8-1B07-5133-FEB01583A533";
	setAttr ".t" -type "double3" 4.7195791456288099 6.6617964928022371 -3 ;
createNode locator -n "locatorShape174" -p "locator174";
	rename -uid "826C7EF5-4AC1-E4F7-BB2B-7CA29AD7ABAF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator176" -p "group1";
	rename -uid "A05A0824-4B29-CAED-7795-59AF802C7E09";
	setAttr ".t" -type "double3" 4.7397533750481156 6.61473142558473 -3 ;
createNode locator -n "locatorShape176" -p "locator176";
	rename -uid "6D0433F3-415E-FA82-6A6F-879D7D01E14E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator178" -p "group1";
	rename -uid "7000EF8D-4468-271F-E52B-879421ED5F65";
	setAttr ".t" -type "double3" 4.7599085804176333 6.5577208304016086 -3 ;
createNode locator -n "locatorShape178" -p "locator178";
	rename -uid "70B67F67-47EF-2227-51A9-FC980332536B";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator180" -p "group1";
	rename -uid "E307006B-4A61-017A-2F6E-30B4404E8BD5";
	setAttr ".t" -type "double3" 4.7800439728116242 6.4904959091570618 -3 ;
createNode locator -n "locatorShape180" -p "locator180";
	rename -uid "A449B8F6-43F0-F1B6-DB8B-AEBB52BF4532";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator182" -p "group1";
	rename -uid "4CD2599C-4931-C0B2-A77C-F68CB83FF1FE";
	setAttr ".t" -type "double3" 4.8001587633043528 6.4127878637552236 -3 ;
createNode locator -n "locatorShape182" -p "locator182";
	rename -uid "9013F968-4ADA-B8A2-BEDF-EAB73E73B4AA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator184" -p "group1";
	rename -uid "E6E15B9D-4024-F84D-FA3F-0197B2479C60";
	setAttr ".t" -type "double3" 4.820252162970081 6.3243278961002574 -3 ;
createNode locator -n "locatorShape184" -p "locator184";
	rename -uid "D59D6716-4779-3305-2D36-6081F66E4E11";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator186" -p "group1";
	rename -uid "BD0C84E1-4816-6AB3-5404-298B7112F0BF";
	setAttr ".t" -type "double3" 4.8403233828830716 6.2248472080963086 -3 ;
createNode locator -n "locatorShape186" -p "locator186";
	rename -uid "FD41A2FB-4A9C-9893-EB2B-B48B598802F4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator188" -p "group1";
	rename -uid "E51035F0-4A0F-8D2E-040F-95AD120BEBF2";
	setAttr ".t" -type "double3" 4.8603716341175884 6.1140770016475479 -3 ;
createNode locator -n "locatorShape188" -p "locator188";
	rename -uid "63E953C0-4742-C541-AF83-73942B134A12";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator190" -p "group1";
	rename -uid "49CCEB9B-41A0-BFCF-FD2D-B7980F4310DD";
	setAttr ".t" -type "double3" 4.8803961277478942 5.9917484786581028 -3 ;
createNode locator -n "locatorShape190" -p "locator190";
	rename -uid "023C564F-4500-A6A9-4B09-00A2872F1B16";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator192" -p "group1";
	rename -uid "BE5B1F5E-458D-C284-42B5-45BC45430D15";
	setAttr ".t" -type "double3" 4.9003960748482491 5.8575928410321474 -3 ;
createNode locator -n "locatorShape192" -p "locator192";
	rename -uid "7DE3048A-4D64-B4B4-AEE8-A9A93459E675";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator194" -p "group1";
	rename -uid "A5FDD715-412F-F035-D4FB-06AEBC3908DE";
	setAttr ".t" -type "double3" 4.9203706864929204 5.711341290673837 -3 ;
createNode locator -n "locatorShape194" -p "locator194";
	rename -uid "72CB8827-4B88-9595-F95E-1BA5F5B6B9E0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator196" -p "group1";
	rename -uid "6F214E21-42C9-4E6E-AF62-C39FCE86A953";
	setAttr ".t" -type "double3" 4.9403191737561682 5.552725029487295 -3 ;
createNode locator -n "locatorShape196" -p "locator196";
	rename -uid "F980B146-4D16-8DF4-5F7D-3A8104E82004";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator198" -p "group1";
	rename -uid "FE00FD93-4789-2F1A-B3D0-4183F28CDEA3";
	setAttr ".t" -type "double3" 4.9602407477122537 5.3814752593767166 -3 ;
createNode locator -n "locatorShape198" -p "locator198";
	rename -uid "F6ADCA87-4438-006F-BB3A-2897F3CD8F9D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator200" -p "group1";
	rename -uid "E29FC8FF-40FE-C5DD-5DAA-11979DD3DE17";
	setAttr ".t" -type "double3" 4.9801346194354439 5.1973231822462225 -3 ;
createNode locator -n "locatorShape200" -p "locator200";
	rename -uid "BDB2649D-4290-F3C3-96D9-919606A3B1FE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "group2";
	rename -uid "8618BC37-4AE5-09D8-E06A-FBA71DAD3D1D";
	setAttr ".rp" -type "double3" 0.65380778710171583 -1.1999880939722058 -3 ;
	setAttr ".sp" -type "double3" 0.65380778710171583 -1.1999880939722058 -3 ;
createNode transform -n "locator3" -p "group2";
	rename -uid "C4720BF1-49CB-211E-0015-0F8D8BAEB1FE";
	setAttr ".t" -type "double3" 0.62780839204788208 -6.799949741363525 -3 ;
createNode locator -n "locatorShape3" -p "locator3";
	rename -uid "B36AE5F1-4727-35B8-8AE5-6988326F4E79";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator5" -p "group2";
	rename -uid "F763B3FF-4577-DDBC-5670-1D85BE9AD194";
	setAttr ".t" -type "double3" 0.62944899293035272 -6.3564328305268285 -3 ;
createNode locator -n "locatorShape5" -p "locator5";
	rename -uid "27492F8F-496B-59CD-8885-969220BD4764";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator7" -p "group2";
	rename -uid "0851AF4E-45DF-1413-C4F5-18BED397A443";
	setAttr ".t" -type "double3" 0.63106329628825186 -5.921875856218338 -3 ;
createNode locator -n "locatorShape7" -p "locator7";
	rename -uid "D73A16FE-47BF-CEE9-B56F-4A9634B9D114";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator9" -p "group2";
	rename -uid "E8C53D99-4376-3A97-CE19-DA82C91C92D0";
	setAttr ".t" -type "double3" 0.63265130212157961 -5.4962788184380527 -3 ;
createNode locator -n "locatorShape9" -p "locator9";
	rename -uid "4F19836A-4DF1-C2D6-0523-13B7C62C1050";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator11" -p "group2";
	rename -uid "29EF6BE6-4FFB-9982-DA52-30B723FE67D1";
	setAttr ".t" -type "double3" 0.63421301043033596 -5.0796417171859733 -3 ;
createNode locator -n "locatorShape11" -p "locator11";
	rename -uid "69B57AC5-4C74-A4EA-EEB0-EA979E03B1BB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator13" -p "group2";
	rename -uid "1077A0EA-425C-244F-A9F5-36BD79D3198D";
	setAttr ".t" -type "double3" 0.63574842121452091 -4.6719645524621001 -3 ;
createNode locator -n "locatorShape13" -p "locator13";
	rename -uid "F810CCAD-481D-3493-BE8F-80BA366BC3BD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator15" -p "group2";
	rename -uid "FD37E9A7-4AB7-F13F-23F3-D980B2B9F534";
	setAttr ".t" -type "double3" 0.63725753447413447 -4.2732473242664346 -3 ;
createNode locator -n "locatorShape15" -p "locator15";
	rename -uid "C0E4FE2A-415C-3ACA-3A23-27928944F821";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator17" -p "group2";
	rename -uid "A598EB6F-4F2C-98EA-7CD7-18A6520C8884";
	setAttr ".t" -type "double3" 0.63874035020917652 -3.8834900325989725 -3 ;
createNode locator -n "locatorShape17" -p "locator17";
	rename -uid "817A640E-4636-5D4F-35E1-479FAB749B21";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator19" -p "group2";
	rename -uid "91FF4D31-422E-E794-183A-AC819BE02A9A";
	setAttr ".t" -type "double3" 0.64019686841964729 -3.5026926774597169 -3 ;
createNode locator -n "locatorShape19" -p "locator19";
	rename -uid "9A625D3B-439F-FCB3-8263-7BBF6CC02632";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator21" -p "group2";
	rename -uid "31135CE3-41BF-F8ED-07D6-4390B493C561";
	setAttr ".t" -type "double3" 0.64162708910554644 -3.1308552588486678 -3 ;
createNode locator -n "locatorShape21" -p "locator21";
	rename -uid "F4387384-4EC3-02F0-458F-5680BB84C14E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator23" -p "group2";
	rename -uid "73B99566-47DC-F2C2-0B65-F4BB1C5358F3";
	setAttr ".t" -type "double3" 0.64303101226687442 -2.7679777767658238 -3 ;
createNode locator -n "locatorShape23" -p "locator23";
	rename -uid "6F34D09B-438C-1D1E-1CD1-FE96F7E3F387";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator25" -p "group2";
	rename -uid "CB179C07-470C-BDFA-59C8-9884E49C196C";
	setAttr ".t" -type "double3" 0.64440863790363068 -2.4140602312111854 -3 ;
createNode locator -n "locatorShape25" -p "locator25";
	rename -uid "E4EBEDD5-4DD0-3E47-1696-BE823C18080D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator27" -p "group2";
	rename -uid "41CD13C5-41CC-3A47-9080-AFBA2E3DF0CC";
	setAttr ".t" -type "double3" 0.64575996601581576 -2.0691026221847535 -3 ;
createNode locator -n "locatorShape27" -p "locator27";
	rename -uid "ACA18B53-46E9-D794-8B1D-7CB8B868EE4F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator29" -p "group2";
	rename -uid "DD7EC70F-4E40-FB82-51C9-48A87D65479A";
	setAttr ".t" -type "double3" 0.64708499660342933 -1.733104949686527 -3 ;
createNode locator -n "locatorShape29" -p "locator29";
	rename -uid "87DA20C9-4194-27CD-5092-0C9A89EB1110";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator31" -p "group2";
	rename -uid "0A25442E-47EA-5393-0820-C0A5C15331ED";
	setAttr ".t" -type "double3" 0.64838372966647151 -1.4060672137165069 -3 ;
createNode locator -n "locatorShape31" -p "locator31";
	rename -uid "0CA2C94C-4E83-0D47-C8CA-01944BA84EA3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator33" -p "group2";
	rename -uid "6728602A-4090-4C34-9B4F-058F0ED9B8DA";
	setAttr ".t" -type "double3" 0.64965616520494229 -1.0879894142746924 -3 ;
createNode locator -n "locatorShape33" -p "locator33";
	rename -uid "F29BDE12-427D-05F1-52BB-BAAD985793EE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator35" -p "group2";
	rename -uid "50A9F160-40AE-8DCC-A69A-779B566A337E";
	setAttr ".t" -type "double3" 0.65090230321884146 -0.77887155136108421 -3 ;
createNode locator -n "locatorShape35" -p "locator35";
	rename -uid "D064CB63-450E-C122-7849-678571358403";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator37" -p "group2";
	rename -uid "DEE4BA98-4B87-5A54-AA2B-EE9C07D7AB16";
	setAttr ".t" -type "double3" 0.65212214370816945 -0.47871362497568082 -3 ;
createNode locator -n "locatorShape37" -p "locator37";
	rename -uid "59A0B9E5-48A7-E1AF-05B8-95843C3FB641";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator39" -p "group2";
	rename -uid "4BD25C48-45EF-B574-8A5E-6A892C998B13";
	setAttr ".t" -type "double3" 0.65331568667292583 -0.18751563511848462 -3 ;
createNode locator -n "locatorShape39" -p "locator39";
	rename -uid "04EBDDA4-4ACE-C241-40EF-7A8EA84FD13E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator41" -p "group2";
	rename -uid "4C288D5A-47EE-1ADD-4663-F9A1D47D5872";
	setAttr ".t" -type "double3" 0.65448293211311115 0.094722418210505976 -3 ;
createNode locator -n "locatorShape41" -p "locator41";
	rename -uid "E30039D5-406A-4419-274C-0BAB3D7385EE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator43" -p "group2";
	rename -uid "52FEB330-4CC6-9934-A7FD-B58B82CC367F";
	setAttr ".t" -type "double3" 0.65562388002872474 0.36800053501129099 -3 ;
createNode locator -n "locatorShape43" -p "locator43";
	rename -uid "6C9735BF-4B14-805F-9B08-A5B5D4044A89";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator45" -p "group2";
	rename -uid "60BA3A9A-4BF1-498A-67B1-12BBC44B2B90";
	setAttr ".t" -type "double3" 0.65673853041976682 0.63231871528386985 -3 ;
createNode locator -n "locatorShape45" -p "locator45";
	rename -uid "5E75EEEC-4276-C516-7D25-B18A7319AF6E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator47" -p "group2";
	rename -uid "85A2D5A8-45F8-3A76-78EE-BDBD67A5F5F2";
	setAttr ".t" -type "double3" 0.65782688328623784 0.88767695902824384 -3 ;
createNode locator -n "locatorShape47" -p "locator47";
	rename -uid "E021F55E-4727-9A0E-E3CE-F5820610D3F6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator49" -p "group2";
	rename -uid "3FDD8B1D-4D31-02AC-3820-34A7527FB20C";
	setAttr ".t" -type "double3" 0.65888893862813713 1.1340752662444114 -3 ;
createNode locator -n "locatorShape49" -p "locator49";
	rename -uid "A86689CD-4386-CED1-86B2-AAA71383B240";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator51" -p "group2";
	rename -uid "7059DBAC-4619-52F6-8C57-B983B6527971";
	setAttr ".t" -type "double3" 0.65992469644546514 1.371513636932373 -3 ;
createNode locator -n "locatorShape51" -p "locator51";
	rename -uid "6D1BD857-4FFB-00B1-B92B-46AAD00A1B10";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator53" -p "group2";
	rename -uid "BD4F2F57-4E05-D4A2-CB9C-91998FE3CD7B";
	setAttr ".t" -type "double3" 0.66093415673822165 1.5999920710921287 -3 ;
createNode locator -n "locatorShape53" -p "locator53";
	rename -uid "2B9038BE-430D-9B4B-2196-05B5943B01B5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator55" -p "group2";
	rename -uid "ECC54575-4DFD-C5F6-9051-E5A286E9405B";
	setAttr ".t" -type "double3" 0.66191731950640675 1.8195105687236792 -3 ;
createNode locator -n "locatorShape55" -p "locator55";
	rename -uid "725617E8-4055-9C0C-F9BB-4798EA7434F2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator57" -p "group2";
	rename -uid "772ABF07-4BBA-B4C3-DC92-EAB3926F4BDF";
	setAttr ".t" -type "double3" 0.66287418475002047 2.0300691298270226 -3 ;
createNode locator -n "locatorShape57" -p "locator57";
	rename -uid "1DF1DD6C-4C2C-E9A3-CD53-21A869919398";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator59" -p "group2";
	rename -uid "AAAFA5C9-4B63-AD0A-D258-B8A231C799BE";
	setAttr ".t" -type "double3" 0.66380475246906279 2.2316677544021601 -3 ;
createNode locator -n "locatorShape59" -p "locator59";
	rename -uid "456A2970-4484-42F5-683F-7EBF5A1D36BE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator61" -p "group2";
	rename -uid "BB02FA61-4DFE-CB41-8C84-F29381E450BC";
	setAttr ".t" -type "double3" 0.6647090226635336 2.4243064424490917 -3 ;
createNode locator -n "locatorShape61" -p "locator61";
	rename -uid "DF4CE8FE-4E41-9D2D-3453-F9B562E7D8B9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator63" -p "group2";
	rename -uid "DD319ADB-49CD-DAEE-CC5A-46824120FE6D";
	setAttr ".t" -type "double3" 0.66558699533343302 2.6079851939678185 -3 ;
createNode locator -n "locatorShape63" -p "locator63";
	rename -uid "E7E6BE92-4DC0-F4CD-EBE9-28B8E95FDD15";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator65" -p "group2";
	rename -uid "2B0520D7-4D3F-BD6B-D428-568999221F8B";
	setAttr ".t" -type "double3" 0.66643867047876115 2.7827040089583388 -3 ;
createNode locator -n "locatorShape65" -p "locator65";
	rename -uid "DB2A9D7A-4CD4-D2EA-476C-E3B8ADF93C02";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator67" -p "group2";
	rename -uid "E573995F-48A0-E9D8-1F83-278A8BAE855B";
	setAttr ".t" -type "double3" 0.66726404809951778 2.948462887420654 -3 ;
createNode locator -n "locatorShape67" -p "locator67";
	rename -uid "9A08CC65-4447-4D4C-0767-57A0B8E02A50";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator69" -p "group2";
	rename -uid "B222018F-46AA-4D6D-6F00-FC8CBEFFDDAC";
	setAttr ".t" -type "double3" 0.66806312819570302 3.1052618293547636 -3 ;
createNode locator -n "locatorShape69" -p "locator69";
	rename -uid "26840758-45A6-63B2-C681-D0BB6B0977EA";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator71" -p "group2";
	rename -uid "676F50D3-4008-D828-4FEC-DEA41B8C4072";
	setAttr ".t" -type "double3" 0.66883591076731685 3.2531008347606662 -3 ;
createNode locator -n "locatorShape71" -p "locator71";
	rename -uid "B315F024-47ED-9CBE-657F-1E993EC5FB48";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator73" -p "group2";
	rename -uid "B2660616-498F-C16B-CA5A-0599F8D2B50F";
	setAttr ".t" -type "double3" 0.66958239581435919 3.3919799036383629 -3 ;
createNode locator -n "locatorShape73" -p "locator73";
	rename -uid "DBD874EB-4EBC-02C4-53BD-6A8C7DBB7B1A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator75" -p "group2";
	rename -uid "B7E28F22-4F89-FB52-221C-2F950B4826D7";
	setAttr ".t" -type "double3" 0.67030258333683002 3.5218990359878539 -3 ;
createNode locator -n "locatorShape75" -p "locator75";
	rename -uid "545E4216-443E-6BF2-F18B-EE8496146D04";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator77" -p "group2";
	rename -uid "173362B8-4BA0-AC26-444C-429A7E2004B1";
	setAttr ".t" -type "double3" 0.67099647333472967 3.6428582318091394 -3 ;
createNode locator -n "locatorShape77" -p "locator77";
	rename -uid "E6FB0F70-4820-2FAA-82C1-2AB0175FF1A5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator79" -p "group2";
	rename -uid "1CD3628A-4E6A-FE5A-3E97-EE94A66A89E3";
	setAttr ".t" -type "double3" 0.67166406580805771 3.7548574911022188 -3 ;
createNode locator -n "locatorShape79" -p "locator79";
	rename -uid "92E95940-491B-D807-13C9-F6A96E548A8F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator81" -p "group2";
	rename -uid "9477E69E-4D06-17BD-3EB8-038ADB820DD3";
	setAttr ".t" -type "double3" 0.67230536075681446 3.8578968138670926 -3 ;
createNode locator -n "locatorShape81" -p "locator81";
	rename -uid "6CE15A6C-4942-F664-5B7D-27957AC24CA0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator83" -p "group2";
	rename -uid "8DCE2D7C-470A-5ED5-45C9-3B938F03EE54";
	setAttr ".t" -type "double3" 0.67292035818099971 3.9519762001037586 -3 ;
createNode locator -n "locatorShape83" -p "locator83";
	rename -uid "2ACC6B7F-435A-4B63-C8A1-CF8E15979001";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator85" -p "group2";
	rename -uid "90A13B5C-4120-506B-9042-BA93CC99D20B";
	setAttr ".t" -type "double3" 0.67350905808061357 4.0370956498122217 -3 ;
createNode locator -n "locatorShape85" -p "locator85";
	rename -uid "00B1A4F8-46B9-6504-EC2F-84B02C249325";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator87" -p "group2";
	rename -uid "F8B19F7A-4AB4-91A1-5D0D-D08951560DEC";
	setAttr ".t" -type "double3" 0.67407146045565602 4.1132551629924778 -3 ;
createNode locator -n "locatorShape87" -p "locator87";
	rename -uid "2A174A14-4D88-C3D0-1248-449C8C1D0B3F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator89" -p "group2";
	rename -uid "041B1D9C-4256-A6F8-B534-0D89F59A0587";
	setAttr ".t" -type "double3" 0.67460756530612709 4.180454739644528 -3 ;
createNode locator -n "locatorShape89" -p "locator89";
	rename -uid "817D87CF-4344-FA97-07E2-EDB480315996";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator91" -p "group2";
	rename -uid "5B7BCEB1-4877-9F73-0098-10B4B048B0B1";
	setAttr ".t" -type "double3" 0.67511737263202665 4.238694379768372 -3 ;
createNode locator -n "locatorShape91" -p "locator91";
	rename -uid "A5A29CCA-42C1-E3F8-E685-14BE7AFFB52A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator93" -p "group2";
	rename -uid "61472F34-4272-E79D-8C2D-8AA72C1A6197";
	setAttr ".t" -type "double3" 0.67560088243335481 4.2879740833640092 -3 ;
createNode locator -n "locatorShape93" -p "locator93";
	rename -uid "AFC0EDDB-4661-F309-48B9-5EA9A1BE4F79";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator95" -p "group2";
	rename -uid "694E7727-4801-A9A8-ADC7-EBA5E7865790";
	setAttr ".t" -type "double3" 0.67605809471011158 4.3282938504314421 -3 ;
createNode locator -n "locatorShape95" -p "locator95";
	rename -uid "0C0FED5E-445B-08FD-CAB1-99B718972CDE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator97" -p "group2";
	rename -uid "5C12C0ED-4B1D-941E-A6DA-4585284573B7";
	setAttr ".t" -type "double3" 0.67648900946229695 4.3596536809706681 -3 ;
createNode locator -n "locatorShape97" -p "locator97";
	rename -uid "7B8E8739-425A-2E37-E14B-FC9D7B288E19";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator99" -p "group2";
	rename -uid "14111629-47D8-319E-5D11-EF92662BD11B";
	setAttr ".t" -type "double3" 0.67689362668991082 4.3820535749816889 -3 ;
createNode locator -n "locatorShape99" -p "locator99";
	rename -uid "FA88C4C8-4854-5C7D-2EDA-8DBC5D71D001";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator101" -p "group2";
	rename -uid "0ECAF803-406C-CDCC-B6EF-F981A3AB3578";
	setAttr ".t" -type "double3" 0.67727194639295341 4.3954935324645046 -3 ;
createNode locator -n "locatorShape101" -p "locator101";
	rename -uid "5E0A0D71-4B8B-C6A0-78A6-6B9724192FF0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator103" -p "group2";
	rename -uid "B771393E-4982-2778-8D02-88A33EF90A5C";
	setAttr ".t" -type "double3" 0.67762396857142448 4.3999735534191133 -3 ;
createNode locator -n "locatorShape103" -p "locator103";
	rename -uid "C3E8A020-48F4-68E7-2450-248069262514";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator105" -p "group2";
	rename -uid "F8DF1A30-4259-9617-EC9C-0491C28AB1B0";
	setAttr ".t" -type "double3" 0.67794969322532406 4.3954936378455169 -3 ;
createNode locator -n "locatorShape105" -p "locator105";
	rename -uid "6F09CB97-46F2-8C8E-1705-54BC505A45FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator107" -p "group2";
	rename -uid "BA86468F-4BCD-1F65-F392-D0BFF0DE9E8C";
	setAttr ".t" -type "double3" 0.67824912035465235 4.3820537857437127 -3 ;
createNode locator -n "locatorShape107" -p "locator107";
	rename -uid "384A0952-426B-53F0-681C-3286F8C0B173";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator109" -p "group2";
	rename -uid "5735C8DF-4309-D4AF-A66D-188CEEF2AD4D";
	setAttr ".t" -type "double3" 0.67852224995940924 4.3596539971137034 -3 ;
createNode locator -n "locatorShape109" -p "locator109";
	rename -uid "745360CA-46B4-F6D0-449E-F4A20AC04ADD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator111" -p "group2";
	rename -uid "1A42AF2F-420A-DC17-CCBB-979DA865FABF";
	setAttr ".t" -type "double3" 0.67876908203959474 4.3282942719554898 -3 ;
createNode locator -n "locatorShape111" -p "locator111";
	rename -uid "6DA52C7D-4B56-F6EA-812C-2B9CD309CA1D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator113" -p "group2";
	rename -uid "674B144B-4DC4-863F-C6BB-00B87FC40BBE";
	setAttr ".t" -type "double3" 0.67898961659520851 4.2879746102690692 -3 ;
createNode locator -n "locatorShape113" -p "locator113";
	rename -uid "1F8E1E91-4376-4DCE-66E8-19808E3486FF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator115" -p "group2";
	rename -uid "DFEE2E57-46E6-E1E5-669F-5AB68470927C";
	setAttr ".t" -type "double3" 0.67918385362625122 4.2386950120544427 -3 ;
createNode locator -n "locatorShape115" -p "locator115";
	rename -uid "5B6921B0-4776-A5D5-ED99-E7948B1F3CA7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator117" -p "group2";
	rename -uid "9DB81505-4543-9201-0494-E2A275524967";
	setAttr ".t" -type "double3" 0.67935179313272231 4.18045547731161 -3 ;
createNode locator -n "locatorShape117" -p "locator117";
	rename -uid "8860869A-42CF-0874-05B5-12BC1E153158";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator119" -p "group2";
	rename -uid "EDD8D71F-41B0-2409-CB71-56929F2F09A5";
	setAttr ".t" -type "double3" 0.67949343511462224 4.1132560060405723 -3 ;
createNode locator -n "locatorShape119" -p "locator119";
	rename -uid "3D339704-4667-05D4-F4F5-A5BC8F638FFE";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator121" -p "group2";
	rename -uid "7A85A84F-47F0-5D3A-1679-15BA65494BDD";
	setAttr ".t" -type "double3" 0.67960877957195043 4.0370965982413285 -3 ;
createNode locator -n "locatorShape121" -p "locator121";
	rename -uid "EC6AFB32-40B6-DFDC-D28D-06A6E2E3E059";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator123" -p "group2";
	rename -uid "8B606C85-4F27-4814-6ABC-19B8DCDD49A6";
	setAttr ".t" -type "double3" 0.67969782650470734 3.9519772539138791 -3 ;
createNode locator -n "locatorShape123" -p "locator123";
	rename -uid "D44DDACD-4A59-1F69-6329-AAB3880E64BB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator125" -p "group2";
	rename -uid "B85ABF7A-42BE-A3A5-F19B-9AB759909EC6";
	setAttr ".t" -type "double3" 0.67976057591289285 3.8578979730582237 -3 ;
createNode locator -n "locatorShape125" -p "locator125";
	rename -uid "5BBB110A-472C-A927-B89A-0D8568B1BFD6";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator127" -p "group2";
	rename -uid "FE117B87-4379-042B-A399-789E7E30E086";
	setAttr ".t" -type "double3" 0.67979702779650686 3.7548587556743609 -3 ;
createNode locator -n "locatorShape127" -p "locator127";
	rename -uid "95976421-4544-99C4-FDE9-7B860A79F8E0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator129" -p "group2";
	rename -uid "00B603FB-4EF9-4E3E-CC84-D4A4D6D8DA1B";
	setAttr ".t" -type "double3" 0.67980718215554958 3.6428596017622934 -3 ;
createNode locator -n "locatorShape129" -p "locator129";
	rename -uid "844657DD-4FA2-0E87-BF2E-D3BCB36B5DFC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator131" -p "group2";
	rename -uid "46AE1957-4B4C-0F93-6252-EA8E07B9B62D";
	setAttr ".t" -type "double3" 0.6797910389900208 3.5219005113220212 -3 ;
createNode locator -n "locatorShape131" -p "locator131";
	rename -uid "10E77D22-479F-D140-CF10-72922A7D6004";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator133" -p "group2";
	rename -uid "548A89D2-4064-46D0-F951-11BA4DD718F0";
	setAttr ".t" -type "double3" 0.67974859829992063 3.3919814843535412 -3 ;
createNode locator -n "locatorShape133" -p "locator133";
	rename -uid "B20338DF-40EA-2852-BCE6-1DAE4082502D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator135" -p "group2";
	rename -uid "28C157B0-4461-6E26-59F9-A4ACA7022EE2";
	setAttr ".t" -type "double3" 0.67967986008524894 3.2531025208568578 -3 ;
createNode locator -n "locatorShape135" -p "locator135";
	rename -uid "CB3EF34F-4169-7CB3-21FD-F3A229F15FA9";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator137" -p "group2";
	rename -uid "80E55766-4F4C-F882-9141-7798E17B6744";
	setAttr ".t" -type "double3" 0.67958482434600587 3.1052636208319644 -3 ;
createNode locator -n "locatorShape137" -p "locator137";
	rename -uid "43A6476A-4992-6A09-F27D-1DB192A0A263";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator139" -p "group2";
	rename -uid "52D3C056-4B71-BF28-A52D-3A9A88CDE1F3";
	setAttr ".t" -type "double3" 0.67946349108219151 2.9484647842788672 -3 ;
createNode locator -n "locatorShape139" -p "locator139";
	rename -uid "175F3BD2-41D9-E820-B593-63A9AEAD89A4";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator141" -p "group2";
	rename -uid "562CF9D2-4DC1-9588-E34D-5290F3967864";
	setAttr ".t" -type "double3" 0.67931586029380564 2.7827060111975661 -3 ;
createNode locator -n "locatorShape141" -p "locator141";
	rename -uid "AFA82EA8-41B4-782E-E01F-0F8DB7D5F7B7";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator143" -p "group2";
	rename -uid "35C0201A-47EA-49AE-CE34-EA999575FCB8";
	setAttr ".t" -type "double3" 0.67914193198084827 2.6079873015880568 -3 ;
createNode locator -n "locatorShape143" -p "locator143";
	rename -uid "96692991-4579-AD50-C7BD-9EBC60E7A3AD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator145" -p "group2";
	rename -uid "8439DC97-4EFD-CCA0-57FE-E58065480149";
	setAttr ".t" -type "double3" 0.67894170614331961 2.4243086554503432 -3 ;
createNode locator -n "locatorShape145" -p "locator145";
	rename -uid "EE9958F7-4D63-15DF-DB0B-EB86939FA02C";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator147" -p "group2";
	rename -uid "C1A6E3BB-437F-A2DA-FC14-A1906593E128";
	setAttr ".t" -type "double3" 0.67871518278121945 2.2316700727844241 -3 ;
createNode locator -n "locatorShape147" -p "locator147";
	rename -uid "6CE901A6-4B39-DDA7-BC10-FB88285434E8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator149" -p "group2";
	rename -uid "2A83EE8B-4C21-5340-4FE9-8FB719CF2133";
	setAttr ".t" -type "double3" 0.67846236189454801 2.0300715535902993 -3 ;
createNode locator -n "locatorShape149" -p "locator149";
	rename -uid "190B6DD2-454E-BC2E-8463-E3AA754D1383";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator151" -p "group2";
	rename -uid "09B52B96-4A4B-A943-AA85-A7BA8C157771";
	setAttr ".t" -type "double3" 0.67818324348330505 1.8195130978679672 -3 ;
createNode locator -n "locatorShape151" -p "locator151";
	rename -uid "852341F3-447B-2D45-B069-32AA7D6355CB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator153" -p "group2";
	rename -uid "8D77F5DA-4C00-949F-B7D8-E195875BA3D2";
	setAttr ".t" -type "double3" 0.6778778275474906 1.5999947056174282 -3 ;
createNode locator -n "locatorShape153" -p "locator153";
	rename -uid "5F3E5B1E-4C25-4271-33C7-C582A267BE13";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator155" -p "group2";
	rename -uid "71379D69-4E2A-82C4-13E5-2B8127CAE583";
	setAttr ".t" -type "double3" 0.67754611408710474 1.3715163768386844 -3 ;
createNode locator -n "locatorShape155" -p "locator155";
	rename -uid "50F83042-4F96-5E65-1FA4-EB8F6399D42D";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator157" -p "group2";
	rename -uid "325C821A-4B66-64DD-8709-72B824797CDA";
	setAttr ".t" -type "double3" 0.67718810310214761 1.1340781115317355 -3 ;
createNode locator -n "locatorShape157" -p "locator157";
	rename -uid "B24605A1-4DD0-FDAB-EAC7-049B277A7FCD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator159" -p "group2";
	rename -uid "202C068B-4589-82B6-7091-6D93CA6D0F25";
	setAttr ".t" -type "double3" 0.67680379459261897 0.88767990969657795 -3 ;
createNode locator -n "locatorShape159" -p "locator159";
	rename -uid "5E340C28-4374-17E6-BF65-EEA8F6AC3F34";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator161" -p "group2";
	rename -uid "66C92E7B-4C3C-2D6E-D7D6-1B808BB9D89C";
	setAttr ".t" -type "double3" 0.67639318855851882 0.63232177133321521 -3 ;
createNode locator -n "locatorShape161" -p "locator161";
	rename -uid "8246ABE1-45E3-7DCF-927E-DAB56914DC85";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator163" -p "group2";
	rename -uid "D1EBFC01-41D5-5853-7FDC-609E0189D812";
	setAttr ".t" -type "double3" 0.6759562849998475 0.36800369644164643 -3 ;
createNode locator -n "locatorShape163" -p "locator163";
	rename -uid "635AB78B-46B7-BF1C-6288-CCA76AC105E2";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator165" -p "group2";
	rename -uid "634CF357-4A27-51EA-5FDE-19A136A36EF3";
	setAttr ".t" -type "double3" 0.67549308391660456 0.094725685021873396 -3 ;
createNode locator -n "locatorShape165" -p "locator165";
	rename -uid "6F4C19C3-49E4-EC20-F54A-6EB4A56E01CD";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator167" -p "group2";
	rename -uid "E318607B-4DB5-7CE1-03E2-6EB74319EE90";
	setAttr ".t" -type "double3" 0.67500358530879023 -0.1875122629261039 -3 ;
createNode locator -n "locatorShape167" -p "locator167";
	rename -uid "E78E402C-4577-A015-8942-FE8D207F1740";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator169" -p "group2";
	rename -uid "C3C98942-4258-7415-5E58-13A41A012FE2";
	setAttr ".t" -type "double3" 0.67448778917640451 -0.47871014740228635 -3 ;
createNode locator -n "locatorShape169" -p "locator169";
	rename -uid "28FE262C-46FA-98C8-7C99-3EA3BC065CD5";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator171" -p "group2";
	rename -uid "F7517643-43DF-CE65-BF61-E693AA8BA17C";
	setAttr ".t" -type "double3" 0.67394569551944739 -0.77886796840667305 -3 ;
createNode locator -n "locatorShape171" -p "locator171";
	rename -uid "0A7CBC60-4BF6-7F78-CDB8-B19CBAB9A35A";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator173" -p "group2";
	rename -uid "69386288-450F-4578-C0DC-FDA2CE56FF96";
	setAttr ".t" -type "double3" 0.67337730433791876 -1.0879857259392716 -3 ;
createNode locator -n "locatorShape173" -p "locator173";
	rename -uid "4F6B9AD1-498D-007D-9BFC-758B1FB44F4F";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator175" -p "group2";
	rename -uid "17A1C680-4D3B-C5EC-A8BC-49B6D6D48EA5";
	setAttr ".t" -type "double3" 0.67278261563181874 -1.406063420000073 -3 ;
createNode locator -n "locatorShape175" -p "locator175";
	rename -uid "F076F3F3-4E9F-ABA8-98CB-1786C0204D38";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator177" -p "group2";
	rename -uid "AF8C7D93-47A4-BF44-6573-82BC3815C508";
	setAttr ".t" -type "double3" 0.67216162940114743 -1.7331010505890854 -3 ;
createNode locator -n "locatorShape177" -p "locator177";
	rename -uid "ED619261-4826-7AC6-A2EF-A48A59B9A8F8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator179" -p "group2";
	rename -uid "6E7D6EE2-4BA8-62D4-9544-2D91BBFA4B1B";
	setAttr ".t" -type "double3" 0.67151434564590451 -2.0690986177062971 -3 ;
createNode locator -n "locatorShape179" -p "locator179";
	rename -uid "6DEB4F20-4A48-6E45-957A-A0B3D2733580";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator181" -p "group2";
	rename -uid "A4D4468A-4BFC-8A4D-FA97-249E13FE72EF";
	setAttr ".t" -type "double3" 0.6708407643660903 -2.4140561213517189 -3 ;
createNode locator -n "locatorShape181" -p "locator181";
	rename -uid "02A34F08-417B-AC69-60D0-E39A6168C452";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator183" -p "group2";
	rename -uid "26859A41-4546-4237-CDFD-4A99FBDAAAF6";
	setAttr ".t" -type "double3" 0.6701408855617047 -2.7679735615253458 -3 ;
createNode locator -n "locatorShape183" -p "locator183";
	rename -uid "3046A252-4736-CC24-4C39-178255012F30";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator185" -p "group2";
	rename -uid "980CB004-4051-FB42-72CD-CDA37FA6B600";
	setAttr ".t" -type "double3" 0.6694147092327476 -3.1308509382271779 -3 ;
createNode locator -n "locatorShape185" -p "locator185";
	rename -uid "A8D668CF-4871-ACC6-70CD-568785F8A7CB";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator187" -p "group2";
	rename -uid "6E0B4F75-4FC5-EE00-5117-EB812E565C69";
	setAttr ".t" -type "double3" 0.66866223537921909 -3.5026882514572146 -3 ;
createNode locator -n "locatorShape187" -p "locator187";
	rename -uid "4B762D14-40E5-3B17-914C-059A128706E3";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator189" -p "group2";
	rename -uid "1EB13FC7-40B4-2328-1814-F592548CB322";
	setAttr ".t" -type "double3" 0.66788346400111909 -3.8834855012154605 -3 ;
createNode locator -n "locatorShape189" -p "locator189";
	rename -uid "474B5125-41DC-1CF3-63A2-518250B57B50";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator191" -p "group2";
	rename -uid "DAD924F6-475A-1CA9-D473-61862C780612";
	setAttr ".t" -type "double3" 0.6670783950984478 -4.2732426875019112 -3 ;
createNode locator -n "locatorShape191" -p "locator191";
	rename -uid "430F4020-43B6-398D-4CFF-CF832E075FDF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator193" -p "group2";
	rename -uid "535D97E9-43EA-B516-F488-BC804D5B0057";
	setAttr ".t" -type "double3" 0.666247028671205 -4.6719598103165634 -3 ;
createNode locator -n "locatorShape193" -p "locator193";
	rename -uid "19CBCE11-454C-D70E-0A37-069EAFD287EF";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator195" -p "group2";
	rename -uid "C1B1FEDF-4B36-6C57-3063-DF9B5FCC03B8";
	setAttr ".t" -type "double3" 0.66538936471939092 -5.0796368696594234 -3 ;
createNode locator -n "locatorShape195" -p "locator195";
	rename -uid "0D1231B0-4389-6920-6216-E1984A5E1AF0";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator197" -p "group2";
	rename -uid "239A30C0-4135-8B11-259F-D5A9A32E13F8";
	setAttr ".t" -type "double3" 0.66450540324300522 -5.4962738655304895 -3 ;
createNode locator -n "locatorShape197" -p "locator197";
	rename -uid "F0612626-45D3-2B97-07F9-F4BD3EF0475E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator199" -p "group2";
	rename -uid "F7F3B3EA-4D23-C3A4-3A54-5996E9C85D27";
	setAttr ".t" -type "double3" 0.66359514424204824 -5.9218707979297607 -3 ;
createNode locator -n "locatorShape199" -p "locator199";
	rename -uid "4B4ED209-4CD2-B712-3F82-A78CCD01D15E";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "locator201" -p "group2";
	rename -uid "AD5493F9-48E4-C0D0-8FEF-869F47A09FA3";
	setAttr ".t" -type "double3" 0.66265858771651986 -6.3564276668572406 -3 ;
createNode locator -n "locatorShape201" -p "locator201";
	rename -uid "6D920987-43C9-57C3-604A-609E801E88CC";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.1 0.1 0.1 ;
createNode transform -n "group3";
	rename -uid "39C9F661-4CA6-E4A9-0454-79AECF18BB72";
	setAttr ".rp" -type "double3" 3.9989648189263809 3.9942054753929934 -3 ;
	setAttr ".sp" -type "double3" 3.9989648189263809 3.9942054753929934 -3 ;
createNode transform -n "curve2" -p "group3";
	rename -uid "5B3A70D8-4518-A1C1-664D-5B84A29C351E";
	setAttr ".t" -type "double3" 3 3 -3 ;
	setAttr ".r" -type "double3" 0 0 -81.634052918546018 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape2" -p "curve2";
	rename -uid "ABAFD98A-4C92-1358-F4A6-839904C73B80";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve3" -p "group3";
	rename -uid "0E190512-42ED-48B8-9557-28A40ABBD8A9";
	setAttr ".t" -type "double3" 3.0188589265184849 2.8026766612629652 -3 ;
	setAttr ".r" -type "double3" 0 0 -81.059452558912099 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape3" -p "curve3";
	rename -uid "769E14BE-40E6-E766-D04E-08B00BE94F88";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve4" -p "group3";
	rename -uid "85D355F3-4195-4653-DAE6-BD84BCD94E0E";
	setAttr ".t" -type "double3" 3.0377666766005751 2.6185244308031081 -3 ;
	setAttr ".r" -type "double3" 0 0 -80.415147731725156 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape4" -p "curve4";
	rename -uid "BEECE073-4A85-4FF1-470C-7CA1740C9FDE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve5" -p "group3";
	rename -uid "74C16183-4435-0E95-D120-ED958A722744";
	setAttr ".t" -type "double3" 3.0567224613205344 2.4472745105245832 -3 ;
	setAttr ".r" -type "double3" 0 0 -79.688326404044176 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape5" -p "curve5";
	rename -uid "863D27F3-47BE-B631-2CD7-B0841EB73C45";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve6" -p "group3";
	rename -uid "F38EBD21-43CA-84B6-FEDC-8EB17A84251E";
	setAttr ".t" -type "double3" 3.0757254917526242 2.2886581023315422 -3 ;
	setAttr ".r" -type "double3" 0 0 -78.862924726071498 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape6" -p "curve6";
	rename -uid "FF7B05D2-4CB5-2BDD-A344-E78ACD900684";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve7" -p "group3";
	rename -uid "818DECCF-442D-05E3-A104-79AC41EEF5B2";
	setAttr ".t" -type "double3" 3.0947749789711083 2.1424064081281422 -3 ;
	setAttr ".r" -type "double3" 0 0 -77.918554905199841 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape7" -p "curve7";
	rename -uid "DD8BDBFB-42AD-A4F0-27D4-DEA48BB184CF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve8" -p "group3";
	rename -uid "4FF5F943-47FE-7C37-8A07-569D0E9EA1F4";
	setAttr ".t" -type "double3" 3.1138701340502499 2.008250629818535 -3 ;
	setAttr ".r" -type "double3" 0 0 -76.828993783438762 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape8" -p "curve8";
	rename -uid "B1AD5385-4591-FE61-D799-FC98E8704BA3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve9" -p "group3";
	rename -uid "D6C88940-4737-A64B-A5C6-C2B65D7DBA24";
	setAttr ".t" -type "double3" 3.1330101680643114 1.8859219693068741 -3 ;
	setAttr ".r" -type "double3" 0 0 -75.560016662108808 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape9" -p "curve9";
	rename -uid "91313DB5-44D4-1E9E-7689-B1A3D337393E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve10" -p "group3";
	rename -uid "2AB969E6-46AA-FF79-5AC3-D9ACA4E057FB";
	setAttr ".t" -type "double3" 3.1521942920875552 1.7751516284973148 -3 ;
	setAttr ".r" -type "double3" 0 0 -74.066239525140375 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape10" -p "curve10";
	rename -uid "0853D6B5-4BD5-A07A-51E1-2DA7AED25C5E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve11" -p "group3";
	rename -uid "B1CCBC72-4BC8-B0A7-6CD8-A3B6BD24DF03";
	setAttr ".t" -type "double3" 3.1714217171942445 1.6756708092940091 -3 ;
	setAttr ".r" -type "double3" 0 0 -72.28643779559188 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape11" -p "curve11";
	rename -uid "6570D538-49AF-4816-2C34-E5A54432DB5D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve12" -p "group3";
	rename -uid "A6E1DD0A-4EFF-B3DC-70CB-B59B232C795D";
	setAttr ".t" -type "double3" 3.1906916544586421 1.587210713601112 -3 ;
	setAttr ".r" -type "double3" 0 0 -70.13650060154518 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape12" -p "curve12";
	rename -uid "CA720FF9-42E6-B808-2666-5ABAB08D4332";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve13" -p "group3";
	rename -uid "0535361F-4779-822A-CE93-838A0E2B0974";
	setAttr ".t" -type "double3" 3.2100033149550105 1.5095025433227776 -3 ;
	setAttr ".r" -type "double3" 0 0 -67.498713363332001 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape13" -p "curve13";
	rename -uid "9893779C-4959-0CB6-7D59-CEB3A4459EFB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve14" -p "group3";
	rename -uid "4216F71C-41CD-736D-07F6-7F861199DDCE";
	setAttr ".t" -type "double3" 3.2293559097576141 1.4422775003631594 -3 ;
	setAttr ".r" -type "double3" 0 0 -64.205461042030407 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape14" -p "curve14";
	rename -uid "E1C92179-4D46-2295-D27C-3DA0298D59E2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve15" -p "group3";
	rename -uid "F4530839-4D6F-4226-256F-008F1B80A1BC";
	setAttr ".t" -type "double3" 3.2487486499407141 1.385266786626411 -3 ;
	setAttr ".r" -type "double3" 0 0 -60.015092584123281 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape15" -p "curve15";
	rename -uid "E2859C26-49A1-C383-A40C-71B85F13EAFC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve16" -p "group3";
	rename -uid "639C0AC1-4362-9E16-F0A8-3AB56F9CEFD2";
	setAttr ".t" -type "double3" 3.2681807465785746 1.3382016040166851 -3 ;
	setAttr ".r" -type "double3" 0 0 -54.579427125093446 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape16" -p "curve16";
	rename -uid "D0021406-4870-BA86-84FB-498C267125D0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve17" -p "group3";
	rename -uid "EF91EBA5-4BFD-50CB-F4DC-2F94C54C4D8F";
	setAttr ".t" -type "double3" 3.2876514107454571 1.3008131544381383 -3 ;
	setAttr ".r" -type "double3" 0 0 -47.413058689404671 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape17" -p "curve17";
	rename -uid "4EEA12AB-4E96-A06B-71F5-0A945A25C7E6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve18" -p "group3";
	rename -uid "AE20A600-45B6-0F6D-9B5F-25911A7527CC";
	setAttr ".t" -type "double3" 3.3071598535156252 1.2728326397949221 -3 ;
	setAttr ".r" -type "double3" 0 0 -37.914010323334495 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape18" -p "curve18";
	rename -uid "28ECFDF9-4AC7-C5EB-4F14-F59C8961B5B9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve19" -p "group3";
	rename -uid "4D15249B-4441-A4B4-190C-4985823EB4C4";
	setAttr ".t" -type "double3" 3.3267052859633415 1.2539912619911915 -3 ;
	setAttr ".r" -type "double3" 0 0 -25.581073413096949 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape19" -p "curve19";
	rename -uid "BFC968EE-49F9-F575-6F97-71ACB24D8A6A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve20" -p "group3";
	rename -uid "0B749F42-4610-41F5-815F-C495154225F0";
	setAttr ".t" -type "double3" 3.3462869191628695 1.2440202229310988 -3 ;
	setAttr ".r" -type "double3" 0 0 -10.620520675716115 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape20" -p "curve20";
	rename -uid "0453E9C1-4E05-74B3-10A2-CA8E043CCD1D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve21" -p "group3";
	rename -uid "4E16967B-4914-4BE4-E381-7290D783BFA0";
	setAttr ".t" -type "double3" 3.3659039641884716 1.2426507245187994 -3 ;
	setAttr ".r" -type "double3" 0 0 5.411050074187048 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape21" -p "curve21";
	rename -uid "9DB47D8D-423C-FB69-6352-6C8939308934";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve22" -p "group3";
	rename -uid "A935B5BD-431C-0F8C-BDC5-7CBABA521A2C";
	setAttr ".t" -type "double3" 3.3855556321144107 1.2496139686584469 -3 ;
	setAttr ".r" -type "double3" 0 0 20.20364216606664 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape22" -p "curve22";
	rename -uid "BAD537D1-4BA5-7404-1127-6D9D3CC03D7C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve23" -p "group3";
	rename -uid "EA66BEB0-4D1E-776A-DAD5-0C84DC1F2F33";
	setAttr ".t" -type "double3" 3.4052411340149491 1.2646411572541949 -3 ;
	setAttr ".r" -type "double3" 0 0 32.305933589676705 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape23" -p "curve23";
	rename -uid "D61AB31A-4A29-2BFC-8F03-D4A68B776B9A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve24" -p "group3";
	rename -uid "2EE1002A-4F5F-C926-E373-93A91E175091";
	setAttr ".t" -type "double3" 3.4249596809643506 1.2874634922101973 -3 ;
	setAttr ".r" -type "double3" 0 0 41.594726221509077 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape24" -p "curve24";
	rename -uid "170DD2F2-44CF-B3C5-A30F-3FB3D0DD17F9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve25" -p "group3";
	rename -uid "2DCB2046-4F51-4D71-AD23-C084EC85593B";
	setAttr ".t" -type "double3" 3.4447104840368779 1.3178121754306078 -3 ;
	setAttr ".r" -type "double3" 0 0 48.594935826186251 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape25" -p "curve25";
	rename -uid "3DC5C236-46C0-957A-6716-189BDE42A6F7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve26" -p "group3";
	rename -uid "2A29B0D0-4C8C-8551-B9BC-E7AA5CA7FE37";
	setAttr ".t" -type "double3" 3.4644927543067929 1.3554184088195804 -3 ;
	setAttr ".r" -type "double3" 0 0 53.903407809260706 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape26" -p "curve26";
	rename -uid "6DD2607D-498B-E57D-EA57-089DA8CCC043";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve27" -p "group3";
	rename -uid "0B624AB1-4D5C-3115-3B83-CABBC62B72B2";
	setAttr ".t" -type "double3" 3.4843057028483599 1.4000133942812683 -3 ;
	setAttr ".r" -type "double3" 0 0 57.994489181080539 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape27" -p "curve27";
	rename -uid "140979C4-4DE9-1300-BADD-CEBE0766DCD9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve28" -p "group3";
	rename -uid "E9D6F8AB-4BF0-F4DA-78BC-0EB9328CDB40";
	setAttr ".t" -type "double3" 3.5041485407358413 1.4513283337198264 -3 ;
	setAttr ".r" -type "double3" 0 0 61.206877622652371 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape28" -p "curve28";
	rename -uid "977D21B7-4DCA-9CC2-1825-C5A3C093301D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve29" -p "group3";
	rename -uid "B73A1DA2-43C2-AEB7-1EE1-E5A3370BF20C";
	setAttr ".t" -type "double3" 3.5240204790434988 1.5090944290394062 -3 ;
	setAttr ".r" -type "double3" 0 0 63.775416586071572 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape29" -p "curve29";
	rename -uid "94285F4D-4369-8D44-E8C2-B7A4F671C7E5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve30" -p "group3";
	rename -uid "F75AF816-471C-72B7-A755-B1984AB7747D";
	setAttr ".t" -type "double3" 3.5439207288455967 1.5730428821441647 -3 ;
	setAttr ".r" -type "double3" 0 0 65.863069401275027 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape30" -p "curve30";
	rename -uid "B6AA36BC-4A18-CBBD-CD13-E183994B8D27";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve31" -p "group3";
	rename -uid "1E5968C8-4C26-1A46-82A1-C3A756BC5C40";
	setAttr ".t" -type "double3" 3.5638485012163965 1.6429048949382548 -3 ;
	setAttr ".r" -type "double3" 0 0 67.584385880586069 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape31" -p "curve31";
	rename -uid "F6487E6F-478C-B7C8-9210-5CA09A56FA2E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve32" -p "group3";
	rename -uid "02051A16-4AA2-8564-765B-FD98EA95F9FE";
	setAttr ".t" -type "double3" 3.5838030072301623 1.7184116693258298 -3 ;
	setAttr ".r" -type "double3" 0 0 69.021290128176133 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape32" -p "curve32";
	rename -uid "87029CEB-4CEC-E3AB-4A83-ADA9F5A543D8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve33" -p "group3";
	rename -uid "D2C9FE63-4602-861D-24ED-98B14DD27527";
	setAttr ".t" -type "double3" 3.603783457961157 1.7992944072110424 -3 ;
	setAttr ".r" -type "double3" 0 0 70.233455930323856 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape33" -p "curve33";
	rename -uid "D40ACE36-4FA4-0D70-E703-6485CFAD0FC0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve34" -p "group3";
	rename -uid "F160D542-43A5-9DF4-0D17-D18B78D724E5";
	setAttr ".t" -type "double3" 3.6237890644836428 1.8852843104980472 -3 ;
	setAttr ".r" -type "double3" 0 0 71.265130862106517 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape34" -p "curve34";
	rename -uid "E8DC0C45-4407-A514-CE7C-C2AE555BB227";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve35" -p "group3";
	rename -uid "5B81E6F8-4D74-64D5-B5C5-0095AAE1BECD";
	setAttr ".t" -type "double3" 3.6438190378718827 1.9761125810909999 -3 ;
	setAttr ".r" -type "double3" 0 0 72.149674545457714 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape35" -p "curve35";
	rename -uid "D689A98F-4D45-9B52-F0F6-AFB2A638326F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve36" -p "group3";
	rename -uid "CB17B298-404C-1C01-5BFC-0AAFB0377F0B";
	setAttr ".t" -type "double3" 3.6638725892001389 2.0715104208940511 -3 ;
	setAttr ".r" -type "double3" 0 0 72.912623249347732 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape36" -p "curve36";
	rename -uid "B68D8900-4173-0950-0449-2588586D652D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve37" -p "group3";
	rename -uid "28AD6414-4E6D-1FBF-F69D-04A7060A19EC";
	setAttr ".t" -type "double3" 3.6839489295426753 2.1712090318113568 -3 ;
	setAttr ".r" -type "double3" 0 0 73.573794266745281 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape37" -p "curve37";
	rename -uid "26168572-4D3F-C8D5-6E03-3EB9F263EB52";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve38" -p "group3";
	rename -uid "C3A99F6A-42F3-5A44-8039-C79E640113EE";
	setAttr ".t" -type "double3" 3.704047269973755 2.2749396157470696 -3 ;
	setAttr ".r" -type "double3" 0 0 74.148755406856367 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape38" -p "curve38";
	rename -uid "B987B235-4A4D-18D7-DD14-2F82F6FCA651";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve39" -p "group3";
	rename -uid "07D3C739-4E35-9D4E-AD22-EDB0CC980A90";
	setAttr ".t" -type "double3" 3.7241668215676396 2.3824333746053465 -3 ;
	setAttr ".r" -type "double3" 0 0 74.649867879723558 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape39" -p "curve39";
	rename -uid "FAAD18AB-4801-736E-0C89-DF908E89EFCB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve40" -p "group3";
	rename -uid "99EA7102-4977-C30F-5C52-519FB1C8FF8C";
	setAttr ".t" -type "double3" 3.7443067953985931 2.4934215102903368 -3 ;
	setAttr ".r" -type "double3" 0 0 75.087037763729342 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape40" -p "curve40";
	rename -uid "5CABED17-4AA1-27D0-5F13-D1BE3FA74FCA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve41" -p "group3";
	rename -uid "88850619-439F-BF2C-DB40-149BBAAF4D4E";
	setAttr ".t" -type "double3" 3.7644664025408776 2.6076352247061978 -3 ;
	setAttr ".r" -type "double3" 0 0 75.468265151779562 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape41" -p "curve41";
	rename -uid "7A7AE7F1-4A51-8510-81CF-F6B29A2F6A86";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve42" -p "group3";
	rename -uid "3045A543-4FAA-C1DE-C93A-B893DED136DB";
	setAttr ".t" -type "double3" 3.7846448540687572 2.7248057197570805 -3 ;
	setAttr ".r" -type "double3" 0 0 75.800050609454047 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape42" -p "curve42";
	rename -uid "D3AAA6CE-4CA4-19B7-4A8D-2BA9FCA937F4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve43" -p "group3";
	rename -uid "0E7D53BE-41C5-7BAB-9D2E-529E542CF131";
	setAttr ".t" -type "double3" 3.8048413610564915 2.8446641973471416 -3 ;
	setAttr ".r" -type "double3" 0 0 76.087699466337725 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape43" -p "curve43";
	rename -uid "1D36F0BD-423B-8A53-F7DC-5B8B6EEFA6F5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve44" -p "group3";
	rename -uid "7A15F0A0-44CF-73E4-A0E0-189C6C997B67";
	setAttr ".t" -type "double3" 3.8250551345783474 2.9669418593805292 -3 ;
	setAttr ".r" -type "double3" 0 0 76.335551873228951 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape44" -p "curve44";
	rename -uid "88385F4A-4BB5-0E14-2E77-6F82CA3126B1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve45" -p "group3";
	rename -uid "12EF92B9-41CD-7B44-E86D-BE88C3126F0D";
	setAttr ".t" -type "double3" 3.8452853857085851 3.0913699077614063 -3 ;
	setAttr ".r" -type "double3" 0 0 76.547158138564868 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape45" -p "curve45";
	rename -uid "F350596F-4B6F-5BCF-438E-A69E6830F136";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve46" -p "group3";
	rename -uid "3210A14A-47A3-BA55-0C2D-419847525AFD";
	setAttr ".t" -type "double3" 3.8655313255214692 3.2176795443939201 -3 ;
	setAttr ".r" -type "double3" 0 0 76.725413140474942 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape46" -p "curve46";
	rename -uid "B8AB698B-4443-79D7-DC45-50ACFABFAC81";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve47" -p "group3";
	rename -uid "9C01A2CE-48A1-011C-263D-D197D80E5790";
	setAttr ".t" -type "double3" 3.8857921650912615 3.3456019711822269 -3 ;
	setAttr ".r" -type "double3" 0 0 76.872659669910817 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape47" -p "curve47";
	rename -uid "23CB2C90-4661-6AC5-59C0-53BD42E19824";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve48" -p "group3";
	rename -uid "8BDCD648-4554-C18F-B92E-6F9E686F3276";
	setAttr ".t" -type "double3" 3.9060671154922249 3.4748683900304789 -3 ;
	setAttr ".r" -type "double3" 0 0 76.990767801543839 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape48" -p "curve48";
	rename -uid "BE86662E-442A-E8A0-2E8F-03A6F523D8C8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve49" -p "group3";
	rename -uid "B120212F-4F15-FD79-62FB-71821C5F8B98";
	setAttr ".t" -type "double3" 3.9263553877986226 3.6052100028428313 -3 ;
	setAttr ".r" -type "double3" 0 0 77.081195426285987 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape49" -p "curve49";
	rename -uid "2C89FE3D-484E-A6E6-EBD9-B7A5DE26DBB0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve50" -p "group3";
	rename -uid "CFD996AA-4DB8-CF85-24AA-0A96D20951FD";
	setAttr ".t" -type "double3" 3.946656193084717 3.7363580115234383 -3 ;
	setAttr ".r" -type "double3" 0 0 77.145033657064346 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape50" -p "curve50";
	rename -uid "1CF6FA15-4820-AA62-62CD-AD808E5A870B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve51" -p "group3";
	rename -uid "D610B15F-4478-D014-0140-A082D15813E5";
	setAttr ".t" -type "double3" 3.966968742424771 3.8680436179764497 -3 ;
	setAttr ".r" -type "double3" 0 0 77.183039766154835 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape51" -p "curve51";
	rename -uid "AFFF1598-4988-2C1D-1AD2-CBA84AA6409B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve52" -p "group3";
	rename -uid "FFF630EA-43F3-95DE-3E8F-B296ABB1345C";
	setAttr ".t" -type "double3" 3.9872922468930483 3.9999980241060253 -3 ;
	setAttr ".r" -type "double3" 0 0 77.195659510050788 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape52" -p "curve52";
	rename -uid "B78118FA-49C5-42C0-B963-4ABBFB37C32D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve53" -p "group3";
	rename -uid "55AACE4A-4462-0650-67EB-84942F46C010";
	setAttr ".t" -type "double3" 4.0076259175638107 4.1319524318163143 -3 ;
	setAttr ".r" -type "double3" 0 0 77.183040063289667 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape53" -p "curve53";
	rename -uid "E19ED58D-4A80-DFF2-BD55-CD9357EE6E8D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve54" -p "group3";
	rename -uid "7581E321-4705-0ED7-D514-2B927403627F";
	setAttr ".t" -type "double3" 4.027968965511322 4.2636380430114773 -3 ;
	setAttr ".r" -type "double3" 0 0 77.145034254804102 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape54" -p "curve54";
	rename -uid "B6547E0A-45DD-65E3-7509-5C9E53578374";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve55" -p "group3";
	rename -uid "BCC27805-4554-CBB5-EC69-E8B2A8F4CD3C";
	setAttr ".t" -type "double3" 4.0483206018098441 4.394786059595658 -3 ;
	setAttr ".r" -type "double3" 0 0 77.081196331671123 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape55" -p "curve55";
	rename -uid "2248B973-4C81-1720-CA1E-8693A9326785";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve56" -p "group3";
	rename -uid "73077AC9-4492-786F-A743-179B213C64D6";
	setAttr ".t" -type "double3" 4.0686800375336416 4.5251276834730128 -3 ;
	setAttr ".r" -type "double3" 0 0 76.990769025390534 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape56" -p "curve56";
	rename -uid "5983945B-4F9E-A539-B30C-7D8EED19E35D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve57" -p "group3";
	rename -uid "6A13BEAC-4A31-2F02-740B-91B85F27AA83";
	setAttr ".t" -type "double3" 4.0890464837569747 4.6543941165477047 -3 ;
	setAttr ".r" -type "double3" 0 0 76.87266122713298 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape57" -p "curve57";
	rename -uid "AB1A9E97-47F8-3949-BAFD-56A1700C1261";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve58" -p "group3";
	rename -uid "7F29A087-4362-9653-99C8-0D810B20FD00";
	setAttr ".t" -type "double3" 4.1094191515541079 4.7823165607238742 -3 ;
	setAttr ".r" -type "double3" 0 0 76.725415050540619 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape58" -p "curve58";
	rename -uid "8D84AFBF-4DD8-3EBE-6082-558286D6488A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve59" -p "group3";
	rename -uid "2851B8EA-413C-9C02-706E-8EA7573A80EC";
	setAttr ".t" -type "double3" 4.129797251999304 4.9086262179056899 -3 ;
	setAttr ".r" -type "double3" 0 0 76.547160426113123 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape59" -p "curve59";
	rename -uid "590D9248-4BC0-6E80-3F32-578CFB0761F1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve60" -p "group3";
	rename -uid "3C53C509-4255-3FBE-358C-5799E97493AA";
	setAttr ".t" -type "double3" 4.1501799961668251 5.0330542899972919 -3 ;
	setAttr ".r" -type "double3" 0 0 76.335554568884064 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape60" -p "curve60";
	rename -uid "7C3D45A7-4A04-1B4A-F5E9-D78FCDE71029";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve61" -p "group3";
	rename -uid "F7D35889-4425-493D-040C-D8A692DFEF51";
	setAttr ".t" -type "double3" 4.1705665951309348 5.1553319789028365 -3 ;
	setAttr ".r" -type "double3" 0 0 76.087702607771931 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape61" -p "curve61";
	rename -uid "0556BFC5-41A3-4112-A0AB-98900322A6F6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve62" -p "group3";
	rename -uid "E37FD883-428F-A095-1271-538BBA0FEA20";
	setAttr ".t" -type "double3" 4.1909562599658967 5.2751904865264931 -3 ;
	setAttr ".r" -type "double3" 0 0 75.800054242769491 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape62" -p "curve62";
	rename -uid "2C2238F0-4B0D-704F-CB15-7F98ACBE064B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve63" -p "group3";
	rename -uid "74A0DEB4-4641-7A8E-A620-2BB884007B03";
	setAttr ".t" -type "double3" 4.211348201745972 5.3923610147723871 -3 ;
	setAttr ".r" -type "double3" 0 0 75.468269333307148 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape63" -p "curve63";
	rename -uid "011DD302-4AD4-7BEA-39E0-68A60D0564CD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve64" -p "group3";
	rename -uid "8BB47F06-4EAA-E859-6101-24A098200434";
	setAttr ".t" -type "double3" 4.2317416315454235 5.5065747655447037 -3 ;
	setAttr ".r" -type "double3" 0 0 75.087042562380972 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape64" -p "curve64";
	rename -uid "BA9B03B7-4D50-2E84-39B7-0498D1BE2804";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve65" -p "group3";
	rename -uid "90CEA0B4-4A07-1F2B-97D7-CF85621EC757";
	setAttr ".t" -type "double3" 4.2521357604385166 5.6175629407475709 -3 ;
	setAttr ".r" -type "double3" 0 0 74.649873380089204 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape65" -p "curve65";
	rename -uid "1A3780C9-44D5-0051-75EB-25A5779C0A5C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve66" -p "group3";
	rename -uid "4080B66B-4470-4362-85D6-0FB26060A7CC";
	setAttr ".t" -type "double3" 4.2725297994995106 5.7250567422851582 -3 ;
	setAttr ".r" -type "double3" 0 0 74.148761713318677 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape66" -p "curve66";
	rename -uid "8A59496B-4B97-C582-0668-0B9285EB81A8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve67" -p "group3";
	rename -uid "CC901500-4963-BEB9-CD1E-2F8267E635F0";
	setAttr ".t" -type "double3" 4.2929229598026728 5.8287873720616092 -3 ;
	setAttr ".r" -type "double3" 0 0 73.573801509004213 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape67" -p "curve67";
	rename -uid "5BCC4396-4535-C0A1-4817-BAB5B3AA5617";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve68" -p "group3";
	rename -uid "BFF8B8F8-4297-503C-5FF5-A68BF7BAA9B8";
	setAttr ".t" -type "double3" 4.3133144524222615 5.9284860319810884 -3 ;
	setAttr ".r" -type "double3" 0 0 72.91263158992821 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape68" -p "curve68";
	rename -uid "8BED01AB-4263-24E0-C187-3C92E4509E3F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve69" -p "group3";
	rename -uid "D57D3F0C-430C-7F6D-0447-74B29A1E1706";
	setAttr ".t" -type "double3" 4.3337034884325414 6.0238839239477411 -3 ;
	setAttr ".r" -type "double3" 0 0 72.149684190049911 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape69" -p "curve69";
	rename -uid "222DE960-4AA6-7340-53A5-9C81E684E2D1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve70" -p "group3";
	rename -uid "8CD0DD03-41F8-4E8D-1E4B-E4B7DBA4CA81";
	setAttr ".t" -type "double3" 4.3540892789077761 6.1147122498657245 -3 ;
	setAttr ".r" -type "double3" 0 0 71.265142074016964 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape70" -p "curve70";
	rename -uid "3EB14FD2-46F6-6A5A-64FA-EBABC13E1B27";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve71" -p "group3";
	rename -uid "014EE3F3-4D07-C631-034A-4C80C8264975";
	setAttr ".t" -type "double3" 4.3744710349222267 6.2007022116391859 -3 ;
	setAttr ".r" -type "double3" 0 0 70.233469050990692 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape71" -p "curve71";
	rename -uid "303441F0-45F0-F53B-9813-12862C1CCB40";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve72" -p "group3";
	rename -uid "4F00AEF0-41C2-E57A-D284-1C9B603C9484";
	setAttr ".t" -type "double3" 4.3948479675501586 6.2815850111722931 -3 ;
	setAttr ".r" -type "double3" 0 0 69.021305606778483 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape72" -p "curve72";
	rename -uid "5BE72162-46FF-7CB1-783F-30B65BBA30FF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve73" -p "group3";
	rename -uid "3924C201-4689-3C03-0C63-E1863948A7FE";
	setAttr ".t" -type "double3" 4.415219287865833 6.3570918503691942 -3 ;
	setAttr ".r" -type "double3" 0 0 67.584404317507321 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape73" -p "curve73";
	rename -uid "F62C54F1-4017-2C53-5A0A-08ABF17FACFF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve74" -p "group3";
	rename -uid "6E989F46-42B9-3FC5-41B3-9686F1FB5B5E";
	setAttr ".t" -type "double3" 4.4355842069435116 6.4269539311340314 -3 ;
	setAttr ".r" -type "double3" 0 0 65.863091612952388 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape74" -p "curve74";
	rename -uid "C15B86D6-4BA9-2BCD-8F52-E1B6A9B45C1A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve75" -p "group3";
	rename -uid "683A9C7D-4724-AE2E-95FD-E6A3D1CA7692";
	setAttr ".t" -type "double3" 4.4559419358574601 6.4909024553709722 -3 ;
	setAttr ".r" -type "double3" 0 0 63.775443703113858 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape75" -p "curve75";
	rename -uid "77A0EB07-4C1F-B6EF-300B-A19455F3B45D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve76" -p "group3";
	rename -uid "CF8819DD-4552-60F2-CFFD-FB85E0E29153";
	setAttr ".t" -type "double3" 4.4762916856819377 6.5486686249841686 -3 ;
	setAttr ".r" -type "double3" 0 0 61.206911239436515 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape76" -p "curve76";
	rename -uid "812D0001-4554-C1DB-CFA9-E39EA89BB847";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve77" -p "group3";
	rename -uid "751FF16B-4C11-D3C7-54B9-DAA303709BDD";
	setAttr ".t" -type "double3" 4.4966326674912125 6.5999836418777704 -3 ;
	setAttr ".r" -type "double3" 0 0 57.994531582225989 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape77" -p "curve77";
	rename -uid "2E0F3822-4EFD-67BA-0941-0F9FDD0E1178";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve78" -p "group3";
	rename -uid "06A54F55-4C55-A701-6567-65AA1356939E";
	setAttr ".t" -type "double3" 4.516964092359542 6.6445787079559322 -3 ;
	setAttr ".r" -type "double3" 0 0 53.90346229803454 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape78" -p "curve78";
	rename -uid "349C2BC1-4E78-E7FC-24F1-97BD560357B4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve79" -p "group3";
	rename -uid "59519822-4B2D-72C8-355F-9B82A95DFDC7";
	setAttr ".t" -type "double3" 4.5372851713611926 6.6821850251228074 -3 ;
	setAttr ".r" -type "double3" 0 0 48.595007135761705 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape79" -p "curve79";
	rename -uid "F9EF7F1D-4E6B-C693-A12A-FCAF9092C715";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve80" -p "group3";
	rename -uid "35647BDB-4927-6E2B-D8B8-09A202FB6E6E";
	setAttr ".t" -type "double3" 4.5575951155704271 6.7125337952825568 -3 ;
	setAttr ".r" -type "double3" 0 0 41.594820775980551 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape80" -p "curve80";
	rename -uid "0AA1BFAE-456C-D83B-5131-DFB3D886A880";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve81" -p "group3";
	rename -uid "B507C609-4819-20C4-5897-0EA060E844DE";
	setAttr ".t" -type "double3" 4.5778931360615047 6.7353562203393258 -3 ;
	setAttr ".r" -type "double3" 0 0 32.306058675485914 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape81" -p "curve81";
	rename -uid "C6BD9DE5-4CD0-17B3-2F0E-E9AF3E848B8A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve82" -p "group3";
	rename -uid "3334A619-49A0-28C7-C450-AB81336F0C4B";
	setAttr ".t" -type "double3" 4.5981784439086919 6.7503835021972636 -3 ;
	setAttr ".r" -type "double3" 0 0 20.203801697984385 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape82" -p "curve82";
	rename -uid "AD9678BE-4EBB-6163-649C-D98CD4EC42F6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve83" -p "group3";
	rename -uid "BEAF66BF-462A-BD86-15DF-778359618AB9";
	setAttr ".t" -type "double3" 4.6184502501862497 6.7573468427605432 -3 ;
	setAttr ".r" -type "double3" 0 0 5.4112355841754196 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape83" -p "curve83";
	rename -uid "2F0F2E94-4FBD-B60C-6C0D-D09422CB548F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve84" -p "group3";
	rename -uid "7A43F40F-4EB8-E4F0-93F4-8C9AA826E382";
	setAttr ".t" -type "double3" 4.6387077659684426 6.7559774439333005 -3 ;
	setAttr ".r" -type "double3" 0 0 -10.620334026198476 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape84" -p "curve84";
	rename -uid "54197DD0-4FF3-E505-4A8E-DE9CA9C1904F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve85" -p "group3";
	rename -uid "0518555A-461A-D2B0-827A-0BB3CF271B01";
	setAttr ".t" -type "double3" 4.6589502023295317 6.7460065076196809 -3 ;
	setAttr ".r" -type "double3" 0 0 -25.580911310964922 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape85" -p "curve85";
	rename -uid "99DEEAAB-4E3D-4892-1238-FCBA126D9046";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve86" -p "group3";
	rename -uid "C8BE7C45-4736-D89A-4397-A487CAD6AB5B";
	setAttr ".t" -type "double3" 4.6791767703437808 6.7271652357238718 -3 ;
	setAttr ".r" -type "double3" 0 0 -37.913882548345477 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape86" -p "curve86";
	rename -uid "CB12A02B-474E-21E4-78AD-868D7358A07A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve87" -p "group3";
	rename -uid "98E14AAF-4632-D953-DDA6-5EB695FFC1E6";
	setAttr ".t" -type "double3" 4.6993866810854525 6.6991848301500037 -3 ;
	setAttr ".r" -type "double3" 0 0 -47.412961915849479 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape87" -p "curve87";
	rename -uid "95CDD91B-49F5-F5C4-CCC7-1AB4C6E2DCF0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve88" -p "group3";
	rename -uid "E5C266D9-4C00-AB67-BE72-0DA55F5D0ED2";
	setAttr ".t" -type "double3" 4.7195791456288099 6.6617964928022371 -3 ;
	setAttr ".r" -type "double3" 0 0 -54.579354111151986 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape88" -p "curve88";
	rename -uid "06097B53-4D63-708E-7288-2E8EFB38AF6B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve89" -p "group3";
	rename -uid "BE94048C-4CDF-159D-86BD-D48B28AA826D";
	setAttr ".t" -type "double3" 4.7397533750481156 6.61473142558473 -3 ;
	setAttr ".r" -type "double3" 0 0 -60.015036784527908 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape89" -p "curve89";
	rename -uid "117A3703-4F47-DC41-AE53-E8A4C8D9A12F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve90" -p "group3";
	rename -uid "AA1581E6-4476-A51F-7467-70948D47F64E";
	setAttr ".t" -type "double3" 4.7599085804176333 6.5577208304016086 -3 ;
	setAttr ".r" -type "double3" 0 0 -64.205417597226656 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape90" -p "curve90";
	rename -uid "4A0C2657-4656-7B01-1524-618E5E88CD76";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve91" -p "group3";
	rename -uid "0B4495D3-430B-AA03-7EDB-029FBA4E3213";
	setAttr ".t" -type "double3" 4.7800439728116242 6.4904959091570618 -3 ;
	setAttr ".r" -type "double3" 0 0 -67.498678874646316 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape91" -p "curve91";
	rename -uid "5610B02B-4606-7EC6-850F-39AD943981A3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve92" -p "group3";
	rename -uid "14528471-438E-A671-E504-349AAC85B8BA";
	setAttr ".t" -type "double3" 4.8001587633043528 6.4127878637552236 -3 ;
	setAttr ".r" -type "double3" 0 0 -70.136472718359755 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape92" -p "curve92";
	rename -uid "F61047EF-4F66-1F55-5CFB-138ADEB31A6E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve93" -p "group3";
	rename -uid "6F11BF22-4D31-B9C0-A43E-848A65C873E9";
	setAttr ".t" -type "double3" 4.820252162970081 6.3243278961002574 -3 ;
	setAttr ".r" -type "double3" 0 0 -72.286414878738483 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape93" -p "curve93";
	rename -uid "023D0BDF-4ACC-E6A5-FABB-62BA9AC5850B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve94" -p "group3";
	rename -uid "F7EB1D82-40C7-B355-EE14-BBA238D89D7A";
	setAttr ".t" -type "double3" 4.8403233828830716 6.2248472080963086 -3 ;
	setAttr ".r" -type "double3" 0 0 -74.066220413352596 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape94" -p "curve94";
	rename -uid "CB0E39E0-4B57-9294-F7CA-73A5B3C1AA68";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve95" -p "group3";
	rename -uid "3E1E853B-4DBE-7A3D-ABB3-ED8D26ED8CB7";
	setAttr ".t" -type "double3" 4.8603716341175884 6.1140770016475479 -3 ;
	setAttr ".r" -type "double3" 0 0 -75.560000517500526 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape95" -p "curve95";
	rename -uid "2DF73995-43C2-A2FC-B7FC-E19958476257";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve96" -p "group3";
	rename -uid "70680FCC-483B-9709-FD0B-579E25697283";
	setAttr ".t" -type "double3" 4.8803961277478942 5.9917484786581028 -3 ;
	setAttr ".r" -type "double3" 0 0 -76.828979990165323 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape96" -p "curve96";
	rename -uid "73E610EE-437B-A481-D4AA-1F9AB437FB98";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve97" -p "group3";
	rename -uid "B92392D7-48AA-A1C8-D010-2EB90603A94C";
	setAttr ".t" -type "double3" 4.9003960748482491 5.8575928410321474 -3 ;
	setAttr ".r" -type "double3" 0 0 -77.918543002532815 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape97" -p "curve97";
	rename -uid "CA7EDE7D-4152-F12C-0CE4-698EDEF74BAB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve98" -p "group3";
	rename -uid "2B80EDFC-4196-7AA8-E9F1-69AED1744E55";
	setAttr ".t" -type "double3" 4.9203706864929204 5.711341290673837 -3 ;
	setAttr ".r" -type "double3" 0 0 -78.862914363591386 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape98" -p "curve98";
	rename -uid "311C0904-4265-C6C5-0D05-7DB253507E39";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve99" -p "group3";
	rename -uid "1B585EDB-4C1F-1259-3B3C-14AE448C8DAE";
	setAttr ".t" -type "double3" 4.9403191737561682 5.552725029487295 -3 ;
	setAttr ".r" -type "double3" 0 0 -79.6883173111475 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape99" -p "curve99";
	rename -uid "B9BD1996-4841-D8A4-2DB1-A79D50F18115";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve100" -p "group3";
	rename -uid "84B63D05-4F4B-13F7-E2D1-39975E56E4C6";
	setAttr ".t" -type "double3" 4.9602407477122537 5.3814752593767166 -3 ;
	setAttr ".r" -type "double3" 0 0 -80.415139696516761 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape100" -p "curve100";
	rename -uid "A9D733CB-4F2A-660E-846B-84AFFED93233";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "curve101" -p "group3";
	rename -uid "78938EE2-45DE-391E-89A6-C4AE8A912E57";
	setAttr ".t" -type "double3" 4.9801346194354439 5.1973231822462225 -3 ;
	setAttr ".r" -type "double3" 0 0 -81.059445413346296 ;
	setAttr ".s" -type "double3" 0.39999999999999991 0.39999999999999991 0.39999999999999991 ;
createNode nurbsCurve -n "curveShape101" -p "curve101";
	rename -uid "2F8019E5-4DA9-A5F4-314E-D9AA08F8D435";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 1 2 2 2
		5
		-3.9115855610785104 0 0
		-1.9474322157143011 0 0
		0.01672112964990409 0 0
		1.9808744750141141 0 0
		3.9450278203783142 0 0
		;
createNode transform -n "locator202";
	rename -uid "BB555375-4E4B-1B93-2621-24B3AC8ED65D";
	setAttr ".t" -type "double3" 3 3 -3 ;
createNode locator -n "locatorShape202" -p "locator202";
	rename -uid "8DC8407A-422C-F59D-EBD1-67AAEF6CC533";
	setAttr -k off ".v";
createNode transform -n "locator203";
	rename -uid "EDCC2C10-4CD6-5E57-79A3-9FB8E45991D3";
	setAttr ".t" -type "double3" 3.6278083920478821 -3.799949741363525 -3 ;
createNode locator -n "locatorShape203" -p "locator203";
	rename -uid "5A558986-48BB-B1BE-D75E-6DA8AE2D6D37";
	setAttr -k off ".v";
createNode transform -n "locator204";
	rename -uid "A71BB7B7-425D-5B2E-282F-C9BCC1FBF42A";
	setAttr ".t" -type "double3" 4.33830426633358 11.799944472312927 -3 ;
createNode locator -n "locatorShape204" -p "locator204";
	rename -uid "E75D63D8-41EB-B288-1AA8-D184BB6484AF";
	setAttr -k off ".v";
createNode transform -n "locator205";
	rename -uid "41BA0F6A-4575-4123-44F5-53B1A7D3A19C";
	setAttr ".t" -type "double3" 5 5 -3 ;
createNode locator -n "locatorShape205" -p "locator205";
	rename -uid "6F76EC48-404C-293F-DAAF-098ABF4B820E";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "73FCDE39-4B05-24AB-E161-EFBA198C1D68";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "8C15B9A6-456E-A10C-4A82-3A934EB04084";
createNode displayLayer -n "defaultLayer";
	rename -uid "113C5EC1-459F-0DF7-4863-7788F4D638E6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "57521E54-4637-E698-80A9-5D938E9D4A23";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "13797249-4565-6E58-668C-D6B344F34399";
	setAttr ".g" yes;
createNode animCurveTU -n "locator1_visibility";
	rename -uid "F67AECDA-4CD4-96DB-6619-D4BDEC8D4762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 5 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "locator1_translateX";
	rename -uid "78805B4C-4249-47D6-1413-D2A8BA52C29E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 5 0;
createNode animCurveTL -n "locator1_translateY";
	rename -uid "A70F258D-4A24-CDD9-82B4-C6A52E75E02F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 3 5 5;
	setAttr -s 3 ".kit[0:2]"  2 1 1;
	setAttr -s 3 ".kot[0:2]"  2 1 1;
	setAttr -s 3 ".kix[1:2]"  0.0038468695711344481 0.0040545081719756126;
	setAttr -s 3 ".kiy[1:2]"  -0.99999266862869263 -0.99999183416366577;
	setAttr -s 3 ".kox[1:2]"  0.0038468651473522186 0.0040545039810240269;
	setAttr -s 3 ".koy[1:2]"  -0.99999260902404785 -0.999991774559021;
createNode animCurveTL -n "locator1_translateZ";
	rename -uid "80C7B91E-451F-367C-4860-3D953B06EFCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 5 0;
createNode animCurveTA -n "locator1_rotateX";
	rename -uid "F41C8192-432C-B1C6-137E-7686C2B9FE21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 5 0;
createNode animCurveTA -n "locator1_rotateY";
	rename -uid "FC82D87F-4654-0E60-9695-2AB891004FBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 5 0;
createNode animCurveTA -n "locator1_rotateZ";
	rename -uid "96155ECC-470C-B63B-44D7-C3880A660C18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 5 0;
createNode animCurveTU -n "locator1_scaleX";
	rename -uid "C03CC4AB-46F9-1B57-D256-A99BA24A7A1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 5 1;
createNode animCurveTU -n "locator1_scaleY";
	rename -uid "94AEB0ED-4A86-AB4F-B517-23903DC9A77E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 5 1;
createNode animCurveTU -n "locator1_scaleZ";
	rename -uid "61B235EA-4C33-6393-DBA4-BBB66BC4D491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 5 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D0550296-47BD-8ADB-7A3F-2C993C0F92AF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 333\n                -height 335\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 333\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 332\n                -height 335\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 332\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 671\n                -height 715\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 671\n            -height 715\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 532\n                -height 715\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 532\n            -height 715\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 532\\n    -height 715\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 532\\n    -height 715\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9AA6B383-492F-C927-6B50-478B42606E7F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 5 -ast 0 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 3;
	setAttr ".unw" 3;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "locator1_visibility.o" "locator1.v";
connectAttr "locator1_translateX.o" "locator1.tx";
connectAttr "locator1_translateY.o" "locator1.ty";
connectAttr "locator1_translateZ.o" "locator1.tz";
connectAttr "locator1_rotateX.o" "locator1.rx";
connectAttr "locator1_rotateY.o" "locator1.ry";
connectAttr "locator1_rotateZ.o" "locator1.rz";
connectAttr "locator1_scaleX.o" "locator1.sx";
connectAttr "locator1_scaleY.o" "locator1.sy";
connectAttr "locator1_scaleZ.o" "locator1.sz";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of tan.ma
