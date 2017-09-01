// Completed, no errors, 05/03/05 19:19:56 rt=0.03m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 input AND with 0X drive
// z = a1 & a2
module an02d0 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:56 rt=0.03m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 input AND with 1X drive
// z = a1 & a2
module an02d1 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:17 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 input AND with 2X drive
// z = a1 & a2
module an02d2 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:03 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 input AND with 3X drive
// z = a1 & a2
module an02d3 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:03 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 input AND with 4X drive
// z = a1 & a2
module an02d4 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:45 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 input AND with 0X drive
// z = a1 & a2 & a3
module an03d0 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:48 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 input AND with 1X drive
// z = a1 & a2 & a3
module an03d1 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:57 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 input AND with 2X drive
// z = a1 & a2 & a3
module an03d2 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:57 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 input AND with 3X drive
// z = a1 & a2 & a3
module an03d3 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:01 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 input AND with 4X drive
// z = a1 & a2 & a3
module an03d4 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:54 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 input AND with 0X drive
// z = a1 & a2 & a3 & a4
module an04d0 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:54 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 input AND with 1X drive
// z = a1 & a2 & a3 & a4
module an04d1 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:56 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 input AND with 2X drive
// z = a1 & a2 & a3 & a4
module an04d2 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:15 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 input AND with 3X drive
// z = a1 & a2 & a3 & a4
module an04d3 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:31 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 input AND with 4X drive
// z = a1 & a2 & a3 & a4
module an04d4 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:17:57 rt=0.05m p=0.06m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 2-NOR with 0X drive
// zn = !((a1 & a2) | (b1 & b2))
module ao01d0 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if(!a1&a2) (b1 => zn) = (0,0);
	if(!a1&a2) (b2 => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&!a2) (b1 => zn) = (0,0);
	if(a1&!a2) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:04 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 2-NOR with 1X drive
// zn = !((a1 & a2) | (b1 & b2))
module ao01d1 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if(!a1&a2) (b1 => zn) = (0,0);
	if(!a1&a2) (b2 => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&!a2) (b1 => zn) = (0,0);
	if(a1&!a2) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:56 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 2-NOR with 2X drive
// zn = !((a1 & a2) | (b1 & b2))
module ao01d2 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:50 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 2-NOR with 4X drive
// zn = !((a1 & a2) | (b1 & b2))
module ao01d4 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:36 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 3-AND into 2-NOR with 0X Drive
// zn = !((a1 & a2 & a3) | (b1 & b2 & b3))
module ao02d0 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire a3znstate1, b3znstate2, a2znstate1, b2znstate2, a1znstate1, b1znstate2;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!a3) (b1 => zn) = (0,0);
	if(!a1&!a2&!a3) (b2 => zn) = (0,0);
	if(!a1&!a2&!a3) (b3 => zn) = (0,0);
	if(!a1&a2&a3) (b1 => zn) = (0,0);
	if(!a1&a2&a3) (b2 => zn) = (0,0);
	if(!a1&a2&a3) (b3 => zn) = (0,0);
	if(!b1&!b2&!b3) (a1 => zn) = (0,0);
	if(!b1&!b2&!b3) (a2 => zn) = (0,0);
	if(!b1&!b2&!b3) (a3 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a1 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b1 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b2 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b3 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(a3znstate1) (a3 => zn) = (0,0);
	if(b1znstate2) (b1 => zn) = (0,0);
	if(b2znstate2) (b2 => zn) = (0,0);
	if(b3znstate2) (b3 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b3,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn5,b2);
	and _wi2 (_wn4,_wn5,b3);
	not _wi3 (_wn7,b3);
	and _wi4 (_wn6,b2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,b1,_wn5);
	or _wi10 (a3znstate1,_wn1,_wn8);
	not _wi11 (_wn13,a1);
	not _wi12 (_wn16,a2);
	and _wi13 (_wn15,_wn16,a3);
	not _wi14 (_wn18,a3);
	and _wi15 (_wn17,a2,_wn18);
	or _wi16 (_wn14,_wn15,_wn17);
	and _wi17 (_wn12,_wn13,_wn14);
	and _wi20 (_wn19,_wn18,a1,_wn16);
	or _wi21 (b3znstate2,_wn12,_wn19);
	or _wi32 (a2znstate1,_wn1,_wn8);
	or _wi43 (b2znstate2,_wn12,_wn19);
	or _wi54 (a1znstate1,_wn1,_wn8);
	or _wi65 (b1znstate2,_wn12,_wn19);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:46 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 3-AND into 2-NOR with 1X Drive
// zn = !((a1 & a2 & a3) | (b1 & b2 & b3))
module ao02d1 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire a3znstate1, b3znstate2, a2znstate1, b2znstate2, a1znstate1, b1znstate2;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!a3) (b1 => zn) = (0,0);
	if(!a1&!a2&!a3) (b2 => zn) = (0,0);
	if(!a1&!a2&!a3) (b3 => zn) = (0,0);
	if(!a1&a2&a3) (b1 => zn) = (0,0);
	if(!a1&a2&a3) (b2 => zn) = (0,0);
	if(!a1&a2&a3) (b3 => zn) = (0,0);
	if(!b1&!b2&!b3) (a1 => zn) = (0,0);
	if(!b1&!b2&!b3) (a2 => zn) = (0,0);
	if(!b1&!b2&!b3) (a3 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a1 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b1 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b2 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b3 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(a3znstate1) (a3 => zn) = (0,0);
	if(b1znstate2) (b1 => zn) = (0,0);
	if(b2znstate2) (b2 => zn) = (0,0);
	if(b3znstate2) (b3 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b3,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn5,b2);
	and _wi2 (_wn4,_wn5,b3);
	not _wi3 (_wn7,b3);
	and _wi4 (_wn6,b2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,b1,_wn5);
	or _wi10 (a3znstate1,_wn1,_wn8);
	not _wi11 (_wn13,a1);
	not _wi12 (_wn16,a2);
	and _wi13 (_wn15,_wn16,a3);
	not _wi14 (_wn18,a3);
	and _wi15 (_wn17,a2,_wn18);
	or _wi16 (_wn14,_wn15,_wn17);
	and _wi17 (_wn12,_wn13,_wn14);
	and _wi20 (_wn19,_wn18,a1,_wn16);
	or _wi21 (b3znstate2,_wn12,_wn19);
	or _wi32 (a2znstate1,_wn1,_wn8);
	or _wi43 (b2znstate2,_wn12,_wn19);
	or _wi54 (a1znstate1,_wn1,_wn8);
	or _wi65 (b1znstate2,_wn12,_wn19);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:41 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 3-AND into 2-NOR with 2X Drive
// zn = !((a1 & a2 & a3) | (b1 & b2 & b3))
module ao02d2 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire a3znstate1, a2znstate1, b3znstate1;

	specify
		// Pin-to-pin timing.
	if(!a1&((a2&!a3)|!a2)) (b1 => zn) = (0,0);
	if(!a1&((a2&!a3)|!a2)) (b2 => zn) = (0,0);
	if(!b1&((b2&!b3)|!b2)) (a1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b3 => zn) = (0,0);
	if((!a1&a2&a3|a1&((a2&!a3)|!a2))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&((a2&!a3)|!a2))) (b2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if((!b1&b2&b3|b1&((b2&!b3)|!b2))) (a1 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(a3znstate1) (a3 => zn) = (0,0);
	if(b3znstate1) (b3 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b3,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn5,b3);
	and _wi2 (_wn4,b2,_wn5);
	not _wi3 (_wn6,b2);
	or _wi4 (_wn3,_wn4,_wn6);
	and _wi5 (_wn1,_wn2,_wn3);
	and _wi8 (_wn7,_wn5,b1,_wn6);
	or _wi9 (a3znstate1,_wn1,_wn7);
	or _wi19 (a2znstate1,_wn1,_wn7);
	not _wi20 (_wn22,a1);
	not _wi21 (_wn25,a3);
	and _wi22 (_wn24,a2,_wn25);
	not _wi23 (_wn26,a2);
	or _wi24 (_wn23,_wn24,_wn26);
	and _wi25 (_wn21,_wn22,_wn23);
	and _wi28 (_wn27,_wn25,a1,_wn26);
	or _wi29 (b3znstate1,_wn21,_wn27);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:36 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 3-AND into 2-NOR with 4X Drive
// zn = !((a1 & a2 & a3) | (b1 & b2 & b3))
module ao02d4 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire a3znstate1, a2znstate1, a1znstate1, b2znstate1, b1znstate1;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b1 => zn) = (0,0); // add by cyhuang
	if((a1&!a2&!a3)|!a1) (b1 => zn) = (0,0); // add by cyhuang
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a1 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if(((a1&!a2&!a3)|!a1)) (b3 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b3 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(a3znstate1) (a3 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b3,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn5,b3);
	and _wi2 (_wn4,b2,_wn5);
	not _wi3 (_wn6,b2);
	or _wi4 (_wn3,_wn4,_wn6);
	and _wi5 (_wn1,_wn2,_wn3);
	and _wi8 (_wn7,_wn5,b1,_wn6);
	or _wi9 (a3znstate1,_wn1,_wn7);
	or _wi19 (a2znstate1,_wn1,_wn7);
	or _wi29 (a1znstate1,_wn1,_wn7);
	not _wi30 (_wn32,a1);
	not _wi31 (_wn35,a3);
	and _wi32 (_wn34,a2,_wn35);
	not _wi33 (_wn36,a2);
	or _wi34 (_wn33,_wn34,_wn36);
	and _wi35 (_wn31,_wn32,_wn33);
	and _wi38 (_wn37,_wn35,a1,_wn36);
	or _wi39 (b2znstate1,_wn31,_wn37);
	or _wi49 (b1znstate1,_wn31,_wn37);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:44 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 3-NOR with 0X drive
// zn = !((a1&a2) | (b1&b2) | c)
module ao03d0 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate1, cznstate3;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!b1&!b2) (c => zn) = (0,0);
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if(!a1&a2&!b1&!b2) (c => zn) = (0,0);
	if(!a1&a2&b1&!b2) (c => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(cznstate1) (c => zn) = (0,0);
	if(cznstate3) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,b2,_wn2,_wn3,a2);
	not _wi3 (_wn5,a2);
	and _wi5 (_wn7,_wn2,b2);
	not _wi6 (_wn10,b2);
	and _wi7 (_wn9,b1,_wn10);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (cznstate1,_wn1,_wn4);
	and _wi18 (_wn12,_wn3,_wn5,_wn6);
	and _wi22 (_wn20,_wn10,_wn2,a1,_wn5);
	or _wi23 (cznstate3,_wn12,_wn20);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:44 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 3-NOR with 1X drive
// zn = !((a1&a2) | (b1&b2) | c)
module ao03d1 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate1, cznstate3;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!b1&!b2) (c => zn) = (0,0);
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if(!a1&a2&!b1&!b2) (c => zn) = (0,0);
	if(!a1&a2&b1&!b2) (c => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(cznstate1) (c => zn) = (0,0);
	if(cznstate3) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,b2,_wn2,_wn3,a2);
	not _wi3 (_wn5,a2);
	and _wi5 (_wn7,_wn2,b2);
	not _wi6 (_wn10,b2);
	and _wi7 (_wn9,b1,_wn10);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (cznstate1,_wn1,_wn4);
	and _wi18 (_wn12,_wn3,_wn5,_wn6);
	and _wi22 (_wn20,_wn10,_wn2,a1,_wn5);
	or _wi23 (cznstate3,_wn12,_wn20);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:19 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 3-NOR with 2X drive
// zn = !((a1&a2) | (b1&b2) | c)
module ao03d2 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate0;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if((!a1&!b1|a1&!a2&!b1&!b2)) (c => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(cznstate0) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b2);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,_wn2,_wn3,b1);
	not _wi3 (_wn5,a2);
	not _wi4 (_wn8,b1);
	and _wi5 (_wn7,_wn8,b2);
	and _wi7 (_wn9,b1,_wn2);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (cznstate0,_wn1,_wn4);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:44 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND into 3-NOR with 4X drive
// zn = !((a1&a2) | (b1&b2) | c)
module ao03d4 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate1, cznstate3;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!b1&!b2) (c => zn) = (0,0);
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if(!a1&a2&!b1&!b2) (c => zn) = (0,0);
	if(!a1&a2&b1&!b2) (c => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(cznstate1) (c => zn) = (0,0);
	if(cznstate3) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,b1);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,b2,_wn2,_wn3,a2);
	not _wi3 (_wn5,a2);
	and _wi5 (_wn7,_wn2,b2);
	not _wi6 (_wn10,b2);
	and _wi7 (_wn9,b1,_wn10);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (cznstate1,_wn1,_wn4);
	and _wi18 (_wn12,_wn3,_wn5,_wn6);
	and _wi22 (_wn20,_wn10,_wn2,a1,_wn5);
	or _wi23 (cznstate3,_wn12,_wn20);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:49 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-NOR with 0X drive
// zn = !((a1 & a2) | b)
module ao04d0 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:15 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-NOR with 1X drive
// zn = !((a1 & a2) | b)
module ao04d1 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:17:27 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-NOR with 2X drive
// zn = !((a1&a2)|b)
module ao04d2 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:14 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-NOR with 4X drive
// zn = !((a1 & a2) | b)
module ao04d4 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:19 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 3-NOR with 0X drive
// zn = !((a1 & a2) | b | c)
module ao05d0 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b => zn) = (0,0);
	if(!a1&!a2) (c => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (c => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:17:29 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 3-NOR with 1X drive
// zn = !((a1 & a2) | b | c)
module ao05d1 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b => zn) = (0,0);
	if(!a1&!a2) (c => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (c => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:45 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 3-NOR with 2X drive
// zn = !((a1 & a2) | b | c)
module ao05d2 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(c => zn) = (0,0);
	if(!a1&!a2) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:40 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 3-NOR with 4X drive
// zn = !((a1 & a2) | b | c)
module ao05d4 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b => zn) = (0,0);
	if(!a1&!a2) (c => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (c => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:37 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 2-AND into 3-NOR with 0X Drive
// zn = !((a1 & a2) | (b1 & b2) | (c1 & c2))
module ao06d0 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, b2znstate2, a1znstate1, b1znstate0, c2znstate2, a2znstate0, c1znstate0, a2znstate1, b1znstate2, b2znstate0;
	wire c1znstate2, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!b1&!b2) (c1 => zn) = (0,0);
	if(!a1&!a2&!b1&!b2) (c2 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b1 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b2 => zn) = (0,0);
	if(!a1&a2&!b1&b2) (c1 => zn) = (0,0);
	if(!a1&a2&!b1&b2) (c2 => zn) = (0,0);
	if(!a1&a2&!c1&c2) (b1 => zn) = (0,0);
	if(!a1&a2&!c1&c2) (b2 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a1 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate2) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate2) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate2) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate2) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	and _i2 (_n3,c1,c2);
	nor _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,b2);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,_wn2,b1,_wn3,a2);
	not _wi3 (_wn5,a2);
	not _wi4 (_wn8,b1);
	and _wi5 (_wn7,_wn8,b2);
	and _wi7 (_wn9,b1,_wn2);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (c2znstate0,_wn1,_wn4);
	not _wi13 (_wn19,c1);
	and _wi14 (_wn18,_wn19,c2);
	not _wi15 (_wn21,c2);
	and _wi16 (_wn20,c1,_wn21);
	or _wi17 (_wn17,_wn18,_wn20);
	and _wi18 (_wn15,_wn5,_wn17);
	and _wi21 (_wn22,_wn21,a2,_wn19);
	or _wi22 (_wn14,_wn15,_wn22);
	and _wi23 (_wn12,_wn3,_wn14);
	and _wi27 (_wn25,_wn21,_wn19,a1,_wn5);
	or _wi28 (b2znstate2,_wn12,_wn25);
	and _wi36 (_wn33,_wn2,_wn17);
	and _wi39 (_wn40,_wn21,b2,_wn19);
	or _wi40 (_wn32,_wn33,_wn40);
	and _wi41 (_wn30,_wn8,_wn32);
	and _wi45 (_wn43,_wn21,_wn19,b1,_wn2);
	or _wi46 (a1znstate1,_wn30,_wn43);
	and _wi49 (_wn48,_wn21,c1,_wn3,a2);
	and _wi56 (_wn51,a1,_wn5,_wn17);
	or _wi57 (b1znstate0,_wn48,_wn51);
	and _wi65 (_wn62,_wn5,_wn6);
	and _wi68 (_wn69,_wn2,a2,_wn8);
	or _wi69 (_wn61,_wn62,_wn69);
	and _wi70 (_wn59,_wn3,_wn61);
	and _wi74 (_wn72,_wn2,_wn8,a1,_wn5);
	or _wi75 (c2znstate2,_wn59,_wn72);
	and _wi82 (_wn77,_wn8,b2,_wn17);
	and _wi89 (_wn84,b1,_wn2,_wn17);
	or _wi90 (a2znstate0,_wn77,_wn84);
	or _wi101 (c1znstate0,_wn1,_wn4);
	or _wi119 (a2znstate1,_wn30,_wn43);
	or _wi137 (b1znstate2,_wn12,_wn25);
	or _wi148 (b2znstate0,_wn48,_wn51);
	or _wi166 (c1znstate2,_wn59,_wn72);
	or _wi181 (a1znstate0,_wn77,_wn84);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:05 rt=0.08m p=0.04m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 2-AND into 3-NOR with 1X Drive
// zn = !((a1&a2) | (b1&b2) | (c1&c2))
module ao06d1 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, c2znstate1, b1znstate0, a2znstate0, b1znstate1, c1znstate0, a2znstate1, b2znstate0, c1znstate1;
	wire b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!b1&!b2) (c1 => zn) = (0,0);
	if(!a1&!a2&!b1&!b2) (c2 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b1 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b2 => zn) = (0,0);
	if(!a1&!a2&!c1&c2) (b1 => zn) = (0,0);
	if(!a1&!a2&!c1&c2) (b2 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a1 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate1) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate1) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	and _i2 (_n3,c1,c2);
	nor _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (c2znstate0,_wn1,_wn8);
	not _wi17 (_wn23,c1);
	and _wi18 (_wn22,_wn23,c2);
	not _wi19 (_wn25,c2);
	and _wi20 (_wn24,c1,_wn25);
	or _wi21 (_wn21,_wn22,_wn24);
	and _wi22 (_wn19,_wn7,_wn21);
	and _wi25 (_wn26,_wn25,b2,_wn23);
	or _wi26 (_wn18,_wn19,_wn26);
	and _wi27 (_wn16,_wn5,_wn18);
	and _wi31 (_wn29,_wn25,_wn23,b1,_wn7);
	or _wi32 (a1znstate1,_wn16,_wn29);
	and _wi40 (_wn37,_wn9,_wn3);
	and _wi43 (_wn44,_wn7,a2,_wn5);
	or _wi44 (_wn36,_wn37,_wn44);
	and _wi45 (_wn34,_wn2,_wn36);
	and _wi49 (_wn47,_wn7,_wn5,a1,_wn9);
	or _wi50 (c2znstate1,_wn34,_wn47);
	and _wi57 (_wn52,_wn2,a2,_wn21);
	and _wi64 (_wn59,a1,_wn9,_wn21);
	or _wi65 (b1znstate0,_wn52,_wn59);
	and _wi72 (_wn67,_wn5,b2,_wn21);
	and _wi79 (_wn74,b1,_wn7,_wn21);
	or _wi80 (a2znstate0,_wn67,_wn74);
	and _wi84 (_wn85,_wn25,_wn9,c1);
	and _wi87 (_wn88,_wn25,a2,_wn23);
	or _wi88 (_wn84,_wn85,_wn88);
	and _wi89 (_wn82,_wn2,_wn84);
	and _wi93 (_wn91,_wn25,_wn23,a1,_wn9);
	or _wi94 (b1znstate1,_wn82,_wn91);
	or _wi109 (c1znstate0,_wn1,_wn8);
	or _wi127 (a2znstate1,_wn16,_wn29);
	or _wi142 (b2znstate0,_wn52,_wn59);
	or _wi160 (c1znstate1,_wn34,_wn47);
	or _wi174 (b2znstate1,_wn82,_wn91);
	or _wi189 (a1znstate0,_wn67,_wn74);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:34 rt=0.03m p=0.04m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 2-AND into 3-NOR with 2X Drive
// zn = !((a1 & a2) | (b1 & b2) | (c1 & c2))
module ao06d2 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, b1znstate0, a2znstate0, b1znstate1, c1znstate0, a2znstate1, b2znstate0, b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!c1&!c2) (b1 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b2 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a1 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a2 => zn) = (0,0);
	if((!a1&!b1|a1&!a2&!b1&!b2)) (c1 => zn) = (0,0);
	if((!a1&!b1|a1&!a2&!b1&!b2)) (c2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	and _i2 (_n3,c1,c2);
	nor _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,b2);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,_wn2,_wn3,b1);
	not _wi3 (_wn5,a2);
	not _wi4 (_wn8,b1);
	and _wi5 (_wn7,_wn8,b2);
	and _wi7 (_wn9,b1,_wn2);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (c2znstate0,_wn1,_wn4);
	not _wi13 (_wn19,c1);
	and _wi14 (_wn18,_wn19,c2);
	not _wi15 (_wn21,c2);
	and _wi16 (_wn20,c1,_wn21);
	or _wi17 (_wn17,_wn18,_wn20);
	and _wi18 (_wn15,_wn2,_wn17);
	and _wi20 (_wn22,b2,_wn19);
	or _wi21 (_wn14,_wn15,_wn22);
	and _wi22 (_wn12,_wn8,_wn14);
	and _wi26 (_wn24,_wn21,_wn19,b1,_wn2);
	or _wi27 (a1znstate1,_wn12,_wn24);
	and _wi30 (_wn29,_wn21,c1,_wn3,a2);
	and _wi37 (_wn32,a1,_wn5,_wn17);
	or _wi38 (b1znstate0,_wn29,_wn32);
	and _wi41 (_wn40,_wn21,c1,_wn8,b2);
	and _wi48 (_wn43,b1,_wn2,_wn17);
	or _wi49 (a2znstate0,_wn40,_wn43);
	and _wi57 (_wn54,_wn5,_wn17);
	and _wi59 (_wn61,a2,_wn19);
	or _wi60 (_wn53,_wn54,_wn61);
	and _wi61 (_wn51,_wn3,_wn53);
	and _wi65 (_wn63,_wn21,_wn19,a1,_wn5);
	or _wi66 (b1znstate1,_wn51,_wn63);
	or _wi77 (c1znstate0,_wn1,_wn4);
	or _wi94 (a2znstate1,_wn12,_wn24);
	or _wi105 (b2znstate0,_wn29,_wn32);
	or _wi122 (b2znstate1,_wn51,_wn63);
	or _wi133 (a1znstate0,_wn40,_wn43);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:29 rt=0.02m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 2-AND into 3-NOR with 4X Drive
// zn = !((a1 & a2) | (b1 & b2) | (c1 & c2))
module ao06d4 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, c2znstate1, b1znstate0, a2znstate0, b1znstate1, c1znstate0, a2znstate1, b2znstate0, c1znstate1;
	wire b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!b1&!b2) (c1 => zn) = (0,0);
	if(!a1&!a2&!b1&!b2) (c2 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b1 => zn) = (0,0);
	if(!a1&!a2&!c1&!c2) (b2 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a1 => zn) = (0,0);
	if(!b1&!b2&!c1&!c2) (a2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate1) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate1) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	and _i1 (_n2,b1,b2);
	and _i2 (_n3,c1,c2);
	nor _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,b2);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,_wn2,b1,_wn3,a2);
	not _wi3 (_wn5,a2);
	not _wi4 (_wn8,b1);
	and _wi5 (_wn7,_wn8,b2);
	and _wi7 (_wn9,b1,_wn2);
	or _wi8 (_wn6,_wn7,_wn9);
	and _wi9 (_wn4,a1,_wn5,_wn6);
	or _wi10 (c2znstate0,_wn1,_wn4);
	not _wi13 (_wn19,c1);
	and _wi14 (_wn18,_wn19,c2);
	not _wi15 (_wn21,c2);
	and _wi16 (_wn20,c1,_wn21);
	or _wi17 (_wn17,_wn18,_wn20);
	and _wi18 (_wn15,_wn2,_wn17);
	and _wi20 (_wn22,b2,_wn19);
	or _wi21 (_wn14,_wn15,_wn22);
	and _wi22 (_wn12,_wn8,_wn14);
	and _wi26 (_wn24,_wn21,_wn19,b1,_wn2);
	or _wi27 (a1znstate1,_wn12,_wn24);
	and _wi35 (_wn32,_wn5,_wn6);
	and _wi37 (_wn39,a2,_wn8);
	or _wi38 (_wn31,_wn32,_wn39);
	and _wi39 (_wn29,_wn3,_wn31);
	and _wi43 (_wn41,_wn2,_wn8,a1,_wn5);
	or _wi44 (c2znstate1,_wn29,_wn41);
	and _wi47 (_wn46,_wn21,c1,_wn3,a2);
	and _wi54 (_wn49,a1,_wn5,_wn17);
	or _wi55 (b1znstate0,_wn46,_wn49);
	and _wi58 (_wn57,_wn21,c1,_wn8,b2);
	and _wi65 (_wn60,b1,_wn2,_wn17);
	or _wi66 (a2znstate0,_wn57,_wn60);
	and _wi74 (_wn71,_wn5,_wn17);
	and _wi76 (_wn78,a2,_wn19);
	or _wi77 (_wn70,_wn71,_wn78);
	and _wi78 (_wn68,_wn3,_wn70);
	and _wi82 (_wn80,_wn21,_wn19,a1,_wn5);
	or _wi83 (b1znstate1,_wn68,_wn80);
	or _wi94 (c1znstate0,_wn1,_wn4);
	or _wi111 (a2znstate1,_wn12,_wn24);
	or _wi122 (b2znstate0,_wn46,_wn49);
	or _wi139 (c1znstate1,_wn29,_wn41);
	or _wi156 (b2znstate1,_wn68,_wn80);
	or _wi167 (a1znstate0,_wn57,_wn60);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:52 rt=0.03m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND and 2-AND into 2-NOR with 0X drive
// zn = !((a1&a2&a3) | (b1&b2))
module ao07d0 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate2, b1znstate2;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!a3) (b1 => zn) = (0,0);
	if(!a1&!a2&!a3) (b2 => zn) = (0,0);
	if(!a1&a2&a3) (b1 => zn) = (0,0);
	if(!a1&a2&a3) (b2 => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if(!b1&!b2) (a3 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a3 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b1 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b2 => zn) = (0,0);
	if(b1znstate2) (b1 => zn) = (0,0);
	if(b2znstate2) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b2znstate2,_wn1,_wn8);
	or _wi21 (b1znstate2,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:52 rt=0.03m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND and 2-AND into 2-NOR with 1X drive
// zn = !((a1&a2&a3) | (b1&b2))
module ao07d1 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate2, b1znstate2;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!a3) (b1 => zn) = (0,0);
	if(!a1&!a2&!a3) (b2 => zn) = (0,0);
	if(!a1&a2&a3) (b1 => zn) = (0,0);
	if(!a1&a2&a3) (b2 => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if(!b1&!b2) (a3 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a3 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b1 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b2 => zn) = (0,0);
	if(b1znstate2) (b1 => zn) = (0,0);
	if(b2znstate2) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b2znstate2,_wn1,_wn8);
	or _wi21 (b1znstate2,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:29 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND and 2-AND into 2-NOR with 2X drive
// zn = !((a1&a2&a3) | (b1&b2))
module ao07d2 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if(!a1&((a2&!a3)|!a2)) (b1 => zn) = (0,0);
	if(!a1&((a2&!a3)|!a2)) (b2 => zn) = (0,0);
	if((!a1&a2&a3|a1&((a2&!a3)|!a2))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&((a2&!a3)|!a2))) (b2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:52 rt=0.03m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND and 2-AND into 2-NOR with 4X drive
// zn = !((a1&a2&a3) | (b1&b2))
module ao07d4 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate2, b1znstate2;

	specify
		// Pin-to-pin timing.
	if(!a1&!a2&!a3) (b1 => zn) = (0,0);
	if(!a1&!a2&!a3) (b2 => zn) = (0,0);
	if(!a1&a2&a3) (b1 => zn) = (0,0);
	if(!a1&a2&a3) (b2 => zn) = (0,0);
	if(!b1&!b2) (a1 => zn) = (0,0);
	if(!b1&!b2) (a2 => zn) = (0,0);
	if(!b1&!b2) (a3 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a3 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b1 => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b2 => zn) = (0,0);
	if(b1znstate2) (b1 => zn) = (0,0);
	if(b2znstate2) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	and _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b2znstate2,_wn1,_wn8);
	or _wi21 (b1znstate2,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:49 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND into 2-NOR with 0X drive
// zn = !((a1&a2&a3) | b)
module ao08d0 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect
	wire bznstate2;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if(!a1&!a2&!a3) (b => zn) = (0,0);
	if(!a1&a2&a3) (b => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b => zn) = (0,0);
	if(bznstate2) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	nor _i1 (zn,_n1,b);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (bznstate2,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:49 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND into 2-NOR with 1X drive
// zn = !((a1&a2&a3) | b)
module ao08d1 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect
	wire bznstate2;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if(!a1&!a2&!a3) (b => zn) = (0,0);
	if(!a1&a2&a3) (b => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b => zn) = (0,0);
	if(bznstate2) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	nor _i1 (zn,_n1,b);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (bznstate2,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:16 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND into 2-NOR with 2X drive
// zn = !((a1&a2&a3) | b)
module ao08d2 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if(!a1&((a2&!a3)|!a2)) (b => zn) = (0,0);
	if((!a1&a2&a3|a1&((a2&!a3)|!a2))) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	nor _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:49 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-AND into 2-NOR with 4X drive
// zn = !((a1&a2&a3) | b)
module ao08d4 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect
	wire bznstate2;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if(!a1&!a2&!a3) (b => zn) = (0,0);
	if(!a1&a2&a3) (b => zn) = (0,0);
	if(a1&(!a2&a3|a2&!a3)) (b => zn) = (0,0);
	if(bznstate2) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a3,a1,a2);
	nor _i1 (zn,_n1,b);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (bznstate2,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 11/08/05 16:16:55 rt=0.68m p=0.67m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-OR with 0X drive
// z = ((a1 & a2) | b)
module ao14d0 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	if(!a1&!a2) (b => z) = (0,0);
	if((!a1&a2|a1&!a2)) (b => z) = (0,0);
	ifnone (b => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	or _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 11/08/05 16:16:55 rt=0.68m p=0.67m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-OR with 1X drive
// z = ((a1 & a2) | b)
module ao14d1 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	if(!a1&!a2) (b => z) = (0,0);
	if((!a1&a2|a1&!a2)) (b => z) = (0,0);
	ifnone (b => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	or _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:28 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-OR with 2X drive
// z = ((a1 & a2) | b)
module ao14d2 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	if(!a1&!a2) (b => z) = (0,0);
	if((!a1&a2|a1&!a2)) (b => z) = (0,0);
	ifnone (b => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	or _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:53 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-AND into 2-OR with 4X drive
// z = ((a1 & a2) | b)
module ao14d4 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	if(!a1&!a2) (b => z) = (0,0);
	if((!a1&a2|a1&!a2)) (b => z) = (0,0);
	ifnone (b => z) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	or _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 0.7X drive
// z = i
module ckbuf0 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 1X drive
// z = i
module ckbuf1 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 2X drive
// z = i
module ckbuf2 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 3X drive
// z = i
module ckbuf3 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 4X drive
// z = i
module ckbuf4 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 6X drive
// z = i
module ckbuf6 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 8X drive
// z = i
module ckbuf8 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 12X drive
// z = i
module ckbuf12 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 16X drive
// z = i
module ckbuf16 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Non-inverting buffer with 20X drive
// z = i
module ckbuf20 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 0.7X drive
// zn = !i
module ckinv0 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 1X drive
// zn = !i
module ckinv1 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 2X drive
// zn = !i
module ckinv2 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 3X drive
// zn = !i
module ckinv3 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 4X drive
// zn = !i
module ckinv4 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 6X drive
// zn = !i
module ckinv6 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 8X drive
// zn = !i
module ckinv8 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 12X drive
// zn = !i
module ckinv12 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 16X drive
// zn = !i
module ckinv16 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// balanced Inverter with 20X drive
// zn = !i
module ckinv20 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine

`celldefine
module cklfn0 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn1 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn2 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn3 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn4 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn6 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn8 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn12 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn16 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfn20 (q, e, cpn);
    input e, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cpn_d ;
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _cpn, cpn );
    buf ( _e, e );
    tsmc_dlsfq ( _enl, _e, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs0 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs1 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs2 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs3 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs4 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs6 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs8 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs12 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs16 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklfs20 (q, e, te, cpn);
    input e, te, cpn;
    output q;
    reg notifier;
    // Dummy Buffer

  `ifdef ntc    // Reserve for ntc.
    wire te_d, cpn_d, e_d ;
    buf ( _te, te_d );
    buf ( _cpn, cpn_d );
    buf ( _e, e_d );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `else         // Reserve for non ntc.
    buf ( _te, te );
    buf ( _cpn, cpn );
    buf ( _e, e );
    or ( _g001, _e, _te );
    tsmc_dlsfq ( _enl, _g001, _cpn, 1'b1, 1'b1, notifier );
    not ( _enlb, _enl );
    or ( q, _enlb, _cpn );
  `endif

    specify


        $width ( posedge cpn, 0, 0, notifier );
        $width ( negedge cpn, 0, 0, notifier );
        ( cpn *> q ) = ( 0, 0 );
  `ifdef ntc            // Reserve for ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier, , ,cpn_d, te_d );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier, , ,cpn_d, e_d );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier, , ,cpn_d, e_d );
  `else                 // Reserve for non ntc.
        $setuphold ( negedge cpn, posedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge te, 0, 0, notifier );
        $setuphold ( negedge cpn, posedge e, 0, 0, notifier );
        $setuphold ( negedge cpn, negedge e, 0, 0, notifier );
  `endif
    endspecify

endmodule
`endcelldefine


`celldefine
module ckltn0 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn1 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn2 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn3 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn4 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn6 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn8 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn12 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn16 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module ckltn20 (q, e, cp);
    input e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, e_d, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    not         (cpb, cp);
    tsmc_dla    (q_buf, e, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts0 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts1 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts2 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts3 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts4 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts6 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts8 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts12 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts16 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
    endspecify

endmodule
`endcelldefine

`celldefine
module cklts20 (q, e, te, cp);
    input te, e, cp;
    output q;
    reg notifier;

  `ifdef ntc    // Reserve for ntc.
    wire te_d, e_d, cp_d ;
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e_d, te_d);
    not         (cpb, cp_d);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp_d);
  `else         // Reserve for non ntc.
    pullup      (cdn);
    pullup      (sdn);
    or          (D_i, e, te);
    not         (cpb, cp);
    tsmc_dla    (q_buf, D_i, cpb, cdn, sdn, notifier);
    and         (q, q_buf, cp);
  `endif

    specify
       /* old version
       (posedge cp => (q +: e))=(0, 0);
       (negedge cp => (q +: 1'b0))=(0, 0);
       */
       /* new Mar 23, 2001 */
       (cp => q)=(0, 0);
       $width(posedge cp, 0, 0, notifier);
       $width(negedge cp, 0, 0, notifier);
  `ifdef ntc            // Reserve for ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier, , ,cp_d, te_d);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier, , ,cp_d, e_d);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier, , ,cp_d, e_d);
  `else                 // Reserve for non ntc.
       $setuphold(posedge cp , negedge  te, 0, 0, notifier);
       $setuphold(posedge cp , posedge  te, 0, 0, notifier);
       $setuphold(posedge cp , negedge  e, 0, 0, notifier);
       $setuphold(posedge cp , posedge  e, 0, 0, notifier);
  `endif
   endspecify

endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:50 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 1ns Non-Inverting Delay Cell with 0X Drive
// z = i
module dl01d0 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:54 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 1ns Non-Inverting Delay Cell with 2X Drive
// z = i
module dl01d1 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:42 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2ns Non-Inverting Delay Cell with 0X Drive
// z = i
module dl02d0 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:15 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2ns Non-Inverting Delay Cell with 2X Drive
// z = i
module dl02d1 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:15 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 5ns Non-Inverting Delay Cell with 0X Drive
// z = i
module dl05d0 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:23 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 5ns Non-Inverting Delay Cell with 2X Drive
// z = i
module dl05d1 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:42 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Reset, Negative Edge Trigger, 1X Drive
// q = !cdn ? 0 : !sdn ? 1 : falling(cpn) ? d : 'p';qn = !sdn ? 0 : !cdn ? 1 : falling(cpn) ? !d : 'p'
module dfbfnb (q, qn, d, cpn, cdn, sdn);
	output q;
	output qn;
	input d;
	input cpn;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck0cdnsdnlh, shcheck3sdncdnlh, shcheck1sdncdnlh, shcheck1cdnsdnlh, shcheckcpndhl, shcheck2sdncdnlh, shcheckcpncdnhl, shcheckcpnsdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	(negedge cpn => (qn -: d)) = (1,1);
	if(!cdn&!cpn) (sdn => qn) = (0,0);
	if(!cdn&cpn&!d) (sdn => qn) = (0,0);
	if(!cdn&cpn&d) (sdn => qn) = (0,0);
	if(!cpn&!d&!sdn) (cdn => q) = (0,0);
	if(!cpn&d&!sdn) (cdn => q) = (0,0);
	if(!cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(!cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&!cpn) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cdn&cpn) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cpn&!d&!sdn) (cdn => q) = (0,0);
	if(cpn&d&!sdn) (cdn => q) = (0,0);
	if(cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge cpn &&& shcheckcpnsdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck0cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck1cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck2sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck3sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck2sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck3sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge cpn &&& shcheckcpnsdnhl === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck0cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck1cdnsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,sdn);
	not _i2 (_n3,cdn);
	p_ffrs _i3 (q,d_delayed,_n1,_n3,_n2,notifier);
	not _i5 (_n6,d_delayed);
	p_ffrs _i8 (qn,_n6,_n1,_n2,_n3,notifier);

	// Timing check and state logic.
	not _wi0 (_wn1,cpn);
	not _wi1 (_wn2,d);
	and _wi2 (shcheck0sdncdnlh,_wn1,_wn2);
	and _wi4 (_wn4,cpn,_wn2);
	or _wi6 (shcheck0cdnsdnlh,_wn4,_wn1);
	and _wi8 (shcheck3sdncdnlh,cpn,_wn2);
	and _wi10 (shcheck1sdncdnlh,_wn1,d);
	and _wi11 (shcheck1cdnsdnlh,cpn,d);
	and _wi12 (shcheckcpndhl,cdn,sdn);
	and _wi13 (shcheck2sdncdnlh,cpn,d);
	and _wi14 (shcheckcpncdnhl,d,sdn);
	and _wi16 (shcheckcpnsdnhl,cdn,_wn2);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:35 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Reset, Negative Edge Trigger, 2X Drive
// q = !cdn ? 0 : !sdn ? 1 : falling(cpn) ? d : 'p';qn = !sdn ? 0 : !cdn ? 1 : falling(cpn) ? !d : 'p'
module dfbfnh (q, qn, d, cpn, cdn, sdn);
	output q;
	output qn;
	input d;
	input cpn;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck0cdnsdnlh, shcheck1sdncdnlh, shcheck1cdnsdnlh, shcheckcpndhl, shcheckcpncdnhl, shcheck2cdnsdnlh, shcheckcpnsdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	(negedge cpn => (qn -: d)) = (1,1);
	if(!cdn&!cpn) (sdn => qn) = (0,0);
	if(!cdn&cpn&!d) (sdn => qn) = (0,0);
	if(!cdn&cpn&d) (sdn => qn) = (0,0);
	if(!cpn&!d&!sdn) (cdn => q) = (0,0);
	if(!cpn&d&!sdn) (cdn => q) = (0,0);
	if(!cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(!cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&!cpn) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cdn&cpn) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cpn&!d&!sdn) (cdn => q) = (0,0);
	if(!cpn&!sdn) (cdn => q) = (0,0); // add by cyhuang
	if(cpn&d&!sdn) (cdn => q) = (0,0);
	if(cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge cpn &&& shcheckcpnsdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck0cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck1cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck2cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge cpn &&& shcheckcpnsdnhl === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck0cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck1cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck2cdnsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,sdn);
	not _i2 (_n3,cdn);
	p_ffrs _i3 (q,d_delayed,_n1,_n3,_n2,notifier);
	not _i5 (_n6,d_delayed);
	p_ffrs _i8 (qn,_n6,_n1,_n2,_n3,notifier);

	// Timing check and state logic.
	not _wi0 (shcheck0sdncdnlh,cpn);
	not _wi1 (_wn2,d);
	and _wi2 (shcheck0cdnsdnlh,cpn,_wn2);
	buf _wi3 (shcheck1sdncdnlh,cpn);
	not _wi4 (shcheck1cdnsdnlh,cpn);
	and _wi5 (shcheckcpndhl,cdn,sdn);
	and _wi6 (shcheckcpncdnhl,d,sdn);
	and _wi7 (shcheck2cdnsdnlh,cpn,d);
	and _wi9 (shcheckcpnsdnhl,cdn,_wn2);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:17:52 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Reset, Negative Edge Trigger, Q Output Only, 1X Drive
// q = !cdn ? 0 : !sdn ? 1 : falling(cpn) ? d : 'p'
module dfbfnq (q, d, cpn, cdn, sdn);
	output q;
	input d;
	input cpn;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck3sdncdnlh, shcheck1sdncdnlh, shcheckcpndhl, shcheck2sdncdnlh, shcheckcpncdnhl, shcheckcpnsdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	if(!cpn&!sdn) (cdn => q) = (0,0);
	if(cpn&d&sdn) (cdn => q) = (0,0); // add by cyhuang
	if(cpn&!d&sdn) (cdn => q) = (0,0); // add by cyhuang
	if(cpn&sdn) (cdn => q) = (0,0); // add by cyhuang
	if(!cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cpn&!d&!sdn) (cdn => q) = (0,0);
	if(cpn&d&!sdn) (cdn => q) = (0,0);
	if(cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge cpn &&& shcheckcpnsdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck2sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck3sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck2sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck3sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge cpn &&& shcheckcpnsdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,sdn);
	not _i2 (_n3,cdn);
	p_ffrs _i3 (q, d_delayed, _n1, _n3, _n2, notifier);

	// Timing check and state logic.
	not _wi0 (_wn1,cpn);
	not _wi1 (_wn2,d);
	and _wi2 (shcheck0sdncdnlh,_wn1,_wn2);
	and _wi4 (shcheck3sdncdnlh,cpn,_wn2);
	and _wi6 (shcheck1sdncdnlh,_wn1,d);
	and _wi7 (shcheckcpndhl,cdn,sdn);
	and _wi8 (shcheck2sdncdnlh,cpn,d);
	and _wi9 (shcheckcpncdnhl,d,sdn);
	and _wi11 (shcheckcpnsdnhl,cdn,_wn2);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:24 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Reset, Negative Edge Trigger, Q Output Only, 2X Drive
// q = !cdn ? 0 : !sdn ? 1 : falling(cpn) ? d : 'p'
module dfbfnr (q, d, cpn, cdn, sdn);
	output q;
	input d;
	input cpn;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck1sdncdnlh, shcheckcpndhl, shcheckcpncdnhl, shcheckcpnsdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	if(!cpn&!d&!sdn) (cdn => q) = (0,0);
	if(!cpn&d&!sdn) (cdn => q) = (0,0);
	if(cpn&d&sdn) (cdn => q) = (0,0); // add by cyhuang
	if(!cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cpn&!sdn) (cdn => q) = (0,0);
	if(!cpn&!sdn) (cdn => q) = (0,0); // add by cyhuang
	if(cpn&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge cpn &&& shcheckcpnsdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge cpn &&& shcheckcpnsdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,sdn);
	not _i2 (_n3,cdn);
	p_ffrs _i3 (q, d_delayed, _n1, _n3, _n2, notifier);

	// Timing check and state logic.
	not _wi0 (shcheck0sdncdnlh,cpn);
	buf _wi1 (shcheck1sdncdnlh,cpn);
	and _wi2 (shcheckcpndhl,cdn,sdn);
	and _wi3 (shcheckcpncdnhl,d,sdn);
	not _wi4 (_wn4,d);
	and _wi5 (shcheckcpnsdnhl,cdn,_wn4);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:48 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.139-i 10/26/05 08:36:15
`celldefine
// D Flip-Flop with Set and Reset, Positive Edge Trigger, 1X Drive
// q = !cdn ? 0 : !sdn ? 1 : rising(cp) ? d : 'p';qn = !sdn ? 0 : !cdn ? 1 : rising(cp) ? !d : 'p'
module dfbtnb (q, qn, d, cp, cdn, sdn);
	output q;
	output qn;
	input d;
	input cp;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck0cdnsdnlh, shcheck3sdncdnlh, shcheckcpcdnlh, shcheckcpsdnlh, shcheck1sdncdnlh, shcheck1cdnsdnlh, shcheckcpdlh, shcheck2sdncdnlh;

	wire d_delayed;
	wire cdn_delayed;
	wire sdn_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cdn_delayed,cdn);
	buf(sdn_delayed,sdn);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);
	if(!cdn&!cp&!d) (sdn => qn) = (0,0);
	if(!cdn&!cp&d) (sdn => qn) = (0,0);
	if(!cdn&cp) (sdn => qn) = (0,0);
	if(!cp&!d&!sdn) (cdn => q) = (0,0);
	if(!cp&d&!sdn) (cdn => q) = (0,0);
	if(!cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp&!sdn) (negedge cdn => (q +: 1'b0)) = (0,0); // add by cyhuang
	if(!cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&!cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cdn&cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cp&!d&!sdn) (cdn => q) = (0,0);
	if(cp&d&!sdn) (cdn => q) = (0,0);
	if(cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$recrem(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,0,notifier,,, cdn_delayed, cp_delayed);
	$recrem(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,0,notifier,,, cdn_delayed, sdn_delayed);
	$recrem(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,0,notifier,,, cdn_delayed, sdn_delayed);
	$recrem(posedge cdn,posedge sdn &&& shcheck2sdncdnlh === 1'b1,0,0,notifier,,, cdn_delayed, sdn_delayed);
	$recrem(posedge cdn,posedge sdn &&& shcheck3sdncdnlh === 1'b1,0,0,notifier,,, cdn_delayed, sdn_delayed);
	$recrem(posedge sdn,posedge cdn &&& shcheck0cdnsdnlh === 1'b1,0,0,notifier,,, sdn_delayed, cdn_delayed);
	$recrem(posedge sdn,posedge cdn &&& shcheck1cdnsdnlh === 1'b1,0,0,notifier,,, sdn_delayed, cdn_delayed);
	$recrem(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,0,notifier,,, sdn_delayed, cp_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1, posedge sdn,0,notifier); // add by cyhuang
	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1, posedge cdn,0,notifier); // add by cyhuang
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck2sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck3sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck0cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck1cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$removal(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1, 0,notifier);
	$removal(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1, 0,notifier);
	$removal(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1, 0,notifier);
	$removal(posedge cdn,posedge sdn &&& shcheck2sdncdnlh === 1'b1, 0,notifier);
	$removal(posedge cdn,posedge sdn &&& shcheck3sdncdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge cdn &&& shcheck0cdnsdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge cdn &&& shcheck1cdnsdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1, 0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn_delayed);
	not _i1 (_n2,cdn_delayed);
	p_ffrs _i2 (q,d_delayed,cp_delayed,_n2,_n1,notifier);
	not _i3 (_n4,d_delayed);
	p_ffrs _i6 (qn,_n4,cp_delayed,_n1,_n2,notifier);

	// Timing check and state logic.
	not _wi0 (_wn1,d);
	and _wi1 (shcheck0sdncdnlh,cp,_wn1);
	not _wi2 (_wn4,cp);
	and _wi4 (_wn3,_wn4,_wn1);
	or _wi5 (shcheck0cdnsdnlh,_wn3,cp);
	and _wi8 (shcheck3sdncdnlh,_wn4,_wn1);
	and _wi9 (shcheckcpcdnlh,d,sdn);
	and _wi11 (shcheckcpsdnlh,cdn,_wn1);
	and _wi12 (shcheck1sdncdnlh,cp,d);
	and _wi14 (shcheck1cdnsdnlh,_wn4,d);
	and _wi15 (shcheckcpdlh,cdn,sdn);
	and _wi17 (shcheck2sdncdnlh,_wn4,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 11/08/05 16:26:24 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set and Reset, Positive Edge Trigger, 2X Drive
// q = !cdn ? 0 : !sdn ? 1 : rising(cp) ? d : 'p';qn = !sdn ? 0 : !cdn ? 1 : rising(cp) ? !d : 'p'
module dfbtnh (q, qn, d, cp, cdn, sdn);
	output q;
	output qn;
	input d;
	input cp;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck0cdnsdnlh, shcheckcpcdnlh, shcheckcpsdnlh, shcheck1sdncdnlh, shcheck1cdnsdnlh, shcheckcpdlh, shcheck2cdnsdnlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);
	if(!cdn&!cp&!d) (sdn => qn) = (0,0);
	if(!cdn&!cp&d) (sdn => qn) = (0,0);
	if(!cp&d) (sdn => q) = (0,0); // add by cyhuang
	if(!cp&!d) (sdn => q) = (0,0); // add by cyhuang
	if(!cdn&cp) (sdn => qn) = (0,0);
	if(!cp&!d&!sdn) (cdn => q) = (0,0);
	if(!cp&d&!sdn) (cdn => q) = (0,0);
	if(!cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp&!sdn) (negedge cdn => (q +: 1'b0)) = (0,0); // add by cyhuang
	if(!cp&!sdn) (negedge cdn => (q +: 1'b0)) = (0,0); // add by cyhuang
	if(!cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&!cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cdn&cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cp&!d&!sdn) (cdn => q) = (0,0);
	if(cp&d&!sdn) (cdn => q) = (0,0);
	if(cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cdn &&& shcheck0cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck1cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheck2cdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck0cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck1cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheck2cdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_ffrs _i2 (q,d_delayed,cp_delayed,_n2,_n1,notifier);
	not _i3 (_n4,d_delayed);
	p_ffrs _i6 (qn,_n4,cp_delayed,_n1,_n2,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheck0sdncdnlh,cp);
	not _wi1 (_wn1,cp);
	not _wi2 (_wn2,d);
	and _wi3 (shcheck0cdnsdnlh,_wn1,_wn2);
	and _wi4 (shcheckcpcdnlh,d,sdn);
	and _wi6 (shcheckcpsdnlh,cdn,_wn2);
	not _wi7 (shcheck1sdncdnlh,cp);
	buf _wi8 (shcheck1cdnsdnlh,cp);
	and _wi9 (shcheckcpdlh,cdn,sdn);
	and _wi11 (shcheck2cdnsdnlh,shcheck1sdncdnlh,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:44:22 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set and Reset, Positive Edge Trigger, Q Output Only, 1X Drive
// q = !cdn ? 0 : !sdn ? 1 : rising(cp) ? d : 'p'
module dfbtnq (q, d, cp, cdn, sdn);
	output q;
	input d;
	input cp;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheck3sdncdnlh, shcheckcpcdnlh, shcheckcpsdnlh, shcheck1sdncdnlh, shcheckcpdlh, shcheck2sdncdnlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	if(!cp&!d&!sdn) (cdn => q) = (0,0);
	if(!cp&d&!sdn) (cdn => q) = (0,0);
	if(!cp&!d&sdn) (cdn => q) = (0,0); // add by cyhuang
	if(!cp&d&sdn) (cdn => q) = (0,0); // add by cyhuang
	if(cp&!sdn) (cdn => q) = (0,0); // add by cyhuang
	if(!cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cp&!d&!sdn) (cdn => q) = (0,0);
	if(cp&d&!sdn) (cdn => q) = (0,0);
	if(cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck2sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck3sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck2sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck3sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_ffrs _i2 (q, d_delayed, cp_delayed, _n2, _n1, notifier);

	// Timing check and state logic.
	not _wi0 (_wn1,d);
	and _wi1 (shcheck0sdncdnlh,cp,_wn1);
	not _wi2 (_wn3,cp);
	and _wi4 (shcheck3sdncdnlh,_wn3,_wn1);
	and _wi5 (shcheckcpcdnlh,d,sdn);
	and _wi7 (shcheckcpsdnlh,cdn,_wn1);
	and _wi8 (shcheck1sdncdnlh,cp,d);
	and _wi9 (shcheckcpdlh,cdn,sdn);
	and _wi11 (shcheck2sdncdnlh,_wn3,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:27 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set and Reset, Positive Edge Trigger, Q Output Only, 2X Drive
// q = !cdn ? 0 : !sdn ? 1 : rising(cp) ? d : 'p'
module dfbtnr (q, d, cp, cdn, sdn);
	output q;
	input d;
	input cp;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheck0sdncdnlh, shcheckcpcdnlh, shcheckcpsdnlh, shcheck1sdncdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	if(!cp&!sdn) (cdn => q) = (0,0);
	if(!cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cp&!d&!sdn) (cdn => q) = (0,0);
	if(cp&d&!sdn) (cdn => q) = (0,0);
	if(cp&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp&!sdn) (negedge cdn => (q +: 1'b0)) = (0,0); // add by cyhuang
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shcheck0sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge sdn &&& shcheck1sdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck0sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shcheck1sdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_ffrs _i2 (q, d_delayed, cp_delayed, _n2, _n1, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheck0sdncdnlh,cp);
	and _wi1 (shcheckcpcdnlh,d,sdn);
	not _wi2 (_wn2,d);
	and _wi3 (shcheckcpsdnlh,cdn,_wn2);
	not _wi4 (shcheck1sdncdnlh,cp);
	and _wi5 (shcheckcpdlh,cdn,sdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:00 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, 1X Drive
// q = !cdn ? 0 : rising(cp) ? d : 'p';qn = !cdn ? 1 : rising(cp) ? !d : 'p'
module dfctnb (q, qn, d, cp, cdn);
	output q;
	output qn;
	input d;
	input cp;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpcdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);
	if(!cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_ffr _i1 (q,d_delayed,cp_delayed,_n1,notifier);
	not _i2 (_n3,d_delayed);
	p_ffs _i4 (qn,_n3,cp_delayed,_n1,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpcdnlh,d);
	buf _wi1 (shcheckcpdlh,cdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:46 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, 2X Drive
// q = !cdn ? 0 : rising(cp) ? d : 'p';qn = !cdn ? 1 : rising(cp) ? !d : 'p'
module dfctnh (q, qn, d, cp, cdn);
	output q;
	output qn;
	input d;
	input cp;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpcdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);
	if(!cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_ffr _i1 (q,d_delayed,cp_delayed,_n1,notifier);
	not _i2 (_n3,d_delayed);
	p_ffs _i4 (qn,_n3,cp_delayed,_n1,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpcdnlh,d);
	buf _wi1 (shcheckcpdlh,cdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:51 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, Q Output Only, 1X Drive
// q = !cdn ? 0 : rising(cp) ? d : 'p'
module dfctnq (q, d, cp, cdn);
	output q;
	input d;
	input cp;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpcdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	if(!cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_ffr _i1 (q, d_delayed, cp_delayed, _n1, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpcdnlh,d);
	buf _wi1 (shcheckcpdlh,cdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:39:07 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, Q Output Only, 2X Drive
// q = !cdn ? 0 : rising(cp) ? d : 'p'
module dfctnr (q, d, cp, cdn);
	output q;
	input d;
	input cp;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpcdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	if(!cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cp) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpcdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge cp &&& shcheckcpcdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_ffr _i1 (q, d_delayed, cp_delayed, _n1, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpcdnlh,d);
	buf _wi1 (shcheckcpdlh,cdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:26 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, Negative Edge Trigger, 1X Drive
// q = !cdn ? 0 : falling(cpn) ? d : 'p';qn = !cdn ? 1 : falling(cpn) ? !d : 'p'
module dfcfnb (q, qn, d, cpn, cdn);
	output q;
	output qn;
	input d;
	input cpn;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpndhl, shcheckcpncdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	(negedge cpn => (qn -: d)) = (1,1);
	if(!cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,cdn);
	p_ffr _i2 (q,d_delayed,_n1,_n2,notifier);
	not _i4 (_n5,d_delayed);
	p_ffs _i6 (qn,_n5,_n1,_n2,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpndhl,cdn);
	buf _wi1 (shcheckcpncdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:52 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset and 2X Drive
// q = !cdn ? 0 : falling(cpn) ? d : 'p';qn = !cdn ? 1 : falling(cpn) ? !d : 'p'
module dfcfnh (q, qn, d, cpn, cdn);
	output q;
	output qn;
	input d;
	input cpn;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpndhl, shcheckcpncdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	(negedge cpn => (qn -: d)) = (1,1);
	if(!cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (qn +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,cdn);
	p_ffr _i2 (q,d_delayed,_n1,_n2,notifier);
	not _i4 (_n5,d_delayed);
	p_ffs _i6 (qn,_n5,_n1,_n2,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpndhl,cdn);
	buf _wi1 (shcheckcpncdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:36 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, Negative Edge Trigger, Q Output Only, 1X Drive
// q = !cdn ? 0 : falling(cpn) ? d : 'p'
module dfcfnq (q, d, cpn, cdn);
	output q;
	input d;
	input cpn;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpndhl, shcheckcpncdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	if(!cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,cdn);
	p_ffr _i2 (q, d_delayed, _n1, _n2, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpndhl,cdn);
	buf _wi1 (shcheckcpncdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:44 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Reset, Negative Edge Trigger, Q Output Only, 2X Drive
// q = !cdn ? 0 : falling(cpn) ? d : 'p'
module dfcfnr (q, d, cpn, cdn);
	output q;
	input d;
	input cpn;
	input cdn;
`protect
	reg notifier;
	wire shcheckcpndhl, shcheckcpncdnhl;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	if(!cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(cpn) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (negedge cdn => (q +: 1'b0)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn &&& shcheckcpndhl === 1'b1,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, negedge d,0,notifier);
	$hold(negedge cpn &&& shcheckcpndhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);
	$setup(posedge d,negedge cpn &&& shcheckcpndhl === 1'b1,0,notifier);

`endif

	$hold(negedge cpn &&& shcheckcpncdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge cpn &&& shcheckcpncdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	not _i1 (_n2,cdn);
	p_ffr _i2 (q, d_delayed, _n1, _n2, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckcpndhl,cdn);
	buf _wi1 (shcheckcpncdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:54 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Negative Edge Trigger, 1X Drive
// q = falling(cpn) ? d : 'p';qn = falling(cpn) ? !d : 'p'
module dfnfnb (q, qn, d, cpn);
	output q;
	output qn;
	input d;
	input cpn;
`protect
	reg notifier;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	(negedge cpn => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn, negedge d,0,notifier);
	$hold(negedge cpn, posedge d,0,notifier);
	$setup(negedge d,negedge cpn,0,notifier);
	$setup(posedge d,negedge cpn,0,notifier);

`endif

	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	p_ff _i1 (q,d_delayed,_n1,notifier);
	not _i3 (_n4,d_delayed);
	p_ff _i4 (qn,_n4,_n1,notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:54 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Negative Edge Trigger, 2X Drive
// q = falling(cpn) ? d : 'p';qn = falling(cpn) ? !d : 'p'
module dfnfnh (q, qn, d, cpn);
	output q;
	output qn;
	input d;
	input cpn;
`protect
	reg notifier;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);
	(negedge cpn => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn, negedge d,0,notifier);
	$hold(negedge cpn, posedge d,0,notifier);
	$setup(negedge d,negedge cpn,0,notifier);
	$setup(posedge d,negedge cpn,0,notifier);

`endif

	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	p_ff _i1 (q,d_delayed,_n1,notifier);
	not _i3 (_n4,d_delayed);
	p_ff _i4 (qn,_n4,_n1,notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:01 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Negative Edge Trigger, Q Output Only, 1X Drive
// q = falling(cpn) ? d : 'p'
module dfnfnq (q, d, cpn);
	output q;
	input d;
	input cpn;
`protect
	reg notifier;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn, negedge d,0,notifier);
	$hold(negedge cpn, posedge d,0,notifier);
	$setup(negedge d,negedge cpn,0,notifier);
	$setup(posedge d,negedge cpn,0,notifier);

`endif

	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	p_ff _i1 (q, d_delayed, _n1, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:25 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Negative Edge Trigger, Q Output Only, 2X Drive
// q = falling(cpn) ? d : 'p'
module dfnfnr (q, d, cpn);
	output q;
	input d;
	input cpn;
`protect
	reg notifier;

	wire cpn_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(cpn_delayed,cpn);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(negedge cpn => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge cpn,negedge d,0,0,notifier,,, cpn_delayed, d_delayed);
	$setuphold(negedge cpn,posedge d,0,0,notifier,,, cpn_delayed, d_delayed);

`else

	$hold(negedge cpn, negedge d,0,notifier);
	$hold(negedge cpn, posedge d,0,notifier);
	$setup(negedge d,negedge cpn,0,notifier);
	$setup(posedge d,negedge cpn,0,notifier);

`endif

	$width(negedge cpn,1,0,notifier);
	$width(posedge cpn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cpn_delayed);
	p_ff _i1 (q, d_delayed, _n1, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:15 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Positive Edge Trigger with 1X Drive
// q = rising(cp) ? d : 'p';qn = rising(cp) ? !d : 'p'
module dfntnb (q, qn, d, cp);
	output q;
	output qn;
	input d;
	input cp;
`protect
	reg notifier;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge cp,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp, negedge d,0,notifier);
	$hold(posedge cp, posedge d,0,notifier);
	$setup(negedge d,posedge cp,0,notifier);
	$setup(posedge d,posedge cp,0,notifier);

`endif

	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	p_ff _i0 (q, d_delayed, cp_delayed, notifier);
	not _i1 (_n2,d_delayed);
	p_ff _i2 (qn, _n2, cp_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:47 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Positive Edge Trigger with 2X Drive
// q = rising(cp) ? d : 'p';qn = rising(cp) ? !d : 'p'
module dfntnh (q, qn, d, cp);
	output q;
	output qn;
	input d;
	input cp;
`protect
	reg notifier;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge cp,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp, negedge d,0,notifier);
	$hold(posedge cp, posedge d,0,notifier);
	$setup(negedge d,posedge cp,0,notifier);
	$setup(posedge d,posedge cp,0,notifier);

`endif

	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	p_ff _i0 (q, d_delayed, cp_delayed, notifier);
	not _i1 (_n2,d_delayed);
	p_ff _i2 (qn, _n2, cp_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:51 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Positive Edge Trigger, Q Output Only, with 1X Drive
// q = rising(cp) ? d : 'p'
module dfntnq (q, d, cp);
	output q;
	input d;
	input cp;
`protect
	reg notifier;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge cp,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp, negedge d,0,notifier);
	$hold(posedge cp, posedge d,0,notifier);
	$setup(negedge d,posedge cp,0,notifier);
	$setup(posedge d,posedge cp,0,notifier);

`endif

	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	p_ff _i0 (q, d_delayed, cp_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:00 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Positive Edge Trigger, Q Output Only, with 2X Drive
// q = rising(cp) ? d : 'p'
module dfntnr (q, d, cp);
	output q;
	input d;
	input cp;
`protect
	reg notifier;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge cp,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp, negedge d,0,notifier);
	$hold(posedge cp, posedge d,0,notifier);
	$setup(negedge d,posedge cp,0,notifier);
	$setup(posedge d,posedge cp,0,notifier);

`endif

	$width(negedge cp,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	p_ff _i0 (q, d_delayed, cp_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:51 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Positive Edge Trigger, 1X Drive
// q = !sdn ? 1 : rising(cp) ? d : 'p';qn = !sdn ? 0 : rising(cp) ? !d : 'p'
module dfptnb (q, qn, d, cp, sdn);
	output q;
	output qn;
	input d;
	input cp;
	input sdn;
`protect
	reg notifier;
	wire shcheckcpsdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(!cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (qn +: 1'b0)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	p_ffs _i1 (q,d_delayed,cp_delayed,_n1,notifier);
	not _i2 (_n3,d_delayed);
	p_ffr _i4 (qn,_n3,cp_delayed,_n1,notifier);

	// Timing check and state logic.
	not _wi0 (shcheckcpsdnlh,d);
	buf _wi1 (shcheckcpdlh,sdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:18 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Positive Edge Trigger, 2X Drive
// q = !sdn ? 1 : rising(cp) ? d : 'p';qn = !sdn ? 0 : rising(cp) ? !d : 'p'
module dfptnh (q, qn, d, cp, sdn);
	output q;
	output qn;
	input d;
	input cp;
	input sdn;
`protect
	reg notifier;
	wire shcheckcpsdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	(posedge cp => (qn -: d)) = (1,1);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(!cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cp) (negedge sdn => (qn +: 1'b0)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (qn +: 1'b0)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	p_ffs _i1 (q,d_delayed,cp_delayed,_n1,notifier);
	not _i2 (_n3,d_delayed);
	p_ffr _i4 (qn,_n3,cp_delayed,_n1,notifier);

	// Timing check and state logic.
	not _wi0 (shcheckcpsdnlh,d);
	buf _wi1 (shcheckcpdlh,sdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:51 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Positive Edge Trigger, 1X Drive
// q = !sdn ? 1 : rising(cp) ? d : 'p';qn = !sdn ? 0 : rising(cp) ? !d : 'p'
module dfptnq (q, d, cp, sdn);
	output q;
	input d;
	input cp;
	input sdn;
`protect
	reg notifier;
	wire shcheckcpsdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	p_ffs _i1 (q,d_delayed,cp_delayed,_n1,notifier);

	// Timing check and state logic.
	not _wi0 (shcheckcpsdnlh,d);
	buf _wi1 (shcheckcpdlh,sdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:51 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D Flip-Flop with Set, Positive Edge Trigger, 2X Drive
// q = !sdn ? 1 : rising(cp) ? d : 'p';qn = !sdn ? 0 : rising(cp) ? !d : 'p'
module dfptnr (q, d, cp, sdn);
	output q;
	input d;
	input cp;
	input sdn;
`protect
	reg notifier;
	wire shcheckcpsdnlh, shcheckcpdlh;

	wire d_delayed;
	wire cp_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(cp_delayed,cp);
`endif

	specify
		// Pin-to-pin timing.
	(posedge cp => (q +: d)) = (1,1);
	if(!cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cp) (negedge sdn => (q +: 1'b1)) = (0,0);
	ifnone (negedge sdn => (q +: 1'b1)) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,negedge d,0,0,notifier,,, cp_delayed, d_delayed);
	$setuphold(posedge cp &&& shcheckcpdlh === 1'b1,posedge d,0,0,notifier,,, cp_delayed, d_delayed);

`else

	$hold(posedge cp &&& shcheckcpdlh === 1'b1, negedge d,0,notifier);
	$hold(posedge cp &&& shcheckcpdlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);
	$setup(posedge d,posedge cp &&& shcheckcpdlh === 1'b1,0,notifier);

`endif

	$hold(posedge cp &&& shcheckcpsdnlh === 1'b1,posedge sdn,0,notifier);
	$recovery(posedge sdn,posedge cp &&& shcheckcpsdnlh === 1'b1,0,notifier);
	$width(negedge cp,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge cp,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	p_ffs _i1 (q,d_delayed,cp_delayed,_n1,notifier);

	// Timing check and state logic.
	not _wi0 (shcheckcpsdnlh,d);
	buf _wi1 (shcheckcpdlh,sdn);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:39:04 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-input NAND with Inverted input, 0X Drive
// zn = !(!a1 & b1)
module fn01d0 (zn, a1, b1);
	output zn;
	input a1;
	input b1;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(b1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,a1);
	nand _i1 (zn,_n1,b1);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:39:04 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-input NAND with Inverted input, 1X Drive
// zn = !(!a1 & b1)
module fn01d1 (zn, a1, b1);
	output zn;
	input a1;
	input b1;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(b1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,a1);
	nand _i1 (zn,_n1,b1);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:44 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-input NAND with Inverted input, 2X drive
// zn = !(!a1 & b1)
module fn01d2 (zn, a1, b1);
	output zn;
	input a1;
	input b1;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(b1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,a1);
	nand _i1 (zn,_n1,b1);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:41 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND and 2-invert-AND into 2-NOR with 0X drive
// zn = !((a1 & a2) | (!b1 & !b2))
module fn03d0 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	not _i1 (_n3,b1);
	not _i2 (_n4,b2);
	and _i3 (_n2,_n3,_n4);
	nor _i4 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:30 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND and 2-invert-AND into 2-NOR with 1X drive
// zn = !((a1 & a2) | (!b1 & !b2))
module fn03d1 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if(!a1&!a2) (b1 => zn) = (0,0);
	if(!a1&!a2) (b2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	not _i1 (_n3,b1);
	not _i2 (_n4,b2);
	and _i3 (_n2,_n3,_n4);
	nor _i4 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:13 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-AND and 2-invert-AND into 2-NOR with 2X Drive
// zn = !(a1&a2 | !(b1|b2))
module fn03d2 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	and _i0 (_n1,a1,a2);
	nor _i1 (_n2,b1,b2);
	nor _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:54 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR and 2-invert-OR into 2-NAND with 0X drive
// zn = !((a1 | a2) & !(b1 & b2))
module fn04d0 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:02 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR and 2-invert-OR into 2-NAND with 1X drive
// zn = !((a1 | a2) & !(b1 & b2))
module fn04d1 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:32 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR and 2-invert-OR into 2-NAND with 2X Drive
// zn = !((a1|a2) & !(b1&b2))
module fn04d2 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:49 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-input NOR with 1-Inverted input, 0X Drive
// zn = !(!a1 | b1)
module fn05d0 (zn, a1, b1);
	output zn;
	input a1;
	input b1;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(b1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,a1);
	nor _i1 (zn,_n1,b1);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:49 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-input NOR with 1-Inverted input, 1X Drive
// zn = !(!a1 | b1)
module fn05d1 (zn, a1, b1);
	output zn;
	input a1;
	input b1;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(b1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,a1);
	nor _i1 (zn,_n1,b1);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:45 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-input NOR with 1-Inverted input, 2X Drive
// zn = !(!a1 | b1)
module fn05d2 (zn, a1, b1);
	output zn;
	input a1;
	input b1;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(b1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,a1);
	nor _i1 (zn,_n1,b1);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:29 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 0X Drive
// zn = !i
module in01d0 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:08 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 1X Drive
// zn = !i
module in01d1 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:45 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 2X Drive
// zn = !i
module in01d2 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:00 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 3X Drive
// zn = !i
module in01d3 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:02 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting buffer with 4X Drive
// zn = !i
module in01d4 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:58 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 6X Drive
// zn = !i
module in01d6 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:38 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 8X Drive
// zn = !i
module in01d8 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:42 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 12X Drive
// zn = !i
module in01d12 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:53 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 16X Drive
// zn = !i
module in01d16 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:29 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverter with 20X Drive
// zn = !i
module in01d20 (zn, i);
	output zn;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (zn,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:47 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable High, with 0X Drive
// zn = oe ? !i : 'z'
module it01d0 (zn, i, oe);
	output zn;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oe => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif1 _i0 (zn, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:24 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable High, with 1X Drive
// zn = oe ? !i : 'z'
module it01d1 (zn, i, oe);
	output zn;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oe => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif1 _i0 (zn, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:09 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable High, with 2X Drive
// zn = oe ? !i : 'z'
module it01d2 (zn, i, oe);
	output zn;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oe => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif1 _i0 (zn, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:50 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable High, with 4X Drive
// zn = oe ? !i : 'z'
module it01d4 (zn, i, oe);
	output zn;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oe => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif1 _i0 (zn, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:31 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable Low, with 0X Drive
// zn = !oen ? !i : 'z'
module it02d0 (zn, i, oen);
	output zn;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oen => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif0 _i0 (zn, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:31 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable Low, with 1X Drive
// zn = !oen ? !i : 'z'
module it02d1 (zn, i, oen);
	output zn;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oen => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif0 _i0 (zn, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:51 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable Low, with 2X Drive
// zn = !oen ? !i : 'z'
module it02d2 (zn, i, oen);
	output zn;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oen => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif0 _i0 (zn, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:45 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Inverting 3-State Buffer, Enable Low, with 4X Drive
// zn = !oen ? !i : 'z'
module it02d4 (zn, i, oen);
	output zn;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => zn) = (0,0);
	(oen => zn) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	notif0 _i0 (zn, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:47 rt=0.15m p=0.14m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.139-i 10/26/05 08:36:15
`celldefine
// D-Latch Active Low Enable with Set, Reset, 1X Drive
// q  = !cdn ? 0 : !sdn ? 1 : !en ?  d : 'p';qn = !sdn ? 0 : !cdn ? 1 : !en ? !d : 'p'
module labfnb (q, qn, d, en, cdn, sdn);
	output q;
	output qn;
	input en;
	input d;
	input cdn;
	input sdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckcdnsdnlh, shcheckencdnlh, shcheckensdnlh;
wire en_delayed;
	wire d_delayed;
	wire cdn_delayed;
	wire sdn_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
	buf(cdn_delayed,cdn);
	buf(sdn_delayed,sdn);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	(negedge en => (qn -: d)) = (1,1);
	if(!cdn&!d&!en) (sdn => q) = (0,0);
	if(!cdn&!d&!en) (sdn => qn) = (0,0);
	if(!cdn&d&!en) (sdn => q) = (0,0);
	if(!cdn&d&!en) (sdn => qn) = (0,0);
	if(!cdn&en) (sdn => q) = (0,0);
	if(!cdn&((!d&en)|d)|cdn&!d&!en) (sdn => q) = (0,0); // add by cyhuang
	if(!cdn&((!d&en)|d)|cdn&!d&!en) (sdn => qn) = (0,0); // add by cyhuang
	if(!cdn&en) (sdn => qn) = (0,0);
	if(cdn&!d&!en) (sdn => q) = (0,0);
	if(cdn&!d&!en) (sdn => qn) = (0,0);
	if(cdn&en) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&en) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(d&!en) (cdn => q) = (0,0);
	if(d&!en) (cdn => qn) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(en) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);
	ifnone (sdn => q) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$recrem(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,0,notifier,,, cdn_delayed, en_delayed);
	$recrem(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,0,notifier,,, sdn_delayed, cdn_delayed);
	$recrem(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,0,notifier,,, sdn_delayed, en_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$hold(posedge en &&& shcheckencdnlh === 1'b1, posedge cdn,0,notifier); // add by cyhuang
	$hold(posedge en &&& shcheckensdnlh === 1'b1, posedge sdn,0,notifier); // add by cyhuang
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,notifier);
	$removal(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1, 0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn_delayed);
	not _i2 (_n3,sdn_delayed);
	p_latchrs _i3 (q,d_delayed,_n1,_n3,_n2,notifier);
	not _i5 (_n6,d_delayed);
	p_latchrs _i8 (qn,_n6,_n1,_n2,_n3,notifier);

	// Timing check and state logic.
	and _wi0 (shcheckendlh,cdn,sdn);
	buf _wi1 (shcheckcdnsdnlh,en);
	and _wi2 (shcheckencdnlh,d,sdn);
	not _wi3 (_wn3,d);
	and _wi4 (shcheckensdnlh,cdn,_wn3);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 11/08/05 16:26:21 rt=0.00m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active Low Enable with Set, Reset, 2X Drive
// q  = !cdn ? 0 : !sdn ? 1 : !en ?  d : 'p';qn = !sdn ? 0 : !cdn ? 1 : !en ? !d : 'p'
module labfnh (q, qn, d, en, cdn, sdn);
	output q;
	output qn;
	input en;
	input d;
	input cdn;
	input sdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckcdnsdnlh, shcheckencdnlh, shcheckensdnlh;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	(negedge en => (qn -: d)) = (1,1);
	if(!cdn&!d&!en) (sdn => q) = (0,0);
	if(!cdn&!d&!en) (sdn => qn) = (0,0);
	if(!cdn&en) (sdn => qn) = (0,0);
	if((!cdn&((!d&en)|d)|cdn&!d&!en)) (sdn => q) = (0,0);
	if((!cdn&d&!en|cdn&!d&!en)) (sdn => qn) = (0,0);
	if(cdn&en) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&en) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(d&!en) (cdn => q) = (0,0);
	if(d&!en) (cdn => qn) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(en) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);
	ifnone (sdn => q) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$hold(posedge cdn &&& shcheckcdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge en &&& shcheckencdnlh === 1'b1,posedge cdn,0,notifier);
	$hold(posedge en &&& shcheckensdnlh === 1'b1,posedge sdn,0,notifier);
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn);
	not _i2 (_n3,sdn);
	p_latchrs _i3 (q,d_delayed,_n1,_n3,_n2,notifier);
	not _i5 (_n6,d_delayed);
	p_latchrs _i8 (qn,_n6,_n1,_n2,_n3,notifier);

	// Timing check and state logic.
	and _wi0 (shcheckendlh,cdn,sdn);
	buf _wi1 (shcheckcdnsdnlh,en);
	and _wi2 (shcheckencdnlh,d,sdn);
	not _wi3 (_wn3,d);
	and _wi4 (shcheckensdnlh,cdn,_wn3);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:47 rt=0.15m p=0.14m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.139-i 10/26/05 08:36:15
`celldefine
// D-Latch Active Low Enable with Set, Reset, q output only, 1X drive
// q  = !sdn ? 1 : !cdn ? 0 : !en ?  d : 'p'
module labfnq (q, d, en, cdn, sdn);
	output q;
	input en;
	input d;
	input cdn;
	input sdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckcdnsdnlh, shcheckencdnlh, shcheckensdnlh;
wire en_delayed;
	wire d_delayed;
	wire cdn_delayed;
	wire sdn_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
	buf(cdn_delayed,cdn);
	buf(sdn_delayed,sdn);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	if(!cdn&!d&!en) (sdn => q) = (0,0);
	if(!cdn&d&!en) (sdn => q) = (0,0);
	if(!cdn&en) (sdn => q) = (0,0);
	if(!cdn&((!d&en)|d)|cdn&!d&!en) (sdn => q) = (0,0); // add by cyhuang
	if(cdn&!d&!en) (sdn => q) = (0,0);
	if(cdn&en) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(d&!en) (cdn => q) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (sdn => q) = (0,0);

`ifdef negativeTimingCheck

	$recrem(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,0,notifier,,, cdn_delayed, en_delayed);
	$recrem(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,0,notifier,,, sdn_delayed, cdn_delayed);
	$recrem(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,0,notifier,,, sdn_delayed, en_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$hold(posedge en &&& shcheckencdnlh === 1'b1, posedge cdn,0,notifier); // add by cyhuang
	$hold(posedge en &&& shcheckensdnlh === 1'b1, posedge sdn,0,notifier); // add by cyhuang
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,notifier);
	$removal(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1, 0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn_delayed);
	not _i2 (_n3,sdn_delayed);
	p_latchrs _i3 (q,d_delayed,_n1,_n3,_n2,notifier);

	// Timing check and state logic.
	and _wi0 (shcheckendlh,cdn,sdn);
	buf _wi1 (shcheckcdnsdnlh,en);
	and _wi2 (shcheckencdnlh,d,sdn);
	not _wi3 (_wn3,d);
	and _wi4 (shcheckensdnlh,cdn,_wn3);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:47 rt=0.15m p=0.14m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.139-i 10/26/05 08:36:15
`celldefine
// D-Latch Active Low Enable with Set, Reset, q output only, 2X drive
// q  = !sdn ? 1 : !cdn ? 0 : !en ?  d : 'p'
module labfnr (q, d, en, cdn, sdn);
	output q;
	input en;
	input d;
	input cdn;
	input sdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckcdnsdnlh, shcheckencdnlh, shcheckensdnlh;
wire en_delayed;
	wire d_delayed;
	wire cdn_delayed;
	wire sdn_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
	buf(cdn_delayed,cdn);
	buf(sdn_delayed,sdn);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	if(!cdn&!d&!en) (sdn => q) = (0,0);
	if(!cdn&d&!en) (sdn => q) = (0,0);
	if(!cdn&en) (sdn => q) = (0,0);
	if(!cdn&((!d&en)|d)|cdn&!d&!en) (sdn => q) = (0,0); // add by cyhuang
	if(cdn&!d&!en) (sdn => q) = (0,0);
	if(cdn&en) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(d&!en) (cdn => q) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (sdn => q) = (0,0);

`ifdef negativeTimingCheck

	$recrem(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,0,notifier,,, cdn_delayed, en_delayed);
	$recrem(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,0,notifier,,, sdn_delayed, cdn_delayed);
	$recrem(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,0,notifier,,, sdn_delayed, en_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$hold(posedge en &&& shcheckencdnlh === 1'b1, posedge cdn,0,notifier); // add by cyhuang
	$hold(posedge en &&& shcheckensdnlh === 1'b1, posedge sdn,0,notifier); // add by cyhuang
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1,0,notifier);
	$removal(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1, 0,notifier);
	$removal(posedge sdn,posedge en &&& shcheckensdnlh === 1'b1, 0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn_delayed);
	not _i2 (_n3,sdn_delayed);
	p_latchrs _i3 (q,d_delayed,_n1,_n3,_n2,notifier);

	// Timing check and state logic.
	and _wi0 (shcheckendlh,cdn,sdn);
	buf _wi1 (shcheckcdnsdnlh,en);
	and _wi2 (shcheckencdnlh,d,sdn);
	not _wi3 (_wn3,d);
	and _wi4 (shcheckensdnlh,cdn,_wn3);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:27 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active Low Gate with Reset, 1X Drive
// q = !cdn ? 0 : !en ? d : 'p';qn =!cdn ? 1 : !en ? !d : 'p'
module lacfnb (q, qn, d, en, cdn);
	output q;
	output qn;
	input d;
	input en;
	input cdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckencdnlh;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	(negedge en => (qn -: d)) = (1,1);
	if(d&!en) (cdn => q) = (0,0);
	if(d&!en) (cdn => qn) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(en) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$hold(posedge en &&& shcheckencdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn);
	p_latchr _i2 (q,d_delayed,_n1,_n2,notifier);
	not _i4 (_n5,d_delayed);
	p_latchs _i6 (qn,_n5,_n1,_n2,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckendlh,cdn);
	buf _wi1 (shcheckencdnlh,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:14 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active Low Gate with Reset, 2X Drive
// q = !cdn ? 0 : !en ? d : 'p';qn =!cdn ? 1 : !en ? !d : 'p'
module lacfnh (q, qn, d, en, cdn);
	output q;
	output qn;
	input d;
	input en;
	input cdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckencdnlh;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	(negedge en => (qn -: d)) = (1,1);
	if(d&!en) (cdn => q) = (0,0);
	if(d&!en) (cdn => qn) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(en) (negedge cdn => (qn +: 1'b1)) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$hold(posedge en &&& shcheckencdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn);
	p_latchr _i2 (q,d_delayed,_n1,_n2,notifier);
	not _i4 (_n5,d_delayed);
	p_latchs _i6 (qn,_n5,_n1,_n2,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckendlh,cdn);
	buf _wi1 (shcheckencdnlh,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:50 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active Low Gate with Reset, Q Output Only, 1X Drive
// q = !cdn ? 0 : !en ? d : 'p'
module lacfnq (q, d, en, cdn);
	output q;
	input d;
	input en;
	input cdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckencdnlh;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	if(d&!en) (cdn => q) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (cdn => q) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$hold(posedge en &&& shcheckencdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn);
	p_latchr _i2 (q, d_delayed, _n1, _n2, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckendlh,cdn);
	buf _wi1 (shcheckencdnlh,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:40 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active Low Gate with Reset, Q Output Only, 3X Drive
// q = !cdn ? 0 : !en ? d : 'p'
module lacfnr (q, d, en, cdn);
	output q;
	input d;
	input en;
	input cdn;
`protect
	reg notifier;
	wire shcheckendlh, shcheckencdnlh;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	if(d&!en) (cdn => q) = (0,0);
	if(en) (negedge cdn => (q +: 1'b0)) = (0,0);
	ifnone (cdn => q) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(posedge en &&& shcheckendlh === 1'b1,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en &&& shcheckendlh === 1'b1,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en &&& shcheckendlh === 1'b1, negedge d,0,notifier);
	$hold(posedge en &&& shcheckendlh === 1'b1, posedge d,0,notifier);
	$setup(negedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);
	$setup(posedge d,posedge en &&& shcheckendlh === 1'b1,0,notifier);

`endif

	$hold(posedge en &&& shcheckencdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,posedge en &&& shcheckencdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	not _i1 (_n2,cdn);
	p_latchr _i2 (q, d_delayed, _n1, _n2, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckendlh,cdn);
	buf _wi1 (shcheckencdnlh,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:24:41 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch with Active Low Gate with 1X Drive
// q = !en ? d : 'p';qn =!en ? !d : 'p'
module lanfnb (q, qn, d, en);
	output q;
	output qn;
	input d;
	input en;
`protect
	reg notifier;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	(negedge en => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge en,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en, negedge d,0,notifier);
	$hold(posedge en, posedge d,0,notifier);
	$setup(negedge d,posedge en,0,notifier);
	$setup(posedge d,posedge en,0,notifier);

`endif

	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	p_latch _i1 (q,d_delayed,_n1,notifier);
	not _i3 (_n4,d_delayed);
	p_latch _i4 (qn,_n4,_n1,notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:39 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch with Active Low Gate and 2X Drive
// q = !en ? d : 'p';qn =!en ? !d : 'p'
module lanfnh (q, qn, d, en);
	output q;
	output qn;
	input d;
	input en;
`protect
	reg notifier;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(negedge en => (q +: d)) = (1,1);
	(negedge en => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge en,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en, negedge d,0,notifier);
	$hold(posedge en, posedge d,0,notifier);
	$setup(negedge d,posedge en,0,notifier);
	$setup(posedge d,posedge en,0,notifier);

`endif

	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	p_latch _i1 (q,d_delayed,_n1,notifier);
	not _i3 (_n4,d_delayed);
	p_latch _i4 (qn,_n4,_n1,notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:49 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch with Active Low Gate, Q Output Only, 2X Drive
// q = !en ? d : 'p'
module lanfnq (q, d, en);
	output q;
	input d;
	input en;
`protect
	reg notifier;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(negedge en => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge en,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en, negedge d,0,notifier);
	$hold(posedge en, posedge d,0,notifier);
	$setup(negedge d,posedge en,0,notifier);
	$setup(posedge d,posedge en,0,notifier);

`endif

	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	p_latch _i1 (q, d_delayed, _n1, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:47 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch with Active Low Gate, Q Output Only, 4X Drive
// q = !en ? d : 'p'
module lanfnr (q, d, en);
	output q;
	input d;
	input en;
`protect
	reg notifier;

	wire en_delayed;
	wire d_delayed;
`ifdef negativeTimingCheck
`else
	buf(en_delayed,en);
	buf(d_delayed,d);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(negedge en => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(posedge en,negedge d,0,0,notifier,,, en_delayed, d_delayed);
	$setuphold(posedge en,posedge d,0,0,notifier,,, en_delayed, d_delayed);

`else

	$hold(posedge en, negedge d,0,notifier);
	$hold(posedge en, posedge d,0,notifier);
	$setup(negedge d,posedge en,0,notifier);
	$setup(posedge d,posedge en,0,notifier);

`endif

	$width(negedge en,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,en_delayed);
	p_latch _i1 (q, d_delayed, _n1, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:16 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Set, Reset, 1X Drive
// q = !cdn ? 0 : !sdn ? 1 : e ? d : 'p';qn =!sdn ? 0 : !cdn ? 1 : e ? !d : 'p'
module labtnb (q, qn, d, e, cdn, sdn);
	output q;
	output qn;
	input e;
	input d;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl, shchecksdncdnlh, shcheckesdnhl, shcheckcdnsdnlh;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	(posedge e => (qn -: d)) = (1,1);
	if(!cdn) (sdn => qn) = (0,0);
	if(!d&e) (sdn => q) = (0,0);
	if(!e&!sdn) (cdn => q) = (0,0);
	if(!e&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!e) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(!e) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&!d&e) (sdn => qn) = (0,0);
	if(cdn&!e) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(d&e&sdn) (cdn => q) = (0,0);
	if(d&e) (cdn => qn) = (0,0);
	if(e&!sdn) (cdn => q) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);
	ifnone (sdn => q) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge e &&& shcheckesdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheckcdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shchecksdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shchecksdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge e &&& shcheckesdnhl === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_latchrs _i2 (q,d_delayed,e_delayed,_n1,_n2,notifier);
	not _i3 (_n4,d_delayed);
	p_latchrs _i6 (qn,_n4,e_delayed,_n2,_n1,notifier);

	// Timing check and state logic.
	and _wi0 (shcheckedhl,cdn,sdn);
	and _wi1 (shcheckecdnhl,d,sdn);
	not _wi2 (shchecksdncdnlh,e);
	not _wi3 (_wn4,d);
	and _wi4 (shcheckesdnhl,cdn,_wn4);
	not _wi5 (shcheckcdnsdnlh,e);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:16 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Set, Reset, 2X Drive
// q = !cdn ? 0 : !sdn ? 1 : e ? d : 'p';qn =!sdn ? 0 : !cdn ? 1 : e ? !d : 'p'
module labtnh (q, qn, d, e, cdn, sdn);
	output q;
	output qn;
	input e;
	input d;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl, shchecksdncdnlh, shcheckesdnhl, shcheckcdnsdnlh;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	(posedge e => (qn -: d)) = (1,1);
	if(!cdn) (sdn => qn) = (0,0);
	if(!d&e) (sdn => q) = (0,0);
	if(!e&!sdn) (cdn => q) = (0,0);
	if(!e&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!e) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(!e) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(cdn&!d&e) (sdn => qn) = (0,0);
	if(cdn&!e) (negedge sdn => (qn +: 1'b0)) = (0,0);
	if(d&e&sdn) (cdn => q) = (0,0);
	if(d&e) (cdn => qn) = (0,0);
	if(e&!sdn) (cdn => q) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);
	ifnone (sdn => q) = (0,0);
	ifnone (sdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge e &&& shcheckesdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge cdn &&& shcheckcdnsdnlh === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shchecksdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shchecksdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge e &&& shcheckesdnhl === 1'b1,0,notifier);
	$recovery(posedge sdn,posedge cdn &&& shcheckcdnsdnlh === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_latchrs _i2 (q,d_delayed,e_delayed,_n1,_n2,notifier);
	not _i3 (_n4,d_delayed);
	p_latchrs _i6 (qn,_n4,e_delayed,_n2,_n1,notifier);

	// Timing check and state logic.
	and _wi0 (shcheckedhl,cdn,sdn);
	and _wi1 (shcheckecdnhl,d,sdn);
	not _wi2 (shchecksdncdnlh,e);
	not _wi3 (_wn4,d);
	and _wi4 (shcheckesdnhl,cdn,_wn4);
	not _wi5 (shcheckcdnsdnlh,e);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:10 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Set, Reset, Q Output Only, 2X Drive
// q = !cdn ? 0 : !sdn ? 1 : e ? d : 'p'
module labtnq (q, d, e, cdn, sdn);
	output q;
	input e;
	input d;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl, shchecksdncdnlh, shcheckesdnhl;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	if(!d&e) (sdn => q) = (0,0);
	if(!e&!sdn) (cdn => q) = (0,0);
	if(!e&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!e) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(d&e&sdn) (cdn => q) = (0,0);
	if(e&!sdn) (cdn => q) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (sdn => q) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge e &&& shcheckesdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shchecksdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shchecksdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge e &&& shcheckesdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_latchrs _i2 (q, d_delayed, e_delayed, _n1, _n2, notifier);

	// Timing check and state logic.
	and _wi0 (shcheckedhl,cdn,sdn);
	and _wi1 (shcheckecdnhl,d,sdn);
	not _wi2 (shchecksdncdnlh,e);
	not _wi3 (_wn4,d);
	and _wi4 (shcheckesdnhl,cdn,_wn4);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:00 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Set, Reset, Q Output Only, 4X Drive
// q = !cdn ? 0 : !sdn ? 1 : e ? d : 'p'
module labtnr (q, d, e, cdn, sdn);
	output q;
	input e;
	input d;
	input sdn;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl, shchecksdncdnlh, shcheckesdnhl;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	if(!d&e&!sdn) (cdn => q) = (0,0);
	if(!d&e) (sdn => q) = (0,0);
	if(!e&!sdn) (cdn => q) = (0,0);
	if(e&!sdn) (cdn => q) = (0,0); // add by cyhuang
	if(!e&sdn) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!e) (negedge sdn => (q +: 1'b1)) = (0,0);
	if(d&e&!sdn) (cdn => q) = (0,0);
	if(d&e&sdn) (cdn => q) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (sdn => q) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$hold(negedge e &&& shcheckesdnhl === 1'b1,posedge sdn,0,notifier);
	$hold(posedge sdn &&& shchecksdncdnlh === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$recovery(posedge cdn,posedge sdn &&& shchecksdncdnlh === 1'b1,0,notifier);
	$recovery(posedge sdn,negedge e &&& shcheckesdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(negedge sdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,sdn);
	not _i1 (_n2,cdn);
	p_latchrs _i2 (q, d_delayed, e_delayed, _n1, _n2, notifier);

	// Timing check and state logic.
	and _wi0 (shcheckedhl,cdn,sdn);
	and _wi1 (shcheckecdnhl,d,sdn);
	not _wi2 (shchecksdncdnlh,e);
	not _wi3 (_wn4,d);
	and _wi4 (shcheckesdnhl,cdn,_wn4);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:50 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Reset
// q = !cdn ? 0 : e ? d : 'p';qn =!cdn ? 1 : e ? !d : 'p'
module lactnb (q, qn, d, e, cdn);
	output q;
	output qn;
	input e;
	input d;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	(posedge e => (qn -: d)) = (1,1);
	if(!e) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!e) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(d&e) (cdn => q) = (0,0);
	if(d&e) (cdn => qn) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_latchr _i1 (q,d_delayed,e_delayed,_n1,notifier);
	not _i2 (_n3,d_delayed);
	p_latchs _i4 (qn,_n3,e_delayed,_n1,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckedhl,cdn);
	buf _wi1 (shcheckecdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:19 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Enable with Reset, 2X Drive
// q = !cdn ? 0 : e ? d : 'p';qn = !cdn ? 1 : e ? !d : 'p'
module lactnh (q, qn, d, e, cdn);
	output q;
	output qn;
	input e;
	input d;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	(posedge e => (qn -: d)) = (1,1);
	if(!e) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(!e) (negedge cdn => (qn +: 1'b1)) = (0,0);
	if(d&e) (cdn => q) = (0,0);
	if(d&e) (cdn => qn) = (0,0);
	ifnone (cdn => q) = (0,0);
	ifnone (cdn => qn) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_latchr _i1 (q,d_delayed,e_delayed,_n1,notifier);
	not _i2 (_n3,d_delayed);
	p_latchs _i4 (qn,_n3,e_delayed,_n1,notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckedhl,cdn);
	buf _wi1 (shcheckecdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:25 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Reset, Q Output Only, 1X Drive
// q = !cdn ? 0 : e ? d : 'p'
module lactnq (q, d, e, cdn);
	output q;
	input e;
	input d;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	if(!e) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(d&e) (cdn => q) = (0,0);
	ifnone (cdn => q) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_latchr _i1 (q, d_delayed, e_delayed, _n1, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckedhl,cdn);
	buf _wi1 (shcheckecdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Reset, Q Output Only, 3X Drive
// q = !cdn ? 0 : e ? d : 'p'
module lactnr (q, d, e, cdn);
	output q;
	input e;
	input d;
	input cdn;
`protect
	reg notifier;
	wire shcheckedhl, shcheckecdnhl;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	if(!e) (negedge cdn => (q +: 1'b0)) = (0,0);
	if(d&e) (cdn => q) = (0,0);
	ifnone (cdn => q) = (0,0);

`ifdef negativeTimingCheck

	$setuphold(negedge e &&& shcheckedhl === 1'b1,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e &&& shcheckedhl === 1'b1,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e &&& shcheckedhl === 1'b1, negedge d,0,notifier);
	$hold(negedge e &&& shcheckedhl === 1'b1, posedge d,0,notifier);
	$setup(negedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);
	$setup(posedge d,negedge e &&& shcheckedhl === 1'b1,0,notifier);

`endif

	$hold(negedge e &&& shcheckecdnhl === 1'b1,posedge cdn,0,notifier);
	$recovery(posedge cdn,negedge e &&& shcheckecdnhl === 1'b1,0,notifier);
	$width(negedge cdn,1,0,notifier);
	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	not _i0 (_n1,cdn);
	p_latchr _i1 (q, d_delayed, e_delayed, _n1, notifier);

	// Timing check and state logic.
	buf _wi0 (shcheckedhl,cdn);
	buf _wi1 (shcheckecdnhl,d);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:42 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with 1X Drive
// q = e ? d : 'p';qn = e ? !d : 'p'
module lantnb (q, qn, d, e);
	output q;
	output qn;
	input e;
	input d;
`protect
	reg notifier;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	(posedge e => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge e,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e, negedge d,0,notifier);
	$hold(negedge e, posedge d,0,notifier);
	$setup(negedge d,negedge e,0,notifier);
	$setup(posedge d,negedge e,0,notifier);

`endif

	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	p_latch _i0 (q, d_delayed, e_delayed, notifier);
	not _i1 (_n2,d_delayed);
	p_latch _i2 (qn, _n2, e_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:27 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with 2X Drive
// q = e ? d : 'p';qn = e ? !d : 'p'
module lantnh (q, qn, d, e);
	output q;
	output qn;
	input e;
	input d;
`protect
	reg notifier;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(d => qn) = (0,0);
	(posedge e => (q +: d)) = (1,1);
	(posedge e => (qn -: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge e,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e, negedge d,0,notifier);
	$hold(negedge e, posedge d,0,notifier);
	$setup(negedge d,negedge e,0,notifier);
	$setup(posedge d,negedge e,0,notifier);

`endif

	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	p_latch _i0 (q, d_delayed, e_delayed, notifier);
	not _i1 (_n2,d_delayed);
	p_latch _i2 (qn, _n2, e_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:42 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Q Output Only, 2X Drive
// q = e ? d : 'p'
module lantnq (q, d, e);
	output q;
	input d;
	input e;
`protect
	reg notifier;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(posedge e => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge e,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e, negedge d,0,notifier);
	$hold(negedge e, posedge d,0,notifier);
	$setup(negedge d,negedge e,0,notifier);
	$setup(posedge d,negedge e,0,notifier);

`endif

	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	p_latch _i0 (q, d_delayed, e_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:40 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// D-Latch Active High Gate with Q Output Only, 4X Drive
// q = e ? d : 'p'
module lantnr (q, d, e);
	output q;
	input d;
	input e;
`protect
	reg notifier;

	wire d_delayed;
	wire e_delayed;
`ifdef negativeTimingCheck
`else
	buf(d_delayed,d);
	buf(e_delayed,e);
`endif

	specify
		// Pin-to-pin timing.
	(d => q) = (0,0);
	(posedge e => (q +: d)) = (1,1);

`ifdef negativeTimingCheck

	$setuphold(negedge e,negedge d,0,0,notifier,,, e_delayed, d_delayed);
	$setuphold(negedge e,posedge d,0,0,notifier,,, e_delayed, d_delayed);

`else

	$hold(negedge e, negedge d,0,notifier);
	$hold(negedge e, posedge d,0,notifier);
	$setup(negedge d,negedge e,0,notifier);
	$setup(posedge d,negedge e,0,notifier);

`endif

	$width(posedge e,1,0,notifier);
	endspecify

	// Gate-level description.
	p_latch _i0 (q, d_delayed, e_delayed, notifier);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:47 rt=0.03m p=0.04m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-1 Inverting MUX, 0X Drive
// zn = s ? !i1 : !i0
module mi21d0 (zn, i0, i1, s);
	output zn;
	input i0;
	input i1;
	input s;
`protect

	specify
		// Pin-to-pin timing.
	(i0 => zn) = (0,0);
	(i1 => zn) = (0,0);
	if(!i0&i1) (s => zn) = (0,0);
	if(i0&!i1) (s => zn) = (0,0);
	ifnone (s => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,i1);
	not _i1 (_n2,i0);
	p_mux21 _i2 (zn, _n1, _n2, s);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:07 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-1 Inverting MUX, 1X Drive
// zn = s ? !i1 : !i0
module mi21d1 (zn, i0, i1, s);
	output zn;
	input i0;
	input i1;
	input s;
`protect

	specify
		// Pin-to-pin timing.
	(i0 => zn) = (0,0);
	(i1 => zn) = (0,0);
	if(!i0&i1) (s => zn) = (0,0);
	if(i0&!i1) (s => zn) = (0,0);
	ifnone (s => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,i1);
	not _i1 (_n2,i0);
	p_mux21 _i2 (zn, _n1, _n2, s);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:48 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-1 Inverting MUX, 2X Drive
// zn = s ? !i1 : !i0
module mi21d2 (zn, i0, i1, s);
	output zn;
	input i0;
	input i1;
	input s;
`protect

	specify
		// Pin-to-pin timing.
	(i0 => zn) = (0,0);
	(i1 => zn) = (0,0);
	if(!i0&i1) (s => zn) = (0,0);
	if(i0&!i1) (s => zn) = (0,0);
	ifnone (s => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n1,i1);
	not _i1 (_n2,i0);
	p_mux21 _i2 (zn, _n1, _n2, s);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:57 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-1 Inverting MUX with 0X Drive
// zn = (!s0 & !s1 & !i0) | (s0 & !s1 & !i1) | (s1 & !i2)
module mi31d0 (zn, i0, i1, i2, s0, s1);
	output zn;
	input i0;
	input i1;
	input i2;
	input s0;
	input s1;
`protect
	wire s1znstate0, s1znstate1;

	specify
		// Pin-to-pin timing.
	if(!i0&i1&!i2) (s0 => zn) = (0,0);
	if(!i0&i1&i2) (s0 => zn) = (0,0);
	if(!i2) (i0 => zn) = (0,0);
	if(!i2) (i1 => zn) = (0,0);
	if((!i0&((i1&!s0)|!i1)|i0&!i1&s0)) (i2 => zn) = (0,0);
	if((!i0&i1&s0|i0&((!i1&!s0)|i1))) (i2 => zn) = (0,0);
	if(i0&!i1&!i2) (s0 => zn) = (0,0);
	if(i0&!i1&i2) (s0 => zn) = (0,0);
	if(i2) (i0 => zn) = (0,0);
	if(i2) (i1 => zn) = (0,0);
	if(s1znstate0) (s1 => zn) = (0,0);
	if(s1znstate1) (s1 => zn) = (0,0);
        if(i0&!i1&!s1) (s0 => zn) = (0,0);
        if(i0&!i2&!s0) (s1 => zn) = (0,0);
        if(!i1&i2&s0) (s1 => zn) = (0,0);
        if(!i0&i2&!s0) (s1 => zn) = (0,0);
        if(i1&!i2&s0) (s1 => zn) = (0,0);
        if(!i0&i1&!s1) (s0 => zn) = (0,0);
	ifnone (i0 => zn) = (0,0);
	ifnone (i1 => zn) = (0,0);
	ifnone (i2 => zn) = (0,0);
	ifnone (s0 => zn) = (0,0);
	ifnone (s1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n2,i0);
	not _i1 (_n3,s0);
	not _i2 (_n4,s1);
	and _i3 (_n1,_n2,_n3,_n4);
	not _i4 (_n6,i1);
	and _i6 (_n5,_n6,s0,_n4);
	not _i7 (_n9,i2);
	and _i8 (_n8,s1,_n9);
	or _i9 (zn,_n1,_n5,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i2);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	and _wi6 (_wn6,_wn7,_wn8,_wn2);
	and _wi8 (_wn10,i1,_wn2);
	or _wi9 (_wn5,_wn6,_wn10);
	and _wi10 (_wn4,i0,_wn5);
	or _wi11 (s1znstate0,_wn1,_wn4);
	and _wi14 (_wn16,_wn8,i2);
	and _wi16 (_wn18,_wn7,i1,i2);
	or _wi17 (_wn15,_wn16,_wn18);
	and _wi18 (_wn13,_wn3,_wn15);
	and _wi20 (_wn20,s0,i2,i0,_wn8);
	or _wi21 (s1znstate1,_wn13,_wn20);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:32 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-1 Inverting MUX with 1X Drive
// zn = (!s0 & !s1 & !i0) | (s0 & !s1 & !i1) | (s1 & !i2)
module mi31d1 (zn, i0, i1, i2, s0, s1);
	output zn;
	input i0;
	input i1;
	input i2;
	input s0;
	input s1;
`protect
	wire s1znstate0, s1znstate1;

	specify
		// Pin-to-pin timing.
	if(!i0&i1&!i2) (s0 => zn) = (0,0);
	if(!i0&i1&i2) (s0 => zn) = (0,0);
	if(!i2) (i0 => zn) = (0,0);
	if(!i2) (i1 => zn) = (0,0);
	if((!i0&((i1&!s0)|!i1)|i0&!i1&s0)) (i2 => zn) = (0,0);
	if((!i0&i1&s0|i0&((!i1&!s0)|i1))) (i2 => zn) = (0,0);
	if(i0&!i1&!i2) (s0 => zn) = (0,0);
	if(i0&!i1&i2) (s0 => zn) = (0,0);
	if(i2) (i0 => zn) = (0,0);
	if(i2) (i1 => zn) = (0,0);
	if(s1znstate0) (s1 => zn) = (0,0);
	if(s1znstate1) (s1 => zn) = (0,0);
        if(i0&!i1&!s1) (s0 => zn) = (0,0);
        if(i0&!i2&!s0) (s1 => zn) = (0,0);
        if(!i1&i2&s0) (s1 => zn) = (0,0);
        if(!i0&i2&!s0) (s1 => zn) = (0,0);
        if(i1&!i2&s0) (s1 => zn) = (0,0);
        if(!i0&i1&!s1) (s0 => zn) = (0,0);
	ifnone (i0 => zn) = (0,0);
	ifnone (i1 => zn) = (0,0);
	ifnone (i2 => zn) = (0,0);
	ifnone (s0 => zn) = (0,0);
	ifnone (s1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n2,i0);
	not _i1 (_n3,s0);
	not _i2 (_n4,s1);
	and _i3 (_n1,_n2,_n3,_n4);
	not _i4 (_n6,i1);
	and _i6 (_n5,_n6,s0,_n4);
	not _i7 (_n9,i2);
	and _i8 (_n8,s1,_n9);
	or _i9 (zn,_n1,_n5,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i2);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	and _wi6 (_wn6,_wn7,_wn8,_wn2);
	and _wi8 (_wn10,i1,_wn2);
	or _wi9 (_wn5,_wn6,_wn10);
	and _wi10 (_wn4,i0,_wn5);
	or _wi11 (s1znstate0,_wn1,_wn4);
	and _wi14 (_wn16,_wn8,i2);
	and _wi16 (_wn18,_wn7,i1,i2);
	or _wi17 (_wn15,_wn16,_wn18);
	and _wi18 (_wn13,_wn3,_wn15);
	and _wi20 (_wn20,s0,i2,i0,_wn8);
	or _wi21 (s1znstate1,_wn13,_wn20);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:30 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-1 Inverting MUX with 2X Drive
// zn = (!s0 & !s1 & !i0) | (s0 & !s1 & !i1) | (s1 & !i2)
module mi31d2 (zn, i0, i1, i2, s0, s1);
	output zn;
	input i0;
	input i1;
	input i2;
	input s0;
	input s1;
`protect
	wire s1znstate0, s1znstate1;

	specify
		// Pin-to-pin timing.
	if(!i0&i1&!i2) (s0 => zn) = (0,0);
	if(!i0&i1&i2) (s0 => zn) = (0,0);
	if(!i2) (i0 => zn) = (0,0);
	if(!i2) (i1 => zn) = (0,0);
	if((!i0&((i1&!s0)|!i1)|i0&!i1&s0)) (i2 => zn) = (0,0);
	if((!i0&i1&s0|i0&((!i1&!s0)|i1))) (i2 => zn) = (0,0);
	if(i0&!i1&!i2) (s0 => zn) = (0,0);
	if(i0&!i1&i2) (s0 => zn) = (0,0);
	if(i2) (i0 => zn) = (0,0);
	if(i2) (i1 => zn) = (0,0);
	if(s1znstate0) (s1 => zn) = (0,0);
	if(s1znstate1) (s1 => zn) = (0,0);
        if(i0&!i1&!s1) (s0 => zn) = (0,0);
        if(i0&!i2&!s0) (s1 => zn) = (0,0);
        if(!i1&i2&s0) (s1 => zn) = (0,0);
        if(!i0&i2&!s0) (s1 => zn) = (0,0);
        if(i1&!i2&s0) (s1 => zn) = (0,0);
        if(!i0&i1&!s1) (s0 => zn) = (0,0);
	ifnone (i0 => zn) = (0,0);
	ifnone (i1 => zn) = (0,0);
	ifnone (i2 => zn) = (0,0);
	ifnone (s0 => zn) = (0,0);
	ifnone (s1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n2,i0);
	not _i1 (_n3,s0);
	not _i2 (_n4,s1);
	and _i3 (_n1,_n2,_n3,_n4);
	not _i4 (_n6,i1);
	and _i6 (_n5,_n6,s0,_n4);
	not _i7 (_n9,i2);
	and _i8 (_n8,s1,_n9);
	or _i9 (zn,_n1,_n5,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i2);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	and _wi6 (_wn6,_wn7,_wn8,_wn2);
	and _wi8 (_wn10,i1,_wn2);
	or _wi9 (_wn5,_wn6,_wn10);
	and _wi10 (_wn4,i0,_wn5);
	or _wi11 (s1znstate0,_wn1,_wn4);
	and _wi14 (_wn16,_wn8,i2);
	and _wi16 (_wn18,_wn7,i1,i2);
	or _wi17 (_wn15,_wn16,_wn18);
	and _wi18 (_wn13,_wn3,_wn15);
	and _wi20 (_wn20,s0,i2,i0,_wn8);
	or _wi21 (s1znstate1,_wn13,_wn20);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:59 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4-1 Inverting MUX with 0X Drive
// zn = (!s0 & !s1 & !i0) | (s0 & !s1 & !i1) | (!s0 & s1 & !i2) | (s0 & s1 & !i3)
module mi41d0 (zn, i0, i1, i2, i3, s0, s1);
	output zn;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;
`protect
	wire s1zstate0, s1zstate1, s0zstate0, s0zstate1;

	specify
		// Pin-to-pin timing.
	(i0 => zn) = (0,0);
	(i1 => zn) = (0,0);
	(i2 => zn) = (0,0);
	(i3 => zn) = (0,0);
	if(s0zstate0) (s0 => zn) = (0,0);
	if(s0zstate1) (s0 => zn) = (0,0);
	if(s1zstate0) (s1 => zn) = (0,0);
	if(s1zstate1) (s1 => zn) = (0,0);
	if(i0&!i1&!s1) (s0 => zn) = (0,0);
	if(i2&!i3&s1) (s0 => zn) = (0,0);
	if(i0&!i2&!s0) (s1 => zn) = (0,0);
	if(!i1&i3&s0) (s1 => zn) = (0,0);
	if(!i0&i2&!s0) (s1 => zn) = (0,0);
	if(i1&!i3&s0) (s1 => zn) = (0,0);
	if(!i2&i3&s1) (s0 => zn) = (0,0);
	if(!i0&i1&!s1) (s0 => zn) = (0,0);
	ifnone (s0 => zn) = (0,0);
	ifnone (s1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i9 (_n10,i0);
	not _i10 (_n11,i1);
	not _i11 (_n12,i2);
	not _i12 (_n13,i3);
	not _i0 (_n2,s0);
	not _i1 (_n3,s1);
	and _i2 (_n1,_n10,_n2,_n3);
	and _i4 (_n4,_n11,s0,_n3);
	and _i6 (_n6,_n12,_n2,s1);
	and _i7 (_n8,_n13,s0,s1);
	or _i8 (zn,_n1,_n4,_n6,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i3);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	not _wi5 (_wn9,i2);
	and _wi6 (_wn6,_wn7,_wn8,_wn9);
	and _wi9 (_wn15,i3,_wn7);
	or _wi11 (_wn14,_wn15,_wn2);
	and _wi12 (_wn12,_wn9,_wn14);
	and _wi14 (_wn18,s0,i2,_wn2);
	or _wi15 (_wn11,_wn12,_wn18);
	and _wi16 (_wn10,i1,_wn11);
	or _wi17 (_wn5,_wn6,_wn10);
	and _wi18 (_wn4,i0,_wn5);
	or _wi19 (s1zstate0,_wn1,_wn4);
	and _wi23 (_wn27,s0,_wn9,i3);
	and _wi26 (_wn31,_wn2,_wn7);
	or _wi27 (_wn30,_wn31,i3);
	and _wi28 (_wn29,i2,_wn30);
	or _wi29 (_wn26,_wn27,_wn29);
	and _wi30 (_wn24,_wn8,_wn26);
	and _wi32 (_wn34,_wn7,i1,i2);
	or _wi33 (_wn23,_wn24,_wn34);
	and _wi34 (_wn21,_wn3,_wn23);
	and _wi36 (_wn36,s0,i3,i0,_wn8);
	or _wi37 (s1zstate1,_wn21,_wn36);
	and _wi41 (_wn42,s1,i3,_wn8,_wn9);
	not _wi44 (_wn52,s1);
	and _wi45 (_wn50,_wn2,_wn52);
	or _wi46 (_wn49,_wn50,i3);
	and _wi47 (_wn47,_wn9,_wn49);
	and _wi49 (_wn53,i2,_wn52);
	or _wi50 (_wn46,_wn47,_wn53);
	and _wi51 (_wn45,i1,_wn46);
	or _wi52 (_wn41,_wn42,_wn45);
	and _wi53 (_wn39,_wn3,_wn41);
	and _wi55 (_wn55,s1,i3,i0,_wn9);
	or _wi56 (s0zstate0,_wn39,_wn55);
	and _wi59 (_wn58,s1,_wn2,_wn3,i2);
	and _wi63 (_wn66,_wn9,_wn52);
	and _wi65 (_wn71,i3,_wn52);
	or _wi67 (_wn70,_wn71,_wn2);
	and _wi68 (_wn69,i2,_wn70);
	or _wi69 (_wn65,_wn66,_wn69);
	and _wi70 (_wn63,_wn8,_wn65);
	and _wi72 (_wn74,s1,_wn2,i1,i2);
	or _wi73 (_wn62,_wn63,_wn74);
	and _wi74 (_wn61,i0,_wn62);
	or _wi75 (s0zstate1,_wn58,_wn61);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:59 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4-1 Inverting MUX with 1X Drive
// zn = (!s0 & !s1 & !i0) | (s0 & !s1 & !i1) | (!s0 & s1 & !i2) | (s0 & s1 & !i3)
module mi41d1 (zn, i0, i1, i2, i3, s0, s1);
	output zn;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;
`protect
	wire s1zstate0, s1zstate1, s0zstate0, s0zstate1;

	specify
		// Pin-to-pin timing.
	(i0 => zn) = (0,0);
	(i1 => zn) = (0,0);
	(i2 => zn) = (0,0);
	(i3 => zn) = (0,0);
	if(s0zstate0) (s0 => zn) = (0,0);
	if(s0zstate1) (s0 => zn) = (0,0);
	if(s1zstate0) (s1 => zn) = (0,0);
	if(s1zstate1) (s1 => zn) = (0,0);
	if(i0&!i1&!s1) (s0 => zn) = (0,0);
	if(i2&!i3&s1) (s0 => zn) = (0,0);
	if(i0&!i2&!s0) (s1 => zn) = (0,0);
	if(!i1&i3&s0) (s1 => zn) = (0,0);
	if(!i0&i2&!s0) (s1 => zn) = (0,0);
	if(i1&!i3&s0) (s1 => zn) = (0,0);
	if(!i2&i3&s1) (s0 => zn) = (0,0);
	if(!i0&i1&!s1) (s0 => zn) = (0,0);
	ifnone (s0 => zn) = (0,0);
	ifnone (s1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i9 (_n10,i0);
	not _i10 (_n11,i1);
	not _i11 (_n12,i2);
	not _i12 (_n13,i3);
	not _i0 (_n2,s0);
	not _i1 (_n3,s1);
	and _i2 (_n1,_n10,_n2,_n3);
	and _i4 (_n4,_n11,s0,_n3);
	and _i6 (_n6,_n12,_n2,s1);
	and _i7 (_n8,_n13,s0,s1);
	or _i8 (zn,_n1,_n4,_n6,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i3);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	not _wi5 (_wn9,i2);
	and _wi6 (_wn6,_wn7,_wn8,_wn9);
	and _wi9 (_wn15,i3,_wn7);
	or _wi11 (_wn14,_wn15,_wn2);
	and _wi12 (_wn12,_wn9,_wn14);
	and _wi14 (_wn18,s0,i2,_wn2);
	or _wi15 (_wn11,_wn12,_wn18);
	and _wi16 (_wn10,i1,_wn11);
	or _wi17 (_wn5,_wn6,_wn10);
	and _wi18 (_wn4,i0,_wn5);
	or _wi19 (s1zstate0,_wn1,_wn4);
	and _wi23 (_wn27,s0,_wn9,i3);
	and _wi26 (_wn31,_wn2,_wn7);
	or _wi27 (_wn30,_wn31,i3);
	and _wi28 (_wn29,i2,_wn30);
	or _wi29 (_wn26,_wn27,_wn29);
	and _wi30 (_wn24,_wn8,_wn26);
	and _wi32 (_wn34,_wn7,i1,i2);
	or _wi33 (_wn23,_wn24,_wn34);
	and _wi34 (_wn21,_wn3,_wn23);
	and _wi36 (_wn36,s0,i3,i0,_wn8);
	or _wi37 (s1zstate1,_wn21,_wn36);
	and _wi41 (_wn42,s1,i3,_wn8,_wn9);
	not _wi44 (_wn52,s1);
	and _wi45 (_wn50,_wn2,_wn52);
	or _wi46 (_wn49,_wn50,i3);
	and _wi47 (_wn47,_wn9,_wn49);
	and _wi49 (_wn53,i2,_wn52);
	or _wi50 (_wn46,_wn47,_wn53);
	and _wi51 (_wn45,i1,_wn46);
	or _wi52 (_wn41,_wn42,_wn45);
	and _wi53 (_wn39,_wn3,_wn41);
	and _wi55 (_wn55,s1,i3,i0,_wn9);
	or _wi56 (s0zstate0,_wn39,_wn55);
	and _wi59 (_wn58,s1,_wn2,_wn3,i2);
	and _wi63 (_wn66,_wn9,_wn52);
	and _wi65 (_wn71,i3,_wn52);
	or _wi67 (_wn70,_wn71,_wn2);
	and _wi68 (_wn69,i2,_wn70);
	or _wi69 (_wn65,_wn66,_wn69);
	and _wi70 (_wn63,_wn8,_wn65);
	and _wi72 (_wn74,s1,_wn2,i1,i2);
	or _wi73 (_wn62,_wn63,_wn74);
	and _wi74 (_wn61,i0,_wn62);
	or _wi75 (s0zstate1,_wn58,_wn61);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:59 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4-1 Inverting MUX with 2X Drive
// zn = (!s0 & !s1 & !i0) | (s0 & !s1 & !i1) | (!s0 & s1 & !i2) | (s0 & s1 & !i3)
module mi41d2 (zn, i0, i1, i2, i3, s0, s1);
	output zn;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;
`protect
	wire s1zstate0, s1zstate1, s0zstate0, s0zstate1;

	specify
		// Pin-to-pin timing.
	(i0 => zn) = (0,0);
	(i1 => zn) = (0,0);
	(i2 => zn) = (0,0);
	(i3 => zn) = (0,0);
	if(s0zstate0) (s0 => zn) = (0,0);
	if(s0zstate1) (s0 => zn) = (0,0);
	if(s1zstate0) (s1 => zn) = (0,0);
	if(s1zstate1) (s1 => zn) = (0,0);
	if(i0&!i1&!s1) (s0 => zn) = (0,0);
	if(i2&!i3&s1) (s0 => zn) = (0,0);
	if(i0&!i2&!s0) (s1 => zn) = (0,0);
	if(!i1&i3&s0) (s1 => zn) = (0,0);
	if(!i0&i2&!s0) (s1 => zn) = (0,0);
	if(i1&!i3&s0) (s1 => zn) = (0,0);
	if(!i2&i3&s1) (s0 => zn) = (0,0);
	if(!i0&i1&!s1) (s0 => zn) = (0,0);
	ifnone (s0 => zn) = (0,0);
	ifnone (s1 => zn) = (0,0);
	endspecify

	// Gate-level description.
	not _i9 (_n10,i0);
	not _i10 (_n11,i1);
	not _i11 (_n12,i2);
	not _i12 (_n13,i3);
	not _i0 (_n2,s0);
	not _i1 (_n3,s1);
	and _i2 (_n1,_n10,_n2,_n3);
	and _i4 (_n4,_n11,s0,_n3);
	and _i6 (_n6,_n12,_n2,s1);
	and _i7 (_n8,_n13,s0,s1);
	or _i8 (zn,_n1,_n4,_n6,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i3);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	not _wi5 (_wn9,i2);
	and _wi6 (_wn6,_wn7,_wn8,_wn9);
	and _wi9 (_wn15,i3,_wn7);
	or _wi11 (_wn14,_wn15,_wn2);
	and _wi12 (_wn12,_wn9,_wn14);
	and _wi14 (_wn18,s0,i2,_wn2);
	or _wi15 (_wn11,_wn12,_wn18);
	and _wi16 (_wn10,i1,_wn11);
	or _wi17 (_wn5,_wn6,_wn10);
	and _wi18 (_wn4,i0,_wn5);
	or _wi19 (s1zstate0,_wn1,_wn4);
	and _wi23 (_wn27,s0,_wn9,i3);
	and _wi26 (_wn31,_wn2,_wn7);
	or _wi27 (_wn30,_wn31,i3);
	and _wi28 (_wn29,i2,_wn30);
	or _wi29 (_wn26,_wn27,_wn29);
	and _wi30 (_wn24,_wn8,_wn26);
	and _wi32 (_wn34,_wn7,i1,i2);
	or _wi33 (_wn23,_wn24,_wn34);
	and _wi34 (_wn21,_wn3,_wn23);
	and _wi36 (_wn36,s0,i3,i0,_wn8);
	or _wi37 (s1zstate1,_wn21,_wn36);
	and _wi41 (_wn42,s1,i3,_wn8,_wn9);
	not _wi44 (_wn52,s1);
	and _wi45 (_wn50,_wn2,_wn52);
	or _wi46 (_wn49,_wn50,i3);
	and _wi47 (_wn47,_wn9,_wn49);
	and _wi49 (_wn53,i2,_wn52);
	or _wi50 (_wn46,_wn47,_wn53);
	and _wi51 (_wn45,i1,_wn46);
	or _wi52 (_wn41,_wn42,_wn45);
	and _wi53 (_wn39,_wn3,_wn41);
	and _wi55 (_wn55,s1,i3,i0,_wn9);
	or _wi56 (s0zstate0,_wn39,_wn55);
	and _wi59 (_wn58,s1,_wn2,_wn3,i2);
	and _wi63 (_wn66,_wn9,_wn52);
	and _wi65 (_wn71,i3,_wn52);
	or _wi67 (_wn70,_wn71,_wn2);
	and _wi68 (_wn69,i2,_wn70);
	or _wi69 (_wn65,_wn66,_wn69);
	and _wi70 (_wn63,_wn8,_wn65);
	and _wi72 (_wn74,s1,_wn2,i1,i2);
	or _wi73 (_wn62,_wn63,_wn74);
	and _wi74 (_wn61,i0,_wn62);
	or _wi75 (s0zstate1,_wn58,_wn61);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:44:30 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-1 Non-Inverting MUX with 0X Drive
// z = s ? i1 : i0
module mx21d0 (z, i0, i1, s);
	output z;
	input i0;
	input i1;
	input s;
`protect

	specify
		// Pin-to-pin timing.
	(i0 => z) = (0,0);
	(i1 => z) = (0,0);
	if(!i0&i1) (s => z) = (0,0);
	if(i0&!i1) (s => z) = (0,0);
	ifnone (s => z) = (0,0);
	endspecify

	// Gate-level description.
	p_mux21 _i0 (z, i1, i0, s);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:56 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-to-1 multiplexer
// z = s ? i1 : i0
module mx21d1 (z, i0, i1, s);
	output z;
	input i0;
	input i1;
	input s;
`protect

	specify
		// Pin-to-pin timing.
	(i0 => z) = (0,0);
	(i1 => z) = (0,0);
	if(!i0&i1) (s => z) = (0,0);
	if(i0&!i1) (s => z) = (0,0);
	ifnone (s => z) = (0,0);
	endspecify

	// Gate-level description.
	p_mux21 _i0 (z, i1, i0, s);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:58 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-1 Non-Inverting MUX with 2X Drive
// z = s ? i1 : i0
module mx21d2 (z, i0, i1, s);
	output z;
	input i0;
	input i1;
	input s;
`protect

	specify
		// Pin-to-pin timing.
	(i0 => z) = (0,0);
	(i1 => z) = (0,0);
	if(!i0&i1) (s => z) = (0,0);
	if(i0&!i1) (s => z) = (0,0);
	ifnone (s => z) = (0,0);
	endspecify

	// Gate-level description.
	p_mux21 _i0 (z, i1, i0, s);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:57 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-1 Non-Inverting MUX with 0X Drive
// z = (!s0 & !s1 & i0) | (s0 & !s1 & i1) | (s1 & i2)
module mx31d0 (z, i0, i1, i2, s0, s1);
	output z;
	input i0;
	input i1;
	input i2;
	input s0;
	input s1;
`protect

	specify
		// Pin-to-pin timing.
	if(!i0&i1&!i2) (s0 => z) = (0,0);
	if(!i0&i1&i2) (s0 => z) = (0,0);
	if(!i2) (i0 => z) = (0,0);
	if(!i2) (i1 => z) = (0,0);
	if((!i0&((i1&!s0)|!i1)|i0&!i1&s0)) (i2 => z) = (0,0);
	if((!i0&i1&s0|i0&((!i1&!s0)|i1))) (i2 => z) = (0,0);
	if(i0&!i1&!i2) (s0 => z) = (0,0);
	if(i0&!i1&i2) (s0 => z) = (0,0);
	if(i2) (i0 => z) = (0,0);
	if(i2) (i1 => z) = (0,0);
        if(i0&!i1&!s1) (s0 => z) = (0,0);
        if(i0&!i2&!s0) (s1 => z) = (0,0);
        if(!i1&i2&s0) (s1 => z) = (0,0);
        if(!i0&i2&!s0) (s1 => z) = (0,0);
        if(i1&!i2&s0) (s1 => z) = (0,0);
        if(!i0&i1&!s1) (s0 => z) = (0,0);
	ifnone (i0 => z) = (0,0);
	ifnone (i1 => z) = (0,0);
	ifnone (i2 => z) = (0,0);
	ifnone (s0 => z) = (0,0);
	ifnone (s1 => z) = (0,0);
	endspecify

	// Gate-level description.
	not _i1 (_n3,s0);
	not _i2 (_n4,s1);
	and _i3 (_n1,i0,_n3,_n4);
	and _i6 (_n5,i1,s0,_n4);
	and _i8 (_n8,s1,i2);
	or _i9 (z,_n1,_n5,_n8);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:57 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-1 Non-Inverting MUX with 1X Drive
// z = (!s0 & !s1 & i0) | (s0 & !s1 & i1) | (s1 & i2)
module mx31d1 (z, i0, i1, i2, s0, s1);
	output z;
	input i0;
	input i1;
	input i2;
	input s0;
	input s1;
`protect

	specify
		// Pin-to-pin timing.
	if(!i0&i1&!i2) (s0 => z) = (0,0);
	if(!i0&i1&i2) (s0 => z) = (0,0);
	if(!i2) (i0 => z) = (0,0);
	if(!i2) (i1 => z) = (0,0);
	if((!i0&((i1&!s0)|!i1)|i0&!i1&s0)) (i2 => z) = (0,0);
	if((!i0&i1&s0|i0&((!i1&!s0)|i1))) (i2 => z) = (0,0);
	if(i0&!i1&!i2) (s0 => z) = (0,0);
	if(i0&!i1&i2) (s0 => z) = (0,0);
	if(i2) (i0 => z) = (0,0);
	if(i2) (i1 => z) = (0,0);
        if(i0&!i1&!s1) (s0 => z) = (0,0);
        if(i0&!i2&!s0) (s1 => z) = (0,0);
        if(!i1&i2&s0) (s1 => z) = (0,0);
        if(!i0&i2&!s0) (s1 => z) = (0,0);
        if(i1&!i2&s0) (s1 => z) = (0,0);
        if(!i0&i1&!s1) (s0 => z) = (0,0);
	ifnone (i0 => z) = (0,0);
	ifnone (i1 => z) = (0,0);
	ifnone (i2 => z) = (0,0);
	ifnone (s0 => z) = (0,0);
	ifnone (s1 => z) = (0,0);
	endspecify

	// Gate-level description.
	not _i1 (_n3,s0);
	not _i2 (_n4,s1);
	and _i3 (_n1,i0,_n3,_n4);
	and _i6 (_n5,i1,s0,_n4);
	and _i8 (_n8,s1,i2);
	or _i9 (z,_n1,_n5,_n8);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:57 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-1 Non-Inverting MUX with 2X Drive
// z = (!s0 & !s1 & i0) | (s0 & !s1 & i1) | (s1 & i2)
module mx31d2 (z, i0, i1, i2, s0, s1);
	output z;
	input i0;
	input i1;
	input i2;
	input s0;
	input s1;
`protect

	specify
		// Pin-to-pin timing.
	if(!i0&i1&!i2) (s0 => z) = (0,0);
	if(!i0&i1&i2) (s0 => z) = (0,0);
	if(!i2) (i0 => z) = (0,0);
	if(!i2) (i1 => z) = (0,0);
	if((!i0&((i1&!s0)|!i1)|i0&!i1&s0)) (i2 => z) = (0,0);
	if((!i0&i1&s0|i0&((!i1&!s0)|i1))) (i2 => z) = (0,0);
	if(i0&!i1&!i2) (s0 => z) = (0,0);
	if(i0&!i1&i2) (s0 => z) = (0,0);
	if(i2) (i0 => z) = (0,0);
	if(i2) (i1 => z) = (0,0);
        if(i0&!i1&!s1) (s0 => z) = (0,0);
        if(i0&!i2&!s0) (s1 => z) = (0,0);
        if(!i1&i2&s0) (s1 => z) = (0,0);
        if(!i0&i2&!s0) (s1 => z) = (0,0);
        if(i1&!i2&s0) (s1 => z) = (0,0);
        if(!i0&i1&!s1) (s0 => z) = (0,0);
	ifnone (i0 => z) = (0,0);
	ifnone (i1 => z) = (0,0);
	ifnone (i2 => z) = (0,0);
	ifnone (s0 => z) = (0,0);
	ifnone (s1 => z) = (0,0);
	endspecify

	// Gate-level description.
	not _i1 (_n3,s0);
	not _i2 (_n4,s1);
	and _i3 (_n1,i0,_n3,_n4);
	and _i6 (_n5,i1,s0,_n4);
	and _i8 (_n8,s1,i2);
	or _i9 (z,_n1,_n5,_n8);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:59 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4-1 Non-inverting MUX with 0X Drive
// z = (!s0 & !s1 & i0) | (s0 & !s1 & i1) | (!s0 & s1 & i2) | (s0 & s1 & i3)
module mx41d0 (z, i0, i1, i2, i3, s0, s1);
	output z;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;
`protect
	wire s1zstate0, s1zstate1, s0zstate0, s0zstate1;

	specify
		// Pin-to-pin timing.
	(i0 => z) = (0,0);
	(i1 => z) = (0,0);
	(i2 => z) = (0,0);
	(i3 => z) = (0,0);
	if(s0zstate0) (s0 => z) = (0,0);
	if(s0zstate1) (s0 => z) = (0,0);
	if(s1zstate0) (s1 => z) = (0,0);
	if(s1zstate1) (s1 => z) = (0,0);
	if(i0&!i1&!s1) (s0 => z) = (0,0);
	if(i2&!i3&s1) (s0 => z) = (0,0);
	if(i0&!i2&!s0) (s1 => z) = (0,0);
	if(!i1&i3&s0) (s1 => z) = (0,0);
	if(!i0&i2&!s0) (s1 => z) = (0,0);
	if(i1&!i3&s0) (s1 => z) = (0,0);
	if(!i2&i3&s1) (s0 => z) = (0,0);
	if(!i0&i1&!s1) (s0 => z) = (0,0);
	ifnone (s0 => z) = (0,0);
	ifnone (s1 => z) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n2,s0);
	not _i1 (_n3,s1);
	and _i2 (_n1,i0,_n2,_n3);
	and _i4 (_n4,i1,s0,_n3);
	and _i6 (_n6,i2,_n2,s1);
	and _i7 (_n8,i3,s0,s1);
	or _i8 (z,_n1,_n4,_n6,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i3);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	not _wi5 (_wn9,i2);
	and _wi6 (_wn6,_wn7,_wn8,_wn9);
	and _wi9 (_wn15,i3,_wn7);
	or _wi11 (_wn14,_wn15,_wn2);
	and _wi12 (_wn12,_wn9,_wn14);
	and _wi14 (_wn18,s0,i2,_wn2);
	or _wi15 (_wn11,_wn12,_wn18);
	and _wi16 (_wn10,i1,_wn11);
	or _wi17 (_wn5,_wn6,_wn10);
	and _wi18 (_wn4,i0,_wn5);
	or _wi19 (s1zstate0,_wn1,_wn4);
	and _wi23 (_wn27,s0,_wn9,i3);
	and _wi26 (_wn31,_wn2,_wn7);
	or _wi27 (_wn30,_wn31,i3);
	and _wi28 (_wn29,i2,_wn30);
	or _wi29 (_wn26,_wn27,_wn29);
	and _wi30 (_wn24,_wn8,_wn26);
	and _wi32 (_wn34,_wn7,i1,i2);
	or _wi33 (_wn23,_wn24,_wn34);
	and _wi34 (_wn21,_wn3,_wn23);
	and _wi36 (_wn36,s0,i3,i0,_wn8);
	or _wi37 (s1zstate1,_wn21,_wn36);
	and _wi41 (_wn42,s1,i3,_wn8,_wn9);
	not _wi44 (_wn52,s1);
	and _wi45 (_wn50,_wn2,_wn52);
	or _wi46 (_wn49,_wn50,i3);
	and _wi47 (_wn47,_wn9,_wn49);
	and _wi49 (_wn53,i2,_wn52);
	or _wi50 (_wn46,_wn47,_wn53);
	and _wi51 (_wn45,i1,_wn46);
	or _wi52 (_wn41,_wn42,_wn45);
	and _wi53 (_wn39,_wn3,_wn41);
	and _wi55 (_wn55,s1,i3,i0,_wn9);
	or _wi56 (s0zstate0,_wn39,_wn55);
	and _wi59 (_wn58,s1,_wn2,_wn3,i2);
	and _wi63 (_wn66,_wn9,_wn52);
	and _wi65 (_wn71,i3,_wn52);
	or _wi67 (_wn70,_wn71,_wn2);
	and _wi68 (_wn69,i2,_wn70);
	or _wi69 (_wn65,_wn66,_wn69);
	and _wi70 (_wn63,_wn8,_wn65);
	and _wi72 (_wn74,s1,_wn2,i1,i2);
	or _wi73 (_wn62,_wn63,_wn74);
	and _wi74 (_wn61,i0,_wn62);
	or _wi75 (s0zstate1,_wn58,_wn61);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:11 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4-1 Non-inverting MUX with 1X Drive
// z = (!s0 & !s1 & i0) | (s0 & !s1 & i1) | (!s0 & s1 & i2) | (s0 & s1 & i3)
module mx41d1 (z, i0, i1, i2, i3, s0, s1);
	output z;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;
`protect
	wire s1zstate0, s1zstate1, s0zstate0, s0zstate1;

	specify
		// Pin-to-pin timing.
	(i0 => z) = (0,0);
	(i1 => z) = (0,0);
	(i2 => z) = (0,0);
	(i3 => z) = (0,0);
	if(s0zstate0) (s0 => z) = (0,0);
	if(s0zstate1) (s0 => z) = (0,0);
	if(s1zstate0) (s1 => z) = (0,0);
	if(s1zstate1) (s1 => z) = (0,0);
        if(i0&!i1&!s1) (s0 => z) = (0,0);
        if(i2&!i3&s1) (s0 => z) = (0,0);
        if(i0&!i2&!s0) (s1 => z) = (0,0);
        if(!i1&i3&s0) (s1 => z) = (0,0);
        if(!i0&i2&!s0) (s1 => z) = (0,0);
        if(i1&!i3&s0) (s1 => z) = (0,0);
        if(!i2&i3&s1) (s0 => z) = (0,0);
        if(!i0&i1&!s1) (s0 => z) = (0,0);
	ifnone (s0 => z) = (0,0);
	ifnone (s1 => z) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n2,s0);
	not _i1 (_n3,s1);
	and _i2 (_n1,i0,_n2,_n3);
	and _i4 (_n4,i1,s0,_n3);
	and _i6 (_n6,i2,_n2,s1);
	and _i7 (_n8,i3,s0,s1);
	or _i8 (z,_n1,_n4,_n6,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i3);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	not _wi5 (_wn9,i2);
	and _wi6 (_wn6,_wn7,_wn8,_wn9);
	and _wi9 (_wn15,i3,_wn7);
	or _wi11 (_wn14,_wn15,_wn2);
	and _wi12 (_wn12,_wn9,_wn14);
	and _wi14 (_wn18,s0,i2,_wn2);
	or _wi15 (_wn11,_wn12,_wn18);
	and _wi16 (_wn10,i1,_wn11);
	or _wi17 (_wn5,_wn6,_wn10);
	and _wi18 (_wn4,i0,_wn5);
	or _wi19 (s1zstate0,_wn1,_wn4);
	and _wi23 (_wn27,s0,_wn9,i3);
	and _wi26 (_wn31,_wn2,_wn7);
	or _wi27 (_wn30,_wn31,i3);
	and _wi28 (_wn29,i2,_wn30);
	or _wi29 (_wn26,_wn27,_wn29);
	and _wi30 (_wn24,_wn8,_wn26);
	and _wi32 (_wn34,_wn7,i1,i2);
	or _wi33 (_wn23,_wn24,_wn34);
	and _wi34 (_wn21,_wn3,_wn23);
	and _wi36 (_wn36,s0,i3,i0,_wn8);
	or _wi37 (s1zstate1,_wn21,_wn36);
	and _wi41 (_wn42,s1,i3,_wn8,_wn9);
	not _wi44 (_wn52,s1);
	and _wi45 (_wn50,_wn2,_wn52);
	or _wi46 (_wn49,_wn50,i3);
	and _wi47 (_wn47,_wn9,_wn49);
	and _wi49 (_wn53,i2,_wn52);
	or _wi50 (_wn46,_wn47,_wn53);
	and _wi51 (_wn45,i1,_wn46);
	or _wi52 (_wn41,_wn42,_wn45);
	and _wi53 (_wn39,_wn3,_wn41);
	and _wi55 (_wn55,s1,i3,i0,_wn9);
	or _wi56 (s0zstate0,_wn39,_wn55);
	and _wi59 (_wn58,s1,_wn2,_wn3,i2);
	and _wi63 (_wn66,_wn9,_wn52);
	and _wi65 (_wn71,i3,_wn52);
	or _wi67 (_wn70,_wn71,_wn2);
	and _wi68 (_wn69,i2,_wn70);
	or _wi69 (_wn65,_wn66,_wn69);
	and _wi70 (_wn63,_wn8,_wn65);
	and _wi72 (_wn74,s1,_wn2,i1,i2);
	or _wi73 (_wn62,_wn63,_wn74);
	and _wi74 (_wn61,i0,_wn62);
	or _wi75 (s0zstate1,_wn58,_wn61);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:36 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4-to-1 multiplexers
// z = !s0&!s1&i0 | s0&!s1&i1 | !s0&s1&i2 | s0&s1&i3
module mx41d2 (z, i0, i1, i2, i3, s0, s1);
	output z;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;
`protect
	wire s1zstate0, s1zstate1, s0zstate0, s0zstate1;

	specify
		// Pin-to-pin timing.
	(i0 => z) = (0,0);
	(i1 => z) = (0,0);
	(i2 => z) = (0,0);
	(i3 => z) = (0,0);
	if(s0zstate0) (s0 => z) = (0,0);
	if(s0zstate1) (s0 => z) = (0,0);
	if(s1zstate0) (s1 => z) = (0,0);
	if(s1zstate1) (s1 => z) = (0,0);
        if(i0&!i1&!s1) (s0 => z) = (0,0);
        if(i2&!i3&s1) (s0 => z) = (0,0);
        if(i0&!i2&!s0) (s1 => z) = (0,0);
        if(!i1&i3&s0) (s1 => z) = (0,0);
        if(!i0&i2&!s0) (s1 => z) = (0,0);
        if(i1&!i3&s0) (s1 => z) = (0,0);
        if(!i2&i3&s1) (s0 => z) = (0,0);
        if(!i0&i1&!s1) (s0 => z) = (0,0);
	ifnone (s0 => z) = (0,0);
	ifnone (s1 => z) = (0,0);
	endspecify

	// Gate-level description.
	not _i0 (_n2,s0);
	not _i1 (_n3,s1);
	and _i2 (_n1,i0,_n2,_n3);
	and _i4 (_n4,i1,s0,_n3);
	and _i6 (_n6,i2,_n2,s1);
	and _i7 (_n8,i3,s0,s1);
	or _i8 (z,_n1,_n4,_n6,_n8);

	// Timing check and state logic.
	not _wi0 (_wn2,i3);
	not _wi1 (_wn3,i0);
	and _wi2 (_wn1,s0,_wn2,_wn3,i1);
	not _wi3 (_wn7,s0);
	not _wi4 (_wn8,i1);
	not _wi5 (_wn9,i2);
	and _wi6 (_wn6,_wn7,_wn8,_wn9);
	and _wi9 (_wn15,i3,_wn7);
	or _wi11 (_wn14,_wn15,_wn2);
	and _wi12 (_wn12,_wn9,_wn14);
	and _wi14 (_wn18,s0,i2,_wn2);
	or _wi15 (_wn11,_wn12,_wn18);
	and _wi16 (_wn10,i1,_wn11);
	or _wi17 (_wn5,_wn6,_wn10);
	and _wi18 (_wn4,i0,_wn5);
	or _wi19 (s1zstate0,_wn1,_wn4);
	and _wi23 (_wn27,s0,_wn9,i3);
	and _wi26 (_wn31,_wn2,_wn7);
	or _wi27 (_wn30,_wn31,i3);
	and _wi28 (_wn29,i2,_wn30);
	or _wi29 (_wn26,_wn27,_wn29);
	and _wi30 (_wn24,_wn8,_wn26);
	and _wi32 (_wn34,_wn7,i1,i2);
	or _wi33 (_wn23,_wn24,_wn34);
	and _wi34 (_wn21,_wn3,_wn23);
	and _wi36 (_wn36,s0,i3,i0,_wn8);
	or _wi37 (s1zstate1,_wn21,_wn36);
	and _wi41 (_wn42,s1,i3,_wn8,_wn9);
	not _wi44 (_wn52,s1);
	and _wi45 (_wn50,_wn2,_wn52);
	or _wi46 (_wn49,_wn50,i3);
	and _wi47 (_wn47,_wn9,_wn49);
	and _wi49 (_wn53,i2,_wn52);
	or _wi50 (_wn46,_wn47,_wn53);
	and _wi51 (_wn45,i1,_wn46);
	or _wi52 (_wn41,_wn42,_wn45);
	and _wi53 (_wn39,_wn3,_wn41);
	and _wi55 (_wn55,s1,i3,i0,_wn9);
	or _wi56 (s0zstate0,_wn39,_wn55);
	and _wi59 (_wn58,s1,_wn2,_wn3,i2);
	and _wi63 (_wn66,_wn9,_wn52);
	and _wi65 (_wn71,i3,_wn52);
	or _wi67 (_wn70,_wn71,_wn2);
	and _wi68 (_wn69,i2,_wn70);
	or _wi69 (_wn65,_wn66,_wn69);
	and _wi70 (_wn63,_wn8,_wn65);
	and _wi72 (_wn74,s1,_wn2,i1,i2);
	or _wi73 (_wn62,_wn63,_wn74);
	and _wi74 (_wn61,i0,_wn62);
	or _wi75 (s0zstate1,_wn58,_wn61);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:13 rt=4.08m p=3.88m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NAND with 0X Drive
// zn = !(a1 & a2)
module nd02d0 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:38 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NAND with 1X Drive
// zn = !(a1 & a2)
module nd02d1 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:39:02 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// No Description Provided
// zn = !(a1 & a2)
module nd02d2 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:13 rt=4.08m p=3.88m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NAND with 3X Drive
// zn = !(a1 & a2)
module nd02d3 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:49 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NAND with 4X Drive
// zn = !(a1 & a2)
module nd02d4 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:25 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NAND with 0X Drive
// zn = !(a1 & a2 & a3)
module nd03d0 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:21 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NAND with 1X Drive
// zn = !(a1 & a2 & a3)
module nd03d1 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:26 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// No Description Provided
// zn = !(a1 & a2 & a3)
module nd03d2 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:27:00 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NAND with 3X Drive
// zn = !(a1 & a2 & a3)
module nd03d3 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:29 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NAND with 4X Drive
// zn = !(a1 & a2 & a3)
module nd03d4 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:25 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NAND with 0X Drive
// zn = !(a1 & a2 & a3 & a4)
module nd04d0 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:55 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NAND with 1X Drive
// zn = !(a1 & a2 & a3 & a4)
module nd04d1 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:26 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// No Description Provided
// zn = !(a1 & a2 & a3 & a4)
module nd04d2 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:25 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NAND with 3X Drive
// zn = !(a1 & a2 & a3 & a4)
module nd04d3 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:57 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NAND with 4X Drive
// zn = !(a1 & a2 & a3 & a4)
module nd04d4 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nand _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 0X Drive
// z = i
module ni01d0 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 1X Drive
// z = i
module ni01d1 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:30 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 2X Drive
// z = i
module ni01d2 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:23 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 3X Drive
// z = i
module ni01d3 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:59 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 4X Drive
// z = i
module ni01d4 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:22 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 6X Drive
// z = i
module ni01d6 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:59 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Non-Inverter Buffer with 8X Drive
// z = i
module ni01d8 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:56 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Non-Inverter Buffer with 12X Drive
// z = i
module ni01d12 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:29 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Non-Inverter Buffer with 16X Drive
// z = i
module ni01d16 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:22 rt=0.07m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// non-inverting buffer with 20X Drive
// z = i
module ni01d20 (z, i);
	output z;
	input i;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	endspecify

	// Gate-level description.
	buf _i0 (z,i);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:43 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NOR with 0X Drive
// zn = !(a1 | a2)
module nr02d0 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:55 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NOR with 1X Drive
// zn = !(a1 | a2)
module nr02d1 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:51:29 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NOR with 2X Drive
// zn = !(a1 | a2)
module nr02d2 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:35 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NOR with 3X Drive
// zn = !(a1 | a2)
module nr02d3 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:43 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input NOR with 4X Drive
// zn = !(a1 | a2)
module nr02d4 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:20 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NOR with 0X Drive
// zn = !(a1 | a2 | a3)
module nr03d0 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:48 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NOR with 1X Drive
// zn = !(a1 | a2 | a3)
module nr03d1 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:18 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NOR with 2X Drive
// zn = !(a1 | a2 | a3)
module nr03d2 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:25 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NOR with 3X Drive
// zn = !(a1 | a2 | a3)
module nr03d3 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:20 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input NOR with 4X Drive
// zn = !(a1 | a2 | a3)
module nr03d4 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:42 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NOR with 0X Drive
// zn = !(a1 | a2 | a3 | a4)
module nr04d0 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:41 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NOR with 1X Drive
// zn = !(a1 | a2 | a3 | a4)
module nr04d1 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:55 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// nor gate with 2X drive
// zn = !(a1|a2|a3|a4)
module nr04d2 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:54 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NOR with 3X Drive
// zn = !(a1 | a2 | a3 | a4)
module nr04d3 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:10 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input NOR with 4X Drive
// zn = !(a1 | a2 | a3 | a4)
module nr04d4 (zn, a1, a2, a3, a4);
	output zn;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(a4 => zn) = (0,0);
	endspecify

	// Gate-level description.
	nor _i0 (zn,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:26 rt=0.05m p=0.06m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Non-Inverting 3-State Buffer, Enable High, with 0X Drive
// z = oe ? i : 'z'
module nt01d0 (z, i, oe);
	output z;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oe => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif1 _i0 (z, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:54 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Non-Inverting 3-State Buffer, Enable High, with 1X Drive
// z = oe ? i : 'z'
module nt01d1 (z, i, oe);
	output z;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oe => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif1 _i0 (z, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:37 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-state non-inverting buffer with active high enable
// z = oe ? i : 'z'
module nt01d2 (z, i, oe);
	output z;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oe => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif1 _i0 (z, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:55 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// Non-Inverting 3-State Buffer, Enable High, with 4X Drive
// z = oe ? i : 'z'
module nt01d4 (z, i, oe);
	output z;
	input i;
	input oe;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oe => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif1 _i0 (z, i, oe);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:49 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-state non-inverting buffer with active low enable
// z = !oen ? i : 'z'
module nt02d0 (z, i, oen);
	output z;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oen => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif0 _i0 (z, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:49 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-state non-inverting buffer with active low enable
// z = !oen ? i : 'z'
module nt02d1 (z, i, oen);
	output z;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oen => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif0 _i0 (z, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:51 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-state non-inverting buffer with active low enable
// z = !oen ? i : 'z'
module nt02d2 (z, i, oen);
	output z;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oen => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif0 _i0 (z, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:30 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-state non-inverting buffer with active low enable
// z = !oen ? i : 'z'
module nt02d4 (z, i, oen);
	output z;
	input i;
	input oen;
`protect

	specify
		// Pin-to-pin timing.
	(i => z) = (0,0);
	(oen => z) = (0,0,0,0,0,0);
	endspecify

	// Gate-level description.
	bufif0 _i0 (z, i, oen);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:43:49 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-OR into 2-NAND with 0X drive
// zn = !((a1 | a2) & (b1 | b2))
module oa01d0 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:13 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-OR into 2-NAND with 1X drive
// zn = !((a1 | a2) & (b1 | b2))
module oa01d1 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:26 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-OR into 2-NAND with 2X drive
// zn = !((a1 | a2) & (b1 | b2))
module oa01d2 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:27 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 2-OR into 2-NAND with 4X drive
// zn = !((a1 | a2) & (b1 | b2))
module oa01d4 (zn, a1, a2, b1, b2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:51 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/3 or-and-invert
// zn = !((a1 | a2 | a3)&(b1 | b2 | b3))
module oa02d0 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire b3znstate0, b1znstate0, a2znstate0, b2znstate0, a3znstate0, a1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b3 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a1 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(a1&a2&a3) (b3 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a3znstate0) (a3 => zn) = (0,0);
	if(b1&b2&b3) (a1 => zn) = (0,0);
	if(b1&b2&b3) (a2 => zn) = (0,0);
	if(b1&b2&b3) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b3znstate0) (b3 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b3,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b3znstate0,_wn1,_wn8);
	or _wi21 (b1znstate0,_wn1,_wn8);
	not _wi22 (_wn24,b1);
	not _wi23 (_wn27,b2);
	and _wi24 (_wn26,_wn27,b3);
	not _wi25 (_wn29,b3);
	and _wi26 (_wn28,b2,_wn29);
	or _wi27 (_wn25,_wn26,_wn28);
	and _wi28 (_wn23,_wn24,_wn25);
	and _wi31 (_wn30,_wn29,b1,_wn27);
	or _wi32 (a2znstate0,_wn23,_wn30);
	or _wi43 (b2znstate0,_wn1,_wn8);
	or _wi54 (a3znstate0,_wn23,_wn30);
	or _wi65 (a1znstate0,_wn23,_wn30);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:51 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/3 or-and-invert
// zn = !((a1 | a2 | a3)&(b1 | b2 | b3))
module oa02d1 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire b3znstate0, b1znstate0, a2znstate0, b2znstate0, a3znstate0, a1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b3 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a1 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(a1&a2&a3) (b3 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a3znstate0) (a3 => zn) = (0,0);
	if(b1&b2&b3) (a1 => zn) = (0,0);
	if(b1&b2&b3) (a2 => zn) = (0,0);
	if(b1&b2&b3) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b3znstate0) (b3 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b3,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b3znstate0,_wn1,_wn8);
	or _wi21 (b1znstate0,_wn1,_wn8);
	not _wi22 (_wn24,b1);
	not _wi23 (_wn27,b2);
	and _wi24 (_wn26,_wn27,b3);
	not _wi25 (_wn29,b3);
	and _wi26 (_wn28,b2,_wn29);
	or _wi27 (_wn25,_wn26,_wn28);
	and _wi28 (_wn23,_wn24,_wn25);
	and _wi31 (_wn30,_wn29,b1,_wn27);
	or _wi32 (a2znstate0,_wn23,_wn30);
	or _wi43 (b2znstate0,_wn1,_wn8);
	or _wi54 (a3znstate0,_wn23,_wn30);
	or _wi65 (a1znstate0,_wn23,_wn30);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:03 rt=0.03m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/3 or-and-invert
// zn = !((a1 | a2 | a3)&(b1 | b2 | b3))
module oa02d2 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire b1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&((!a2&a3)|a2)|a1&!a2&!a3)) (b2 => zn) = (0,0);
	if((!a1&((!a2&a3)|a2)|a1&!a2&!a3)) (b3 => zn) = (0,0);
	if((!b1&((!b2&b3)|b2)|b1&!b2&!b3)) (a1 => zn) = (0,0);
	if((!b1&((!b2&b3)|b2)|b1&!b2&!b3)) (a2 => zn) = (0,0);
	if((!b1&((!b2&b3)|b2)|b1&!b2&!b3)) (a3 => zn) = (0,0);
	if(a1&((!a2&a3)|a2)) (b2 => zn) = (0,0);
	if(a1&((!a2&a3)|a2)) (b3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(b1&((!b2&b3)|b2)) (a1 => zn) = (0,0);
	if(b1&((!b2&b3)|b2)) (a2 => zn) = (0,0);
	if(b1&((!b2&b3)|b2)) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b3,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	or _wi3 (_wn3,_wn4,a2);
	and _wi4 (_wn1,_wn2,_wn3);
	not _wi5 (_wn9,a3);
	and _wi6 (_wn8,a2,_wn9);
	or _wi8 (_wn7,_wn8,_wn5);
	and _wi9 (_wn6,a1,_wn7);
	or _wi10 (b1znstate0,_wn1,_wn6);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:51 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/3 or-and-invert
// zn = !((a1 | a2 | a3)&(b1 | b2 | b3))
module oa02d4 (zn, a1, a2, a3, b1, b2, b3);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
	input b3;
`protect
	wire b3znstate0, b1znstate0, a2znstate0, b2znstate0, a3znstate0, a1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b3 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a1 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a2 => zn) = (0,0);
	if((!b1&b2&b3|b1&(!b2&b3|b2&!b3))) (a3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(a1&a2&a3) (b3 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a3znstate0) (a3 => zn) = (0,0);
	if(b1&b2&b3) (a1 => zn) = (0,0);
	if(b1&b2&b3) (a2 => zn) = (0,0);
	if(b1&b2&b3) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b3znstate0) (b3 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (b3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b3,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b3znstate0,_wn1,_wn8);
	or _wi21 (b1znstate0,_wn1,_wn8);
	not _wi22 (_wn24,b1);
	not _wi23 (_wn27,b2);
	and _wi24 (_wn26,_wn27,b3);
	not _wi25 (_wn29,b3);
	and _wi26 (_wn28,b2,_wn29);
	or _wi27 (_wn25,_wn26,_wn28);
	and _wi28 (_wn23,_wn24,_wn25);
	and _wi31 (_wn30,_wn29,b1,_wn27);
	or _wi32 (a2znstate0,_wn23,_wn30);
	or _wi43 (b2znstate0,_wn1,_wn8);
	or _wi54 (a3znstate0,_wn23,_wn30);
	or _wi65 (a1znstate0,_wn23,_wn30);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:11 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/1 or-and-invert
// zn = !((a1|a2)&(b1|b2)&c)
module oa03d0 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate0, cznstate1;

	specify
		// Pin-to-pin timing.
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&a2&b1&b2) (c => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(cznstate0) (c => zn) = (0,0);
	if(cznstate1) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (cznstate0,_wn1,_wn8);
	and _wi16 (_wn16,b2,b1,_wn2,a2);
	and _wi18 (_wn20,b2,_wn9,b1);
	and _wi24 (_wn22,a2,_wn3);
	or _wi25 (_wn19,_wn20,_wn22);
	and _wi26 (_wn18,a1,_wn19);
	or _wi27 (cznstate1,_wn16,_wn18);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:11 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/1 or-and-invert
// zn = !((a1|a2)&(b1|b2)&c)
module oa03d1 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate0, cznstate1;

	specify
		// Pin-to-pin timing.
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&a2&b1&b2) (c => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(cznstate0) (c => zn) = (0,0);
	if(cznstate1) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (cznstate0,_wn1,_wn8);
	and _wi16 (_wn16,b2,b1,_wn2,a2);
	and _wi18 (_wn20,b2,_wn9,b1);
	and _wi24 (_wn22,a2,_wn3);
	or _wi25 (_wn19,_wn20,_wn22);
	and _wi26 (_wn18,a1,_wn19);
	or _wi27 (cznstate1,_wn16,_wn18);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:17:28 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/1 or-and-invert
// zn = !((a1|a2)&(b1|b2)&c)
module oa03d2 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate0;

	specify
		// Pin-to-pin timing.
	(b1 => zn) = (0,0);
	(b2 => zn) = (0,0);
	if((!a1&a2&b1&b2|a1&b1)) (c => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(cznstate0) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	and _wi8 (_wn8,b2,a1,_wn5);
	or _wi9 (cznstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:11 rt=0.02m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/1 or-and-invert
// zn = !((a1|a2)&(b1|b2)&c)
module oa03d4 (zn, a1, a2, b1, b2, c);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c;
`protect
	wire cznstate0, cznstate1;

	specify
		// Pin-to-pin timing.
	if((!a1&a2|a1&!a2)) (b1 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if(a1&a2&b1&b2) (c => zn) = (0,0);
	if(a1&a2) (b1 => zn) = (0,0);
	if(a1&a2) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(cznstate0) (c => zn) = (0,0);
	if(cznstate1) (c => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,c,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (cznstate0,_wn1,_wn8);
	and _wi16 (_wn16,b2,b1,_wn2,a2);
	and _wi18 (_wn20,b2,_wn9,b1);
	and _wi24 (_wn22,a2,_wn3);
	or _wi25 (_wn19,_wn20,_wn22);
	and _wi26 (_wn18,a1,_wn19);
	or _wi27 (cznstate1,_wn16,_wn18);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:57 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-NAND with 0x drive
// zn = !((a1 | a2) & b)
module oa04d0 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if(a1&a2) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:06 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-NAND with 1X drive
// zn = !((a1 | a2) & b)
module oa04d1 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if(a1&a2) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:36:31 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/1 or-and-invert
// zn = !((a1|a2)&b)
module oa04d2 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:44:24 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-NAND with 4X drive
// zn = !((a1 | a2) & b)
module oa04d4 (zn, a1, a2, b);
	output zn;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:32 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 3-NAND with 0x drive
// zn = !((a1 | a2) & b & c)
module oa05d0 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (c => zn) = (0,0);
	if(a1&a2) (b => zn) = (0,0);
	if(a1&a2) (c => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:44:32 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 3-NAND with 1x drive
// zn = !((a1 | a2) & b & c)
module oa05d1 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (c => zn) = (0,0);
	if(a1&a2) (b => zn) = (0,0);
	if(a1&a2) (c => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	ifnone (c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:44:34 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 3-NAND with 2x drive
// zn = !((a1 | a2) & b & c)
module oa05d2 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(b => zn) = (0,0);
	(c => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:35:29 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 3-NAND with 4x drive
// zn = !((a1 | a2) & b & c)
module oa05d4 (zn, a1, a2, b, c);
	output zn;
	input a1;
	input a2;
	input b;
	input c;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(c => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (b => zn) = (0,0);
	if(a1&a2) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	nand _i1 (zn,c,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:44 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/2 or-and-invert
// zn = !((a1|a2)&(b1|b2)&(c1|c2))
module oa06d0 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, c2znstate1, b1znstate0, a2znstate0, b1znstate1, c1znstate0, a2znstate1, b2znstate0, c1znstate1;
	wire b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(a1&a2&b1&b2) (c1 => zn) = (0,0);
	if(a1&a2&b1&b2) (c2 => zn) = (0,0);
	if(a1&a2&c1&c2) (b1 => zn) = (0,0);
	if(a1&a2&c1&c2) (b2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1&b2&c1&c2) (a1 => zn) = (0,0);
	if(b1&b2&c1&c2) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate1) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate1) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	or _i2 (_n3,c1,c2);
	nand _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (c2znstate0,_wn1,_wn8);
	and _wi16 (_wn16,c2,c1,_wn5,b2);
	and _wi18 (_wn20,c2,_wn7,c1);
	not _wi19 (_wn25,c1);
	and _wi20 (_wn24,_wn25,c2);
	not _wi21 (_wn27,c2);
	and _wi22 (_wn26,c1,_wn27);
	or _wi23 (_wn23,_wn24,_wn26);
	and _wi24 (_wn22,b2,_wn23);
	or _wi25 (_wn19,_wn20,_wn22);
	and _wi26 (_wn18,b1,_wn19);
	or _wi27 (a1znstate1,_wn16,_wn18);
	and _wi29 (_wn29,b2,b1,_wn2,a2);
	and _wi31 (_wn33,b2,_wn9,b1);
	and _wi37 (_wn35,a2,_wn3);
	or _wi38 (_wn32,_wn33,_wn35);
	and _wi39 (_wn31,a1,_wn32);
	or _wi40 (c2znstate1,_wn29,_wn31);
	and _wi47 (_wn42,_wn2,a2,_wn23);
	and _wi54 (_wn49,a1,_wn9,_wn23);
	or _wi55 (b1znstate0,_wn42,_wn49);
	and _wi62 (_wn57,_wn5,b2,_wn23);
	and _wi69 (_wn64,b1,_wn7,_wn23);
	or _wi70 (a2znstate0,_wn57,_wn64);
	and _wi72 (_wn72,c2,c1,_wn2,a2);
	and _wi74 (_wn76,c2,_wn9,c1);
	and _wi80 (_wn78,a2,_wn23);
	or _wi81 (_wn75,_wn76,_wn78);
	and _wi82 (_wn74,a1,_wn75);
	or _wi83 (b1znstate1,_wn72,_wn74);
	or _wi98 (c1znstate0,_wn1,_wn8);
	or _wi111 (a2znstate1,_wn16,_wn18);
	or _wi126 (b2znstate0,_wn42,_wn49);
	or _wi139 (c1znstate1,_wn29,_wn31);
	or _wi152 (b2znstate1,_wn72,_wn74);
	or _wi167 (a1znstate0,_wn57,_wn64);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:44 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/2 or-and-invert
// zn = !((a1|a2)&(b1|b2)&(c1|c2))
module oa06d1 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, c2znstate1, b1znstate0, a2znstate0, b1znstate1, c1znstate0, a2znstate1, b2znstate0, c1znstate1;
	wire b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(a1&a2&b1&b2) (c1 => zn) = (0,0);
	if(a1&a2&b1&b2) (c2 => zn) = (0,0);
	if(a1&a2&c1&c2) (b1 => zn) = (0,0);
	if(a1&a2&c1&c2) (b2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1&b2&c1&c2) (a1 => zn) = (0,0);
	if(b1&b2&c1&c2) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate1) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate1) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	or _i2 (_n3,c1,c2);
	nand _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (c2znstate0,_wn1,_wn8);
	and _wi16 (_wn16,c2,c1,_wn5,b2);
	and _wi18 (_wn20,c2,_wn7,c1);
	not _wi19 (_wn25,c1);
	and _wi20 (_wn24,_wn25,c2);
	not _wi21 (_wn27,c2);
	and _wi22 (_wn26,c1,_wn27);
	or _wi23 (_wn23,_wn24,_wn26);
	and _wi24 (_wn22,b2,_wn23);
	or _wi25 (_wn19,_wn20,_wn22);
	and _wi26 (_wn18,b1,_wn19);
	or _wi27 (a1znstate1,_wn16,_wn18);
	and _wi29 (_wn29,b2,b1,_wn2,a2);
	and _wi31 (_wn33,b2,_wn9,b1);
	and _wi37 (_wn35,a2,_wn3);
	or _wi38 (_wn32,_wn33,_wn35);
	and _wi39 (_wn31,a1,_wn32);
	or _wi40 (c2znstate1,_wn29,_wn31);
	and _wi47 (_wn42,_wn2,a2,_wn23);
	and _wi54 (_wn49,a1,_wn9,_wn23);
	or _wi55 (b1znstate0,_wn42,_wn49);
	and _wi62 (_wn57,_wn5,b2,_wn23);
	and _wi69 (_wn64,b1,_wn7,_wn23);
	or _wi70 (a2znstate0,_wn57,_wn64);
	and _wi72 (_wn72,c2,c1,_wn2,a2);
	and _wi74 (_wn76,c2,_wn9,c1);
	and _wi80 (_wn78,a2,_wn23);
	or _wi81 (_wn75,_wn76,_wn78);
	and _wi82 (_wn74,a1,_wn75);
	or _wi83 (b1znstate1,_wn72,_wn74);
	or _wi98 (c1znstate0,_wn1,_wn8);
	or _wi111 (a2znstate1,_wn16,_wn18);
	or _wi126 (b2znstate0,_wn42,_wn49);
	or _wi139 (c1znstate1,_wn29,_wn31);
	or _wi152 (b2znstate1,_wn72,_wn74);
	or _wi167 (a1znstate0,_wn57,_wn64);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:00 rt=0.03m p=0.03m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/2 or-and-invert
// zn = !((a1|a2)&(b1|b2)&(c1|c2))
module oa06d2 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, c2znstate1, b1znstate0, a2znstate0, b1znstate1, a2znstate1, c1znstate0, b2znstate0, c1znstate1;
	wire b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate1) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate1) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	or _i2 (_n3,c1,c2);
	nand _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,b2);
	not _wi1 (_wn3,a1);
	and _wi2 (_wn1,_wn2,b1,_wn3,a2);
	not _wi3 (_wn7,a2);
	not _wi4 (_wn10,b1);
	and _wi5 (_wn9,_wn10,b2);
	and _wi7 (_wn11,b1,_wn2);
	or _wi8 (_wn8,_wn9,_wn11);
	and _wi9 (_wn6,_wn7,_wn8);
	and _wi11 (_wn13,_wn2,a2,b1);
	or _wi12 (_wn5,_wn6,_wn13);
	and _wi13 (_wn4,a1,_wn5);
	or _wi14 (c2znstate0,_wn1,_wn4);
	and _wi16 (_wn16,c2,_wn10,b2);
	and _wi18 (_wn20,c2,_wn2,c1);
	not _wi19 (_wn25,c1);
	and _wi20 (_wn24,_wn25,c2);
	or _wi21 (_wn23,_wn24,c1);
	and _wi22 (_wn22,b2,_wn23);
	or _wi23 (_wn19,_wn20,_wn22);
	and _wi24 (_wn18,b1,_wn19);
	or _wi25 (a1znstate1,_wn16,_wn18);
	and _wi27 (_wn27,b2,_wn3,a2);
	and _wi29 (_wn31,b2,_wn7,b1);
	and _wi30 (_wn33,a2,b2);
	or _wi31 (_wn30,_wn31,_wn33);
	and _wi32 (_wn29,a1,_wn30);
	or _wi33 (c2znstate1,_wn27,_wn29);
	not _wi34 (_wn36,c2);
	and _wi36 (_wn35,_wn36,c1,_wn3,a2);
	and _wi41 (_wn45,c1,_wn36);
	or _wi42 (_wn42,_wn24,_wn45);
	and _wi43 (_wn40,_wn7,_wn42);
	and _wi45 (_wn47,_wn36,a2,c1);
	or _wi46 (_wn39,_wn40,_wn47);
	and _wi47 (_wn38,a1,_wn39);
	or _wi48 (b1znstate0,_wn35,_wn38);
	and _wi51 (_wn50,_wn36,c1,_wn10,b2);
	and _wi56 (_wn53,b1,_wn2,_wn23);
	or _wi57 (a2znstate0,_wn50,_wn53);
	and _wi59 (_wn59,c2,_wn3,a2);
	and _wi61 (_wn63,c2,_wn7,c1);
	and _wi62 (_wn65,a2,c2);
	or _wi63 (_wn62,_wn63,_wn65);
	and _wi64 (_wn61,a1,_wn62);
	or _wi65 (b1znstate1,_wn59,_wn61);
	and _wi71 (_wn69,b1,b2,_wn23);
	or _wi72 (a2znstate1,_wn16,_wn69);
	and _wi82 (_wn77,a1,_wn7,_wn8);
	or _wi83 (c1znstate0,_wn1,_wn77);
	or _wi98 (b2znstate0,_wn35,_wn38);
	or _wi105 (_wn107,_wn9,b1);
	and _wi106 (_wn106,a2,_wn107);
	or _wi107 (_wn103,_wn31,_wn106);
	and _wi108 (_wn102,a1,_wn103);
	or _wi109 (c1znstate1,_wn27,_wn102);
	or _wi117 (b2znstate1,_wn59,_wn61);
	and _wi127 (_wn122,b1,_wn2,_wn42);
	or _wi128 (a1znstate0,_wn50,_wn122);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:33:44 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2/2/2 or-and-invert
// zn = !((a1|a2)&(b1|b2)&(c1|c2))
module oa06d4 (zn, a1, a2, b1, b2, c1, c2);
	output zn;
	input a1;
	input a2;
	input b1;
	input b2;
	input c1;
	input c2;
`protect
	wire c2znstate0, a1znstate1, c2znstate1, b1znstate0, a2znstate0, b1znstate1, c1znstate0, a2znstate1, b2znstate0, c1znstate1;
	wire b2znstate1, a1znstate0;

	specify
		// Pin-to-pin timing.
	if(a1&a2&b1&b2) (c1 => zn) = (0,0);
	if(a1&a2&b1&b2) (c2 => zn) = (0,0);
	if(a1&a2&c1&c2) (b1 => zn) = (0,0);
	if(a1&a2&c1&c2) (b2 => zn) = (0,0);
	if(a1znstate0) (a1 => zn) = (0,0);
	if(a1znstate1) (a1 => zn) = (0,0);
	if(a2znstate0) (a2 => zn) = (0,0);
	if(a2znstate1) (a2 => zn) = (0,0);
	if(b1&b2&c1&c2) (a1 => zn) = (0,0);
	if(b1&b2&c1&c2) (a2 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b1znstate1) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	if(b2znstate1) (b2 => zn) = (0,0);
	if(c1znstate0) (c1 => zn) = (0,0);
	if(c1znstate1) (c1 => zn) = (0,0);
	if(c2znstate0) (c2 => zn) = (0,0);
	if(c2znstate1) (c2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	ifnone (c1 => zn) = (0,0);
	ifnone (c2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	or _i1 (_n2,b1,b2);
	or _i2 (_n3,c1,c2);
	nand _i3 (zn,_n1,_n2,_n3);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,b1);
	and _wi2 (_wn4,_wn5,b2);
	not _wi3 (_wn7,b2);
	and _wi4 (_wn6,b1,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,a2,_wn3);
	not _wi7 (_wn9,a2);
	and _wi13 (_wn8,a1,_wn9,_wn3);
	or _wi14 (c2znstate0,_wn1,_wn8);
	and _wi16 (_wn16,c2,c1,_wn5,b2);
	and _wi18 (_wn20,c2,_wn7,c1);
	not _wi19 (_wn25,c1);
	and _wi20 (_wn24,_wn25,c2);
	not _wi21 (_wn27,c2);
	and _wi22 (_wn26,c1,_wn27);
	or _wi23 (_wn23,_wn24,_wn26);
	and _wi24 (_wn22,b2,_wn23);
	or _wi25 (_wn19,_wn20,_wn22);
	and _wi26 (_wn18,b1,_wn19);
	or _wi27 (a1znstate1,_wn16,_wn18);
	and _wi29 (_wn29,b2,b1,_wn2,a2);
	and _wi31 (_wn33,b2,_wn9,b1);
	and _wi37 (_wn35,a2,_wn3);
	or _wi38 (_wn32,_wn33,_wn35);
	and _wi39 (_wn31,a1,_wn32);
	or _wi40 (c2znstate1,_wn29,_wn31);
	and _wi47 (_wn42,_wn2,a2,_wn23);
	and _wi54 (_wn49,a1,_wn9,_wn23);
	or _wi55 (b1znstate0,_wn42,_wn49);
	and _wi62 (_wn57,_wn5,b2,_wn23);
	and _wi69 (_wn64,b1,_wn7,_wn23);
	or _wi70 (a2znstate0,_wn57,_wn64);
	and _wi72 (_wn72,c2,c1,_wn2,a2);
	and _wi74 (_wn76,c2,_wn9,c1);
	and _wi80 (_wn78,a2,_wn23);
	or _wi81 (_wn75,_wn76,_wn78);
	and _wi82 (_wn74,a1,_wn75);
	or _wi83 (b1znstate1,_wn72,_wn74);
	or _wi98 (c1znstate0,_wn1,_wn8);
	or _wi111 (a2znstate1,_wn16,_wn18);
	or _wi126 (b2znstate0,_wn42,_wn49);
	or _wi139 (c1znstate1,_wn29,_wn31);
	or _wi152 (b2znstate1,_wn72,_wn74);
	or _wi167 (a1znstate0,_wn57,_wn64);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:59 rt=0.03m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/2 or-and-invert
// zn = !((a1|a2|a3)&(b1|b2))
module oa07d0 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate0, b1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(b1&b2) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b2znstate0,_wn1,_wn8);
	or _wi21 (b1znstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:59 rt=0.03m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/2 or-and-invert
// zn = !((a1|a2|a3)&(b1|b2))
module oa07d1 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate0, b1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(b1&b2) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b2znstate0,_wn1,_wn8);
	or _wi21 (b1znstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:49:33 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/2 or-and-invert
// zn = !((a1|a2|a3)&(b1|b2))
module oa07d2 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate0;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if((!a1&(!a2&a3|a2&!a3)|a1&!a3)) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&a3)) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	or _wi3 (_wn3,_wn4,a2);
	and _wi4 (_wn1,_wn2,_wn3);
	not _wi5 (_wn9,a3);
	and _wi6 (_wn8,a2,_wn9);
	or _wi8 (_wn7,_wn8,_wn5);
	and _wi9 (_wn6,a1,_wn7);
	or _wi10 (b2znstate0,_wn1,_wn6);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:26:59 rt=0.03m p=0.02m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/2 or-and-invert
// zn = !((a1|a2|a3)&(b1|b2))
module oa07d4 (zn, a1, a2, a3, b1, b2);
	output zn;
	input a1;
	input a2;
	input a3;
	input b1;
	input b2;
`protect
	wire b2znstate0, b1znstate0;

	specify
		// Pin-to-pin timing.
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b1 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a1 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a2 => zn) = (0,0);
	if((!b1&b2|b1&!b2)) (a3 => zn) = (0,0);
	if(a1&a2&a3) (b1 => zn) = (0,0);
	if(a1&a2&a3) (b2 => zn) = (0,0);
	if(b1&b2) (a1 => zn) = (0,0);
	if(b1&b2) (a2 => zn) = (0,0);
	if(b1&b2) (a3 => zn) = (0,0);
	if(b1znstate0) (b1 => zn) = (0,0);
	if(b2znstate0) (b2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	ifnone (b1 => zn) = (0,0);
	ifnone (b2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	or _i1 (_n2,b1,b2);
	nand _i2 (zn,_n1,_n2);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (b2znstate0,_wn1,_wn8);
	or _wi21 (b1znstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:55 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/1 or-and-invert
// zn = !((a1|a2|a3)&b)
module oa08d0 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect
	wire bznstate0;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b => zn) = (0,0);
	if(a1&a2&a3) (b => zn) = (0,0);
	if(bznstate0) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	nand _i1 (zn,_n1,b);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (bznstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:55 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/1 or-and-invert
// zn = !((a1|a2|a3)&b)
module oa08d1 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect
	wire bznstate0;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b => zn) = (0,0);
	if(a1&a2&a3) (b => zn) = (0,0);
	if(bznstate0) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	nand _i1 (zn,_n1,b);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (bznstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:14 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/1 or-and-invert
// zn = !((a1|a2|a3)&b)
module oa08d2 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	(b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	nand _i1 (zn,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:55 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3/1 or-and-invert
// zn = !((a1|a2|a3)&b)
module oa08d4 (zn, a1, a2, a3, b);
	output zn;
	input a1;
	input a2;
	input a3;
	input b;
`protect
	wire bznstate0;

	specify
		// Pin-to-pin timing.
	(a1 => zn) = (0,0);
	(a2 => zn) = (0,0);
	(a3 => zn) = (0,0);
	if((!a1&a2&a3|a1&(!a2&a3|a2&!a3))) (b => zn) = (0,0);
	if(a1&a2&a3) (b => zn) = (0,0);
	if(bznstate0) (b => zn) = (0,0);
	ifnone (b => zn) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a3,a1,a2);
	nand _i1 (zn,_n1,b);

	// Timing check and state logic.
	not _wi0 (_wn2,a1);
	not _wi1 (_wn5,a2);
	and _wi2 (_wn4,_wn5,a3);
	not _wi3 (_wn7,a3);
	and _wi4 (_wn6,a2,_wn7);
	or _wi5 (_wn3,_wn4,_wn6);
	and _wi6 (_wn1,_wn2,_wn3);
	and _wi9 (_wn8,_wn7,a1,_wn5);
	or _wi10 (bznstate0,_wn1,_wn8);
`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:24 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-AND with 0x drive
// z = (a1 | a2) & b
module oa14d0 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(b => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	and _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:24 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-AND with 1x drive
// z = (a1 | a2) & b
module oa14d1 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(b => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	and _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:58 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-AND with 2x drive
// z = (a1 | a2) & b
module oa14d2 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(b => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	and _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:38:52 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2-OR into 2-AND with 4x drive
// z = (a1 | a2) & b
module oa14d4 (z, a1, a2, b);
	output z;
	input a1;
	input a2;
	input b;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	if((!a1&a2|a1&!a2)) (b => z) = (0,0);
	if(a1&a2) (b => z) = (0,0);
	ifnone (b => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (_n1,a1,a2);
	and _i1 (z,_n1,b);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:12 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input OR with 0X Drive
// z = a1 | a2
module or02d0 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:12 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input OR with 1X Drive
// z = a1 | a2
module or02d1 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:37 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// or gate with 2x drive
// z = a1 | a2
module or02d2 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:44:28 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input OR with 3X Drive
// z = a1 | a2
module or02d3 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:14 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input OR with 4X Drive
// z = a1 | a2
module or02d4 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:41 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input OR with 0X Drive
// z = a1 | a2 | a3
module or03d0 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:38 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// or gate with 1x drive
// z = a1 | a2 |a3
module or03d1 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:22 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input OR with 2X Drive
// z = a1 | a2 | a3
module or03d2 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:01 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input OR with 3X Drive
// z = a1 | a2 | a3
module or03d3 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:18:28 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input OR with 4X Drive
// z = a1 | a2 | a3
module or03d4 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:48 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input OR with 0X Drive
// z = a1 | a2 | a3 | a4
module or04d0 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:19:24 rt=0.02m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input OR with 1X Drive
// z = a1 | a2 | a3 | a4
module or04d1 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:52 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// or gate with 2x drive
// z = a1 | a2 |a3 |a4
module or04d2 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:48 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input OR with 3X Drive
// z = a1 | a2 | a3 | a4
module or04d3 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:39 rt=0.00m p=0.01m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 4 Input OR with 4X Drive
// z = a1 | a2 | a3 | a4
module or04d4 (z, a1, a2, a3, a4);
	output z;
	input a1;
	input a2;
	input a3;
	input a4;
`protect

	specify
		// Pin-to-pin timing.
	(a1 => z) = (0,0);
	(a2 => z) = (0,0);
	(a3 => z) = (0,0);
	(a4 => z) = (0,0);
	endspecify

	// Gate-level description.
	or _i0 (z,a4,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:11 rt=0.10m p=0.07m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// busholder
// dummy = z
module rp01d1 (z);
	inout z;
wire io_wire;
`protect

	specify
		endspecify

	// Gate-level description.
	buf(weak0, weak1) _i0 (z, io_wire);
	buf		  _i1 (io_wire, z);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:24 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive NOR with 0X Drive
// zn = !(a1 ^ a2)
module xn02d0 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => zn) = (0,0);
	if(!a2) (a1 => zn) = (0,0);
	if(a1) (a2 => zn) = (0,0);
	if(a2) (a1 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:02 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive NOR with 1X Drive
// zn = !(a1 ^ a2)
module xn02d1 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => zn) = (0,0);
	if(!a2) (a1 => zn) = (0,0);
	if(a1) (a2 => zn) = (0,0);
	if(a2) (a1 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:46:21 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive NOR with 2X Drive
// zn = !(a1 ^ a2)
module xn02d2 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => zn) = (0,0);
	if(!a2) (a1 => zn) = (0,0);
	if(a1) (a2 => zn) = (0,0);
	if(a2) (a1 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:38 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive NOR with 4X Drive
// zn = !(a1 ^ a2)
module xn02d4 (zn, a1, a2);
	output zn;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => zn) = (0,0);
	if(!a2) (a1 => zn) = (0,0);
	if(a1) (a2 => zn) = (0,0);
	if(a2) (a1 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:53 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input Exclusive NOR with 0X Drive
// zn = !((a1 ^ a2) ^ a3)
module xn03d0 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	if((!a1&!a2|a1&a2)) (a3 => zn) = (0,0);
	if((!a1&!a3|a1&a3)) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (a3 => zn) = (0,0);
	if((!a1&a3|a1&!a3)) (a2 => zn) = (0,0);
	if((!a2&!a3|a2&a3)) (a1 => zn) = (0,0);
	if((!a2&a3|a2&!a3)) (a1 => zn) = (0,0);
        if (a2&a3) (a1 => zn) = (0,0);
        if (a2&!a3) (a1 => zn) = (0,0);
        if (!a2&a3) (a1 => zn) = (0,0);
        if (!a2&!a3) (a1 => zn) = (0,0);
        if (a1&a3) (a2 => zn) = (0,0);
        if (a1&!a3) (a2 => zn) = (0,0);
        if (!a1&a3) (a2 => zn) = (0,0);
        if (!a1&!a3) (a2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:11 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-input exclusive OR with 1X Drive
// zn = !((a1^a2)^a3)
module xn03d1 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	if((!a1&!a2|a1&a2)) (a3 => zn) = (0,0);
	if((!a1&!a3|a1&a3)) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (a3 => zn) = (0,0);
	if((!a1&a3|a1&!a3)) (a2 => zn) = (0,0);
	if((!a2&!a3|a2&a3)) (a1 => zn) = (0,0);
	if((!a2&a3|a2&!a3)) (a1 => zn) = (0,0);
        if (a2&a3) (a1 => zn) = (0,0);
        if (a2&!a3) (a1 => zn) = (0,0);
        if (!a2&a3) (a1 => zn) = (0,0);
        if (!a2&!a3) (a1 => zn) = (0,0);
        if (a1&a3) (a2 => zn) = (0,0);
        if (a1&!a3) (a2 => zn) = (0,0);
        if (!a1&a3) (a2 => zn) = (0,0);
        if (!a1&!a3) (a2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:08 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input Exclusive NOR with 2X Drive
// zn = !((a1 ^ a2) ^ a3)
module xn03d2 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	if((!a1&!a2|a1&a2)) (a3 => zn) = (0,0);
	if((!a1&!a3|a1&a3)) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (a3 => zn) = (0,0);
	if((!a1&a3|a1&!a3)) (a2 => zn) = (0,0);
	if((!a2&!a3|a2&a3)) (a1 => zn) = (0,0);
	if((!a2&a3|a2&!a3)) (a1 => zn) = (0,0);
        if (a2&a3) (a1 => zn) = (0,0);
        if (a2&!a3) (a1 => zn) = (0,0);
        if (!a2&a3) (a1 => zn) = (0,0);
        if (!a2&!a3) (a1 => zn) = (0,0);
        if (a1&a3) (a2 => zn) = (0,0);
        if (a1&!a3) (a2 => zn) = (0,0);
        if (!a1&a3) (a2 => zn) = (0,0);
        if (!a1&!a3) (a2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:34:53 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input Exclusive NOR with 4X Drive
// zn = !((a1 ^ a2) ^ a3)
module xn03d4 (zn, a1, a2, a3);
	output zn;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	if((!a1&!a2|a1&a2)) (a3 => zn) = (0,0);
	if((!a1&!a3|a1&a3)) (a2 => zn) = (0,0);
	if((!a1&a2|a1&!a2)) (a3 => zn) = (0,0);
	if((!a1&a3|a1&!a3)) (a2 => zn) = (0,0);
	if((!a2&!a3|a2&a3)) (a1 => zn) = (0,0);
	if((!a2&a3|a2&!a3)) (a1 => zn) = (0,0);
        if (a2&a3) (a1 => zn) = (0,0);
        if (a2&!a3) (a1 => zn) = (0,0);
        if (!a2&a3) (a1 => zn) = (0,0);
        if (!a2&!a3) (a1 => zn) = (0,0);
        if (a1&a3) (a2 => zn) = (0,0);
        if (a1&!a3) (a2 => zn) = (0,0);
        if (!a1&a3) (a2 => zn) = (0,0);
        if (!a1&!a3) (a2 => zn) = (0,0);
	ifnone (a1 => zn) = (0,0);
	ifnone (a2 => zn) = (0,0);
	ifnone (a3 => zn) = (0,0);
	endspecify

	// Gate-level description.
	xnor _i0 (zn,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:47:03 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive OR with 0X Drive
// z = a1 ^ a2
module xo02d0 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => z) = (0,0);
	if(!a2) (a1 => z) = (0,0);
	if(a1) (a2 => z) = (0,0);
	if(a2) (a1 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:24:40 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive OR with 1X Drive
// z = a1 ^ a2
module xo02d1 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => z) = (0,0);
	if(!a2) (a1 => z) = (0,0);
	if(a1) (a2 => z) = (0,0);
	if(a2) (a1 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:07 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive OR with 2X Drive
// z = a1 ^ a2
module xo02d2 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => z) = (0,0);
	if(!a2) (a1 => z) = (0,0);
	if(a1) (a2 => z) = (0,0);
	if(a2) (a1 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:48:38 rt=0.02m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 2 Input Exclusive OR with 4X Drive
// z = a1 ^ a2
module xo02d4 (z, a1, a2);
	output z;
	input a1;
	input a2;
`protect

	specify
		// Pin-to-pin timing.
	if(!a1) (a2 => z) = (0,0);
	if(!a2) (a1 => z) = (0,0);
	if(a1) (a2 => z) = (0,0);
	if(a2) (a1 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:59 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input Exclusive OR with 0X Drive
// z = (a1 ^ a2) ^ a3
module xo03d0 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	if(a2&a3) (a1 => z) = (0,0);
	if(a2&!a3) (a1 => z) = (0,0);
	if(!a2&a3) (a1 => z) = (0,0);
	if(!a2&!a3) (a1 => z) = (0,0);
	if(!a1&a2) (a3 => z) = (0,0);
	if(a1&!a2) (a3 => z) = (0,0);
	if((!a1&!a2|a1&a2)) (a3 => z) = (0,0);
	if((!a1&a2|a1&!a2)) (a3 => z) = (0,0);
	if((!a1&!a3|a1&a3)) (a2 => z) = (0,0);
	if((!a2&!a3|a2&a3)) (a1 => z) = (0,0);
	if((!a2&a3|a2&!a3)) (a1 => z) = (0,0);
	if(a1&a3) (a2 => z) = (0,0);
	if(a1&!a3) (a2 => z) = (0,0);
	if(!a1&a3) (a2 => z) = (0,0);
	if(!a1&!a3) (a2 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	ifnone (a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:39:01 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3-input exclusive OR with 1X Drive
// z = (a1^a2)^a3
module xo03d1 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
        if(a2&a3) (a1 => z) = (0,0);
        if(a2&!a3) (a1 => z) = (0,0);
        if(!a2&a3) (a1 => z) = (0,0);
        if(!a2&!a3) (a1 => z) = (0,0);
        if(!a1&a2) (a3 => z) = (0,0);
        if(a1&!a2) (a3 => z) = (0,0);
        if((!a1&!a2|a1&a2)) (a3 => z) = (0,0);
        if((!a1&a2|a1&!a2)) (a3 => z) = (0,0);
        if((!a1&!a3|a1&a3)) (a2 => z) = (0,0);
        if((!a2&!a3|a2&a3)) (a1 => z) = (0,0);
        if((!a2&a3|a2&!a3)) (a1 => z) = (0,0);
        if(a1&a3) (a2 => z) = (0,0);
        if(a1&!a3) (a2 => z) = (0,0);
        if(!a1&a3) (a2 => z) = (0,0);
        if(!a1&!a3) (a2 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	ifnone (a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:52:16 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input Exclusive OR with 2X Drive
// z = (a1 ^ a2) ^ a3
module xo03d2 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
        if(a2&a3) (a1 => z) = (0,0);
        if(a2&!a3) (a1 => z) = (0,0);
        if(!a2&a3) (a1 => z) = (0,0);
        if(!a2&!a3) (a1 => z) = (0,0);
        if(!a1&a2) (a3 => z) = (0,0);
        if(a1&!a2) (a3 => z) = (0,0);
        if((!a1&!a2|a1&a2)) (a3 => z) = (0,0);
        if((!a1&a2|a1&!a2)) (a3 => z) = (0,0);
        if((!a1&!a3|a1&a3)) (a2 => z) = (0,0);
        if((!a2&!a3|a2&a3)) (a1 => z) = (0,0);
        if((!a2&a3|a2&!a3)) (a1 => z) = (0,0);
        if(a1&a3) (a2 => z) = (0,0);
        if(a1&!a3) (a2 => z) = (0,0);
        if(!a1&a3) (a2 => z) = (0,0);
        if(!a1&!a3) (a2 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	ifnone (a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine
// Completed, no errors, 05/03/05 19:37:59 rt=0.00m p=0.00m c=0.00m
// This model is Copyright (c) 1994-2005 Library Technologies, Inc., its use requires a license from Library Technologies, Inc.
// verigen patch-level 1.138-s 04/22/05 17:43:45
`celldefine
// 3 Input Exclusive OR with 4X Drive
// z = (a1 ^ a2) ^ a3
module xo03d4 (z, a1, a2, a3);
	output z;
	input a1;
	input a2;
	input a3;
`protect

	specify
		// Pin-to-pin timing.
	if(a2&a3) (a1 => z) = (0,0);
	if(a2&!a3) (a1 => z) = (0,0);
	if(!a2&a3) (a1 => z) = (0,0);
	if(!a2&!a3) (a1 => z) = (0,0);
	if(!a1&a2) (a3 => z) = (0,0);
	if(a1&!a2) (a3 => z) = (0,0);
	if((!a1&!a2|a1&a2)) (a3 => z) = (0,0);
	if((!a1&a2|a1&!a2)) (a3 => z) = (0,0);
	if((!a1&!a3|a1&a3)) (a2 => z) = (0,0);
	if((!a2&!a3|a2&a3)) (a1 => z) = (0,0);
	if((!a2&a3|a2&!a3)) (a1 => z) = (0,0);
	if(a1&a3) (a2 => z) = (0,0);
	if(a1&!a3) (a2 => z) = (0,0);
	if(!a1&a3) (a2 => z) = (0,0);
	if(!a1&!a3) (a2 => z) = (0,0);
	ifnone (a1 => z) = (0,0);
	ifnone (a2 => z) = (0,0);
	ifnone (a3 => z) = (0,0);
	endspecify

	// Gate-level description.
	xor _i0 (z,a3,a1,a2);

`endprotect
endmodule
`endcelldefine

`celldefine
module tiehi (y);
output y;

  buf I0(y, 1'b1);

endmodule //tiehi
`endcelldefine

`celldefine
module tielo (y);
output y;

  buf I0(y, 1'b0);

endmodule //tielo
`endcelldefine

primitive tsmc_dlsfq ( q, d, c, r, s, notifier );
    output q;
    reg  q;
    input  d,c,r,s,notifier;
    table
    // d    c    r    s notifier  : qtn    :  qtn+1
     (?1)   1    1    1    ?     :  ?        :   1;
       1  (?1)   1    1    ?     :  ?        :   1;
       1    1  (?1)   1    ?     :  ?        :   1;
       1    1    1  (?1)   ?     :  ?        :   1;
     (?0)   1    1    1    ?     :  ?        :   0;
       0  (?1)   1    1    ?     :  ?        :   0;
       0    1  (?1)   1    ?     :  ?        :   0;
       0    1    1  (?1)   ?     :  ?        :   0;
       ?    0   (?1)  1    ?     :  ?        :   -;
       ?    0    1   (?1)  ?     :  ?        :   -;
       1  (?x)   1    1    ?     :  1        :   -;
       0  (?x)   1    1    ?     :  0        :   -;
      (?1)  x    1    1    ?     :  1        :   -;
      (?0)  x    1    1    ?     :  0        :   -;
       0    x   (?1)  1    ?     :  0        :   -; // added 9/22/94
       1    x    1   (?1)  ?     :  1        :   -; // added 9/22/94
       *    0    1    1    ?     :  ?        :   -;
       0    0    x    1    ?     :  0        :   -; // added 3/12/91
       1    0    x    1    ?     :  0        :   -; // added 9/28/94
       0    1    x    1    ?     :  ?        :   0;
       0    x    x    1    ?     :  0        :   -;
       x    0    x    1    ?     :  0        :   -;
       1    0    1    x    ?     :  1        :   -; // added 4/12/95
       0    0    1    x    ?     :  1        :   -; // added 4/12/95
       1    1    1    x    ?     :  ?        :   1; // added 4/12/95
       1    x    1    x    ?     :  1        :   -; // added 4/12/95
       x    0    1    x    ?     :  1        :   -; // added 4/12/95
       ?    ?    1    0    ?     :  ?        :   1;
       ?    ?    0    1    ?     :  ?        :   0;
//       ?    ?    0    0    ?     :  ?        :   1; // set & reset
//       ?    ?    0    x    ?     :  ?        :   x; // set & reset
//       ?    ?    x    0    ?     :  ?        :   1; // set & reset
       ?    ?    0    0    ?     :  ?        :   x; // set & reset
       ?    ?    0    x    ?     :  ?        :   x; // set & reset
       ?    ?    x    0    ?     :  ?        :   x; // set & reset
       b  (?0)   1    1    ?     :  ?        :   -;
       ?    ?    ?    ?    *     :  ?        :   x; // Output an x if the
                                                    //notifier changes
    endtable
endprimitive

primitive tsmc_dla (q, d, e, cdn, sdn, notifier);
   output q;
   input d, e, cdn, sdn, notifier;
   reg q;
   table
// d  e cdn sdn  noti : qt : qt+1
//
   1  1   1   1   ?   : ?  :  1  ; // Latch 1
   0  1   1   1   ?   : ?  :  0  ; // Latch 0
   0 (10) 1   1   ?   : ?  :  0  ; // Latch 0 after falling edge
   1 (10) 1   1   ?   : ?  :  1  ; // Latch 1 after falling edge
   *  0   ?   ?   ?   : ?  :  -  ; // no changes
   ?  ?   ?   0   ?   : ?  :  1  ; // preset to 1
   ?  0   1   *   ?   : 1  :  1  ;
   1  ?   1   *   ?   : 1  :  1  ;
   1  *   1   ?   ?   : 1  :  1  ;
   ?  ?   0   1   ?   : ?  :  0  ; // reset to 0
   ?  0   *   1   ?   : 0  :  0  ;
   0  ?   *   1   ?   : 0  :  0  ;
   0  *   ?   1   ?   : 0  :  0  ;
   ?  ?   ?   ?   *   : ?  :  x  ; // toggle notifier
   endtable
endprimitive
// Completed, no errors, 05/03/05 19:51:32 rt=0.02m p=0.00m c=0.00m
`ifdef libtechudps
`else
`define libtechudps 1
primitive p_mux21 (q, data1, data0, dselect);
    output q;
    input data1, data0, dselect;

// FUNCTION :  TWO TO ONE MULTIPLEXER
table
//data1 data0 dselect :   q
	0     0       ?   :   0 ;
	1     1       ?   :   1 ;

	0     ?       1   :   0 ;
	1     ?       1   :   1 ;

	?     0       0   :   0 ;
	?     1       0   :   1 ;
endtable
endprimitive

primitive p_sr(Q,S,R,notifier);
output Q; reg Q;
input S,R, notifier;
// set-reset latch, set dominant
table
// S    R notifier : Qt : Qt+1
   0    0 ?        : ?  : - ;
   0    1 ?        : ?  : 0 ;
   1    0 ?        : ?  : 1 ;
   1    1 ?        : ?  : 1 ;
   1    x ?        : ?  : 1 ;
   x    0 ?        : 1  : 1 ;
   0    x ?        : 0  : 0 ;
   ?    ? *        : ?  : x ;
endtable
endprimitive

primitive p_rs(Q,S,R,notifier);
output Q; reg Q;
input S,R, notifier;
// set-reset latch, reset dominant
table
// S    R notifier : Qt : Qt+1
   0    0 ?        : ?  : - ;
   0    1 ?        : ?  : 0 ;
   1    0 ?        : ?  : 1 ;
   1    1 ?        : ?  : 0 ;
   1    x ?        : ?  : 1 ;
   x    0 ?        : 1  : 1 ;
   0    x ?        : 0  : 0 ;
   ?    ? *        : ?  : x ;
endtable
endprimitive

primitive p_latch(Q,D,G,notifier);
output Q; reg Q;
input D,G,notifier;
table
	// D  G No   : Qt  : Qt+1
	   ?  0 ?   : ?   : - ;  // clock disabled
	   0  1 ?   : ?   : 0 ;  // clock enabled
	   1  1 ?   : ?   : 1 ;  // transparent data
	   1  x ?   : 1   : 1 ;  // reducing pessimism
	   0  x ?   : 0   : 0 ;
	   ?  n ?   : ?   : - ;
	   ?  ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchr(Q,D,G,R,notifier);
output Q; reg Q;
input D,G,R,notifier;
table
	// D  G R No   : Qt  : Qt+1
	   ?  0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 ?   : ?   : 1 ;  // transparent data
	   1  x 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 ?   : 0   : 0 ;
	   ?  n 0 ?   : ?   : - ;
	   ?  ? 1 ?   : ?   : 0 ;  // clear
	   0  1 x ?   : ?   : 0 ;  // red pessimism
	   0  ? x ?   : 0   : 0 ;
	   ?  0 x ?   : 0   : 0 ;
	   ?  ? ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchs(Q,D,G,S,notifier);
output Q; reg Q;
input D,G,S,notifier;
table
	// D  G S No   : Qt  : Qt+1
	   ?  0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 ?   : ?   : 1 ;  // transparent data
	   1  x 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 ?   : 0   : 0 ;
	   ?  n 0 ?   : ?   : - ;
	   ?  ? 1 ?   : ?   : 1 ;  // set
	   0  1 x ?   : ?   : 0 ;  // red pessimism
	   0  ? x ?   : 0   : 0 ;
	   ?  0 x ?   : 0   : 0 ;
	   ?  ? ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchsr(Q,D,G,S,R,notifier);
output Q; reg Q;
input D,G,S,R,notifier; // set dominant
table
	// D  G S R No  : Qt  : Qt+1
	   ?  0 0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 0 ?   : ?   : 1 ;  // transparent data
	   ?  ? 0 1 ?   : ?   : 0 ;  // clear
	   ?  ? 1 ? ?   : ?   : 1 ;  // set overrides
	   1  x 0 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 0 ?   : 0   : 0 ;
	   0  1 0 x ?   : ?   : 0 ;  // red pessimism
	   0  ? 0 x ?   : 0   : 0 ;
	   1  1 x 0 ?   : ?   : 1 ;
	   1  ? x 0 ?   : 1   : 1 ;

	   ?  n 0 0 ?   : ?   : - ;
	   ?  ? ? ? *   : ?   : x ;
endtable
endprimitive

primitive p_latchrs(Q,D,G,S,R,notifier);
	output Q; reg Q;
	input D,G,S,R,notifier; // reset dominant
table
	// D  G S R No  : Qt  : Qt+1
	   ?  0 0 0 ?   : ?   : - ;  // clock disabled
	   0  1 0 0 ?   : ?   : 0 ;  // clock enabled
	   1  1 0 0 ?   : ?   : 1 ;  // transparent data
	   ?  ? 1 0 ?   : ?   : 1 ;  // set
	   ?  ? ? 1 ?   : ?   : 0 ;  // reset overrides
	   1  x 0 0 ?   : 1   : 1 ;  // reducing pessimism
	   0  x 0 0 ?   : 0   : 0 ;
	   0  1 0 x ?   : ?   : 0 ;
	   0  ? 0 x ?   : 0   : 0 ;
	   1  1 x 0 ?   : ?   : 1 ;
	   1  ? x 0 ?   : 1   : 1 ;

	   ?  n 0 0 ?   : ?   : - ;
	   ?  ? ? ? *   : ?   : x ;
endtable
endprimitive

// POSITIVE EDGE TRIGGERED D FLIP-FLOP
primitive p_ff  (Q, D, CP,notifier);
    output Q;  reg    Q;
    input  D, CP,notifier;

    table
    //  D   CP     No :   Qt  :   Qt+1
        1   (01)   ?  :   ?   :   1;  // clocked data
        0   (01)   ?  :   ?   :   0;
        1   (x1)   ?  :   1   :   1;  // reducing pessimism
        0   (x1)   ?  :   0   :   0;
        1   (0x)   ?  :   1   :   1;
        0   (0x)   ?  :   0   :   0;
        ?   (1x)   ?  :   ?   :   -;  // no change on falling edge
        ?   (?0)   ?  :   ?   :   -;

        *    ?     ?  :   ?   :   -;  // ignore edges on data
		?    ?     *  :   ?   :   x;
    endtable
endprimitive

primitive p_ffr  (Q, D, CP, R, notifier);
    output Q;  reg    Q;
    input  D, CP, R, notifier;

    table
    //  D   CP      R No :   Qt  :   Qt+1

        1   (01)    0  ? :   ?   :   1;  // clocked data
        0   (01)    0  ? :   ?   :   0;

        0   (01)    x  ? :   ?   :   0;  // pessimism
        0    ?      x  ? :   0   :   0;  // pessimism

        1    0      x  ? :   0   :   0;  // pessimism
        1    x    (?x) ? :   0   :   0;  // pessimism
        1    1    (?x) ? :   0   :   0;  // pessimism

        x    0      x  ? :   0   :   0;  // pessimism
        x    x    (?x) ? :   0   :   0;  // pessimism
        x    1    (?x) ? :   0   :   0;  // pessimism

        1   (x1)    0  ? :   1   :   1;  // reducing pessimism
        0   (x1)    0  ? :   0   :   0;
        1   (0x)    0  ? :   1   :   1;
        0   (0x)    0  ? :   0   :   0;

        ?   ?       1  ? :   ?   :   0;  // asynchronous clear

        ?   (?0)    ?  ? :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?  ? :   ?   :   -;  // ignore falling clock
        *    ?      ?  ? :   ?   :   -;  // ignore the edges on data

        ?    ?    (?0) ? :   ?   :   -;  // ignore the edges on clear

		?    ?      ?  * :   ?   :   x;
    endtable
endprimitive


primitive p_ffrs (Q, D, CP, R, S, notifier);
    output Q;  reg    Q;
    input  D, CP, R, S,notifier;
    table
    //  D   CP      R   S    No  :   Qt  :   Qt+1
        1   (01)    0   0    ?   :   ?   :   1;  // clocked data
        1   (01)    0   x    ?   :   ?   :   1;  // pessimism

        1    ?      0   x    ?   :   1   :   1;  // pessimism

        0    0      0   x    ?   :   1   :   1;  // pessimism
        0    x      0 (?x)   ?   :   1   :   1;  // pessimism
        0    1      0 (?x)   ?   :   1   :   1;  // pessimism

        x    0      0   x    ?   :   1   :   1;  // pessimism
        x    x      0 (?x)   ?   :   1   :   1;  // pessimism
        x    1      0 (?x)   ?   :   1   :   1;  // pessimism

        0   (01)    0   0    ?   :   ?   :   0;  // clocked data
        0   (01)    x   0    ?   :   ?   :   0;  // pessimism

        0    ?      x   0    ?   :   0   :   0;  // pessimism

        1    0      x   0    ?   :   0   :   0;  // pessimism
        1    x    (?x)  0    ?   :   0   :   0;  // pessimism
        1    1    (?x)  0    ?   :   0   :   0;  // pessimism

        x    0      x   0    ?   :   0   :   0;  // pessimism
        x    x    (?x)  0    ?   :   0   :   0;  // pessimism
        x    1    (?x)  0    ?   :   0   :   0;  // pessimism

        1   (x1)    0   0    ?   :   1   :   1;  // reducing pessimism
        0   (x1)    0   0    ?   :   0   :   0;
        1   (0x)    0   0    ?   :   1   :   1;
        0   (0x)    0   0    ?   :   0   :   0;

        ?   ?       1   ?    ?   :   ?   :   0;  // asynchronous clear
        ?   ?       0   1    ?   :   ?   :   1;  // asynchronous set

        ?   (?0)    ?   ?    ?   :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?   ?    ?   :   ?   :   -;  // ignore falling clock
        *    ?      ?   ?    ?   :   ?   :   -;  // ignore data edges

        ?   ?     (?0)  0    ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?  (?0)  ?   :   ?   :   -;  // set and clear

        ?   ?       ?   ?    *   :   ?   :   x;
    endtable
endprimitive

primitive p_ffrs_nb (Q, D, CP, R, S, notifier);
    output Q;  reg    Q;
    input  D, CP, R, S,notifier;
    table
    //  D   CP      R   S    No  :   Qt  :   Qt+1
        1   (01)    0   0    ?   :   ?   :   1;  // clocked data
        1   (01)    0   x    ?   :   ?   :   1;  // pessimism

        1    ?      0   x    ?   :   1   :   1;  // pessimism

        0    0      0   x    ?   :   1   :   1;  // pessimism
        0    x      0 (?x)   ?   :   1   :   1;  // pessimism
        0    1      0 (?x)   ?   :   1   :   1;  // pessimism

        x    0      0   x    ?   :   1   :   1;  // pessimism
        x    x      0 (?x)   ?   :   1   :   1;  // pessimism
        x    1      0 (?x)   ?   :   1   :   1;  // pessimism

        0   (01)    0   0    ?   :   ?   :   0;  // clocked data
        0   (01)    x   0    ?   :   ?   :   0;  // pessimism

        0    ?      x   0    ?   :   0   :   0;  // pessimism

        1    0      x   0    ?   :   0   :   0;  // pessimism
        1    x    (?x)  0    ?   :   0   :   0;  // pessimism
        1    1    (?x)  0    ?   :   0   :   0;  // pessimism

        x    0      x   0    ?   :   0   :   0;  // pessimism
        x    x    (?x)  0    ?   :   0   :   0;  // pessimism
        x    1    (?x)  0    ?   :   0   :   0;  // pessimism

        1   (x1)    0   0    ?   :   1   :   1;  // reducing pessimism
        0   (x1)    0   0    ?   :   0   :   0;
        1   (0x)    0   0    ?   :   1   :   1;
        0   (0x)    0   0    ?   :   0   :   0;

        ?   ?       ?   1    ?   :   ?   :   1;  // asynchronous set
        ?   ?       1   0    ?   :   ?   :   0;  // asynchronous clear

        ?   (?0)    ?   ?    ?   :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?   ?    ?   :   ?   :   -;  // ignore falling clock
        *    ?      ?   ?    ?   :   ?   :   -;  // ignore data edges

        ?   ?     (?0)  0    ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?  (?0)  ?   :   ?   :   -;  // set and clear

        ?   ?       ?   ?    *   :   ?   :   x;
    endtable
endprimitive

primitive p_ffsr (Q, D, CP, R, S, notifier);
    output Q;  reg    Q;
    input D, CP, R, S,notifier;
    table
    //  D   CP      R   S      No  :   Qt  :   Qt+1
        1   (01)    0   0      ?   :   ?   :   1;  // clocked data
        1   (01)    0   x      ?   :   ?   :   1;  // pessimism

        1    ?      0   x      ?   :   1   :   1;  // pessimism

        0    0      0   x      ?   :   1   :   1;  // pessimism
        0    x      0 (?x)     ?   :   1   :   1;  // pessimism
        0    1      0 (?x)     ?   :   1   :   1;  // pessimism

        x    0      0   x      ?   :   1   :   1;  // pessimism
        x    x      0 (?x)     ?   :   1   :   1;  // pessimism
        x    1      0 (?x)     ?   :   1   :   1;  // pessimism

        0   (01)    0   0      ?   :   ?   :   0;  // clocked data
        0   (01)    x   0      ?   :   ?   :   0;  // pessimism

        0    ?      x   0      ?   :   0   :   0;  // pessimism

        1    0      x   0      ?   :   0   :   0;  // pessimism
        1    x    (?x)  0      ?   :   0   :   0;  // pessimism
        1    1    (?x)  0      ?   :   0   :   0;  // pessimism

        x    0      x   0      ?   :   0   :   0;  // pessimism
        x    x    (?x)  0      ?   :   0   :   0;  // pessimism
        x    1    (?x)  0      ?   :   0   :   0;  // pessimism

        1   (x1)    0   0      ?   :   1   :   1;  // reducing pessimism
        0   (x1)    0   0      ?   :   0   :   0;
        1   (0x)    0   0      ?   :   1   :   1;
        0   (0x)    0   0      ?   :   0   :   0;

        ?   ?       1   0      ?   :   ?   :   0;  // asynchronous clear
        ?   ?       ?   1      ?   :   ?   :   1;  // asynchronous set

        ?   (?0)    ?   ?      ?   :   ?   :   -;  //ignore falling clock
        ?   (1x)    ?   ?      ?   :   ?   :   -;  //ignore falling clock
        *    ?      ?   ?      ?   :   ?   :   -;  // ignore data edges

        ?   ?     (?0)  0      ?   :   ?   :   -;  // ignore the edges on
        ?   ?       ?  (?0)    ?   :   ?   :   -;  // set and clear

        ?   ?       ?   ?      *   :   ?   :   x;
    endtable
endprimitive

primitive p_ffs (Q, D, CP, S, notifier);
    output Q;  reg    Q;
    input  D, CP, S, notifier;
    table
    //  D   CP      S     No   :   Qt  :   Qt+1

        1   (01)    0     ?    :   ?   :   1;  // clocked data
        0   (01)    0     ?    :   ?   :   0;
        1   (01)    x     ?    :   ?   :   1;  // reducing pessimism
        1    ?      x     ?    :   1   :   1;  // pessimism

        0    0      x     ?    :   1   :   1;  // pessimism
        0    x    (?x)    ?    :   1   :   1;  // pessimism
        0    1    (?x)    ?    :   1   :   1;  // pessimism

        x    0      x     ?    :   1   :   1;  // pessimism
        x    x    (?x)    ?    :   1   :   1;  // pessimism
        x    1    (?x)    ?    :   1   :   1;  // pessimism

        1   (x1)    0     ?    :   1   :   1;  // reducing pessimism
        0   (x1)    0     ?    :   0   :   0;
        1   (0x)    0     ?    :   1   :   1;
        0   (0x)    0     ?    :   0   :   0;

        ?    ?      1     ?    :   ?   :   1;  // asynchronous clear

        ?   (?0)    ?     ?    :   ?   :   -;  // ignore falling clock
        ?   (1x)    ?     ?    :   ?   :   -;  // ignore falling clock
        *    ?      ?     ?    :   ?   :   -;  // ignore the data edges

        ?   ?     (?0)    ?    :   ?   :   -;  // ignore the edges on set

        ?   ?       ?     *    :   ?   :   x;

    endtable
endprimitive

primitive ip_sr(Q,SB,RB,notifier);
output Q; reg Q;
input SB,RB, notifier;
// set-reset latch, set dominant
table
// SB    RB notifier : Qt : Qt+1
   1 1 ? : ? : -;
   1 0 ? : ? : 0;
   0 1 ? : ? : 1;
   0 0 ? : ? : 1;
   0 x ? : ? : 1;
   x 1 ? : 1 : 1;
   1 x ? : 0 : 0;
   ? ? * : ? : x;
endtable
endprimitive

primitive ip_rs(Q,SB,RB,notifier);
output Q; reg Q;
input SB,RB, notifier;
// set-reset latch, reset dominant
table
// SB    RB notifier : Qt : Qt+1
   1 1 ? : ? : -;
   1 0 ? : ? : 0;
   0 1 ? : ? : 1;
   0 0 ? : ? : 0;
   0 x ? : ? : 1;
   x 1 ? : 1 : 1;
   1 x ? : 0 : 0;
   ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchr(Q,D,G,RB,notifier);
output Q; reg Q;
input D,G,RB,notifier;
table
	// D  G RB No   : Qt  : Qt+1
	   ? 0 1 ? : ? : -;  // clock disabled
	   0 1 1 ? : ? : 0;  // clock enabled
	   1 1 1 ? : ? : 1;  // transparent data
	   1 x 1 ? : 1 : 1;  // reducing pessimism
	   0 x 1 ? : 0 : 0;
	   ? n 1 ? : ? : -;
	   ? ? 0 ? : ? : 0;  // clear
	   0 1 x ? : ? : 0;  // red pessimism
	   0 ? x ? : 0 : 0;
	   ? 0 x ? : 0 : 0;
	   ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchs(Q,D,G,SB,notifier);
output Q; reg Q;
input D,G,SB,notifier;
table
	// D  G SB No   : Qt  : Qt+1
	   ? 0 1 ? : ? : -;  // clock disabled
	   0 1 1 ? : ? : 0;  // clock enabled
	   1 1 1 ? : ? : 1;  // transparent data
	   1 x 1 ? : 1 : 1;  // reducing pessimism
	   0 x 1 ? : 0 : 0;
	   ? n 1 ? : ? : -;
	   ? ? 0 ? : ? : 1;  // set
	   0 1 x ? : ? : 0;  // red pessimism
	   0 ? x ? : 0 : 0;
	   ? 0 x ? : 0 : 0;
	   ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchsr(Q,D,G,SB,RB,notifier);
output Q; reg Q;
input D,G,SB,RB,notifier; // set dominant
table
	// D  G SB RB No  : Qt  : Qt+1
	   ? 0 1 1 ? : ? : -;  // clock disabled
	   0 1 1 1 ? : ? : 0;  // clock enabled
	   1 1 1 1 ? : ? : 1;  // transparent data
	   ? ? 1 0 ? : ? : 0;  // clear
	   ? ? 0 ? ? : ? : 1;  // set overrides
	   1 x 1 1 ? : 1 : 1;  // reducing pessimism
	   0 x 1 1 ? : 0 : 0;
	   0 1 1 x ? : ? : 0;  // red pessimism
	   0 ? 1 x ? : 0 : 0;
	   1 1 x 1 ? : ? : 1;
	   1 ? x 1 ? : 1 : 1;

	   ? n 1 1 ? : ? : -;
	   ? ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_latchrs(Q,D,G,SB,RB,notifier);
	output Q; reg Q;
	input D,G,SB,RB,notifier; // reset dominant
table
	// D  G SB RB No  : Qt  : Qt+1
	   ? 0 0 1 ? : ? : -;  // clock disabled
	   0 1 0 1 ? : ? : 0;  // clock enabled
	   1 1 0 1 ? : ? : 1;  // transparent data
	   ? ? 1 1 ? : ? : 1;  // set
	   ? ? ? 0 ? : ? : 0;  // reset overrides
	   1 x 0 1 ? : 1 : 1;  // reducing pessimism
	   0 x 0 1 ? : 0 : 0;
	   0 1 0 x ? : ? : 0;
	   0 ? 0 x ? : 0 : 0;
	   1 1 x 1 ? : ? : 1;
	   1 ? x 1 ? : 1 : 1;

	   ? n 0 1 ? : ? : -;
	   ? ? ? ? * : ? : x;
endtable
endprimitive

primitive ip_ffr  (Q, D, CP, RB, notifier);
    output Q;  reg    Q;
    input  D, CP, RB, notifier;

    table
    //  D   CP      RB No :   Qt  :   Qt+1

        1 (01) 0 ? : ? : 1;  // clocked data
        0 (01) 0 ? : ? : 0;

        0 (01) x ? : ? : 0;  // pessimism
        0 ? x ? : 0 : 0;  // pessimism

        1 0 x ? : 0 : 0;  // pessimism
        1 x (?x) ? : 0 : 0;  // pessimism
        1 1 (?x) ? : 0 : 0;  // pessimism

        x 0 x ? : 0 : 0;  // pessimism
        x x (?x) ? : 0 : 0;  // pessimism
        x 1 (?x) ? : 0 : 0;  // pessimism

        1 (x1) 0 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 ? : 0 : 0;
        1 (0x) 0 ? : 1 : 1;
        0 (0x) 0 ? : 0 : 0;

        ? ? 1 ? : ? : 0;  // asynchronous clear

        ? (?0) ? ? : ? : -;  // ignore falling clock
        ? (1x) ? ? : ? : -;  // ignore falling clock
        * ? ? ? : ? : -;  // ignore the edges on data

        ? ? (?0) ? : ? : -;  // ignore the edges on clear

		? ? ? * : ? : x;
    endtable
endprimitive


primitive ip_ffrs (Q, D, CP, RB, SB, notifier);
    output Q;  reg    Q;
    input  D, CP, RB, SB,notifier;
    table
    //  D   CP      RB   SB    No  :   Qt  :   Qt+1
        1 (01) 0 1 ? : ? : 1;  // clocked data
        1 (01) 0 x ? : ? : 1;  // pessimism

        1 ? 0 x ? : 1 : 1;  // pessimism

        0 0 0 x ? : 1 : 1;  // pessimism
        0 x 0 (?x) ? : 1 : 1;  // pessimism
        0 1 0 (?x) ? : 1 : 1;  // pessimism

        x 0 0 x ? : 1 : 1;  // pessimism
        x x 0 (?x) ? : 1 : 1;  // pessimism
        x 1 0 (?x) ? : 1 : 1;  // pessimism

        0 (01) 0 1 ? : ? : 0;  // clocked data
        0 (01) x 1 ? : ? : 0;  // pessimism

        0 ? x 1 ? : 0 : 0;  // pessimism

        1 0 x 1 ? : 0 : 0;  // pessimism
        1 x (?x) 1 ? : 0 : 0;  // pessimism
        1 1 (?x) 1 ? : 0 : 0;  // pessimism

        x 0 x 1 ? : 0 : 0;  // pessimism
        x x (?x) 1 ? : 0 : 0;  // pessimism
        x 1 (?x) 1 ? : 0 : 0;  // pessimism

        1 (x1) 0 1 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 1 ? : 0 : 0;
        1 (0x) 0 1 ? : 1 : 1;
        0 (0x) 0 1 ? : 0 : 0;

        ? ? 1 ? ? : ? : 0;  // asynchronous clear
        ? ? 0 0 ? : ? : 1;  // asynchronous set

        ? (?0) ? ? ? : ? : -;  // ignore falling clock
        ? (1x) ? ? ? : ? : -;  // ignore falling clock
        * ? ? ? ? : ? : -;  // ignore data edges

        ? ? (?0) 1 ? : ? : -;  // ignore the edges on
        ? ? ? (?1) ? : ? : -;  // set and clear

        ? ? ? ? * : ? : x;
    endtable
endprimitive


primitive ip_ffsr (Q, D, CP, RB, SB, notifier);
    output Q;  reg    Q;
    input D, CP, RB, SB,notifier;
    table
    //  D   CP      RB   SB      No  :   Qt  :   Qt+1
        1 (01) 0 1 ? : ? : 1;  // clocked data
        1 (01) 0 x ? : ? : 1;  // pessimism

        1 ? 0 x ? : 1 : 1;  // pessimism

        0 0 0 x ? : 1 : 1;  // pessimism
        0 x 0 (?x) ? : 1 : 1;  // pessimism
        0 1 0 (?x) ? : 1 : 1;  // pessimism

        x 0 0 x ? : 1 : 1;  // pessimism
        x x 0 (?x) ? : 1 : 1;  // pessimism
        x 1 0 (?x) ? : 1 : 1;  // pessimism

        0 (01) 0 1 ? : ? : 0;  // clocked data
        0 (01) x 1 ? : ? : 0;  // pessimism

        0 ? x 1 ? : 0 : 0;  // pessimism

        1 0 x 1 ? : 0 : 0;  // pessimism
        1 x (?x) 1 ? : 0 : 0;  // pessimism
        1 1 (?x) 1 ? : 0 : 0;  // pessimism

        x 0 x 1 ? : 0 : 0;  // pessimism
        x x (?x) 1 ? : 0 : 0;  // pessimism
        x 1 (?x) 1 ? : 0 : 0;  // pessimism

        1 (x1) 0 1 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 1 ? : 0 : 0;
        1 (0x) 0 1 ? : 1 : 1;
        0 (0x) 0 1 ? : 0 : 0;

        ? ? 1 1 ? : ? : 0;  // asynchronous clear
        ? ? ? 0 ? : ? : 1;  // asynchronous set

        ? (?0) ? ? ? : ? : -;  //ignore falling clock
        ? (1x) ? ? ? : ? : -;  //ignore falling clock
        * ? ? ? ? : ? : -;  // ignore data edges

        ? ? (?0) 1 ? : ? : -;  // ignore the edges on
        ? ? ? (?1) ? : ? : -;  // set and clear

        ? ? ? ? * : ? : x;
    endtable
endprimitive

primitive ip_ffs (Q, D, CP, SB, notifier);
    output Q;  reg    Q;
    input  D, CP, SB, notifier;
    table
    //  D   CP      SB     No   :   Qt  :   Qt+1

        1 (01) 0 ? : ? : 1;  // clocked data
        0 (01) 0 ? : ? : 0;
        1 (01) x ? : ? : 1;  // reducing pessimism
        1 ? x ? : 1 : 1;  // pessimism

        0 0 x ? : 1 : 1;  // pessimism
        0 x (?x) ? : 1 : 1;  // pessimism
        0 1 (?x) ? : 1 : 1;  // pessimism

        x 0 x ? : 1 : 1;  // pessimism
        x x (?x) ? : 1 : 1;  // pessimism
        x 1 (?x) ? : 1 : 1;  // pessimism

        1 (x1) 0 ? : 1 : 1;  // reducing pessimism
        0 (x1) 0 ? : 0 : 0;
        1 (0x) 0 ? : 1 : 1;
        0 (0x) 0 ? : 0 : 0;

        ? ? 1 ? : ? : 1;  // asynchronous clear

        ? (?0) ? ? : ? : -;  // ignore falling clock
        ? (1x) ? ? : ? : -;  // ignore falling clock
        * ? ? ? : ? : -;  // ignore the data edges

        ? ? (?0) ? : ? : -;  // ignore the edges on set

        ? ? ? * : ? : x;

    endtable
endprimitive
`endif
