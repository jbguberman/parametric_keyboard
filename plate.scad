//Thickness of entire plate
plateThickness=1.4;
//Unit square length, from Cherry MX data sheet
lkey=19.05;
//Hole size, from Cherry MX data sheet
holesize=14;
//length, in units, of board
width=14.5;
//Height, in units, of board
height=5;
//Radius of mounting holes
mountingholeradius=1.5;
//height of switch clasp cutouts
cutoutheight = 3;
//width of switch clasp cutouts
cutoutwidth = 1;

// lower case generation
// cavity_height is the space in the lower case. Needs to be at last as tall
// as much as the key switches will extend below the plate or else they won't
// fit together.
cavity_height = 8; 

// case_floor_thickness: recommended to be at least 1.0mm. Also recommended to
// be an even multiple of your layer height. E.g., if layer height is 0.3mm,
// use 1.2 or 1.5. Don't use 1.0 because it can't be evenly divided by 0.3.
case_floor_thickness = 0.9;
// total case height: cavity_height + case_floor_thickness
case_height = cavity_height + case_floor_thickness;
// case_wall_thickness: For rigidity, recommend to be at least 3x your nozzle
// size. Also recommended to be an even multiple of your nozzle size.
case_wall_thickness = 1.2;
// inner and outer radius of mounting standoff on case
mount_receiver_outer_radius = mountingholeradius+0.5;
mount_receiver_inner_radius = mountingholeradius-0.5;


//calculated vars

holediff=lkey-holesize;
w=width*lkey;
h=height*lkey;

// [[column, row], offset (key width)]
//my custom keyboard layout layer
// http://www.keyboard-layout-editor.com/##@@=Esc&=!%0A1&=%2F@%0A2&=%23%0A3&=$%0A4&=%25%0A5&=%5E%0A6&=%2F&%0A7&=*%0A8&=(%0A9&=)%0A0&=%2F_%0A-&=+%0A%2F=&_w:1.5%3B&=Backspace%3B&@_w:1.5%3B&=Tab&=Q&=W&=E&=R&=T&=Y&=U&=I&=O&=P&=%7B%0A%5B&=%7D%0A%5D&=%7C%0A%5C%3B&@_w:1.75%3B&=Ctrl%0ACaps&=A&=S&=D&=F&=G&=H&=J&=K&=L&=%2F:%0A%2F%3B&=%22%0A'&_w:1.75%3B&=Enter%3B&@_w:2.25%3B&=Shift&=Z&=X&=C&=V&=B&=N&=M&=%3C%0A,&=%3E%0A.&_w:1.25%3B&=%3F%0A%2F%2F&=%E2%86%91&=Shift%0A%E7%84%A1%E5%A4%89%E6%8F%9B%3B&@=Fn&=~%0A%0A%0A%0A%0A%0A%60&=Alt&_w:1.25%3B&=Cmd%0A%E8%8B%B1%E6%95%B0&_w:3%3B&=&_w:3%3B&=&_w:1.25%3B&=Cmd%0A%E3%81%8B%E3%81%AA%0A%0A%0A%0A%0A%E3%82%AB%E3%83%8A&=%E2%86%90&=%E2%86%93&=%E2%86%92
myKeyboard = [
//start ROW 0
[[0,0],1], // esc
[[1,0],1], // 1
[[2,0],1], // 2
[[3,0],1], // 3
[[4,0],1], // 4
[[5,0],1], // 5
[[6,0],1], // 6
[[7,0],1], // 7
[[8,0],1], // 8
[[9,0],1], // 9
[[10,0],1], // 0
[[11,0],1], // -
[[12,0],1], // =
[[13,0],1.5], // bksp
//start ROW 1
[[  0,1],1.5], // tab
[[1.5,1],1], // q
[[2.5,1],1], // w
[[3.5,1],1], // e
[[4.5,1],1], // r
[[5.5,1],1], // t
[[6.5,1],1], // y
[[7.5,1],1], // u
[[8.5,1],1], // i
[[9.5,1],1], // o
[[10.5,1],1], // p
[[11.5,1],1], // [
[[12.5,1],1], // ]
[[13.5,1],1], // \
//start ROW 2
[[   0,2],1.75], // ctrl
[[1.75,2],1], // a
[[2.75,2],1], // s
[[3.75,2],1], // d
[[4.75,2],1], // f
[[5.75,2],1], // g
[[6.75,2],1], // h
[[7.75,2],1], // j
[[8.75,2],1], // k
[[9.75,2],1], // l
[[10.75,2],1], // ;
[[11.75,2],1], // '
[[12.75,2],1.75], // enter
//start ROW 3
[[   0,3],2.25], // lshift
[[2.25,3],1], // z
[[3.25,3],1], // x
[[4.25,3],1], // c
[[5.25,3],1], // v
[[6.25,3],1], // b
[[7.25,3],1], // n
[[8.25,3],1], // m
[[9.25,3],1], // ,
[[10.25,3],1], // .
[[11.25,3],1.25], // /
[[12.50,3],1], // up arrow
[[13.50,3],1], // rshift
//start ROW 4
[[0,4],1], // fn
[[1,4],1], // `
[[2,4],1], // alt
[[3,4],1.25], // lcmd
[[4.25,4],3], // space 1
[[7.25,4],3], // space 2
[[10.25,4],1.25], // rcmd
[[11.5,4],1], // left arrow
[[12.5 ,4],1], // down arrow
[[13.5,4],1], // right arrow
];

// [[column, row], offset (key width)]
myHalfKeyboardleft = [
//start ROW 0
[[0,0],1], // esc
[[1,0],1], // 1
[[2,0],1], // 2
[[3,0],1], // 3
[[4,0],1], // 4
[[5,0],1], // 5
[[6,0],1], // 6
// [[7,0],1], // 7
// [[8,0],1], // 8
// [[9,0],1], // 9
// [[10,0],1], // 0
// [[11,0],1], // -
// [[12,0],1], // =
// [[13,0],1.5], // bksp
//start ROW 1
[[  0,1],1.5], // tab
[[1.5,1],1], // q
[[2.5,1],1], // w
[[3.5,1],1], // e
[[4.5,1],1], // r
[[5.5,1],1], // t
// [[6.5,1],1], // y
// [[7.5,1],1], // u
// [[8.5,1],1], // i
// [[9.5,1],1], // o
// [[10.5,1],1], // p
// [[11.5,1],1], // [
// [[12.5,1],1], // ]
// [[13.5,1],1], // \
//start ROW 2
[[   0,2],1.75], // ctrl
[[1.75,2],1], // a
[[2.75,2],1], // s
[[3.75,2],1], // d
[[4.75,2],1], // f
[[5.75,2],1], // g
// [[6.75,2],1], // h
// [[7.75,2],1], // j
// [[8.75,2],1], // k
// [[9.75,2],1], // l
// [[10.75,2],1], // ;
// [[11.75,2],1], // '
// [[12.75,2],1.75], // enter
//start ROW 3
[[   0,3],2.25], // lshift
[[2.25,3],1], // z
[[3.25,3],1], // x
[[4.25,3],1], // c
[[5.25,3],1], // v
[[6.25,3],1], // b
// [[7.25,3],1], // n
// [[8.25,3],1], // m
// [[9.25,3],1], // ,
// [[10.25,3],1], // .
// [[11.25,3],1.25], // /
// [[12.50,3],1], // up arrow
// [[13.50,3],1], // rshift
//start ROW 4
[[0,4],1], // fn
[[1,4],1], // `
[[2,4],1], // alt
[[3,4],1.25], // lcmd
[[4.25,4],3], // space 1
// [[7.25,4],3], // space 2
// [[10.25,4],1.25], // rcmd
// [[11.5,4],1], // left arrow
// [[12.5 ,4],1], // down arrow
// [[13.5,4],1], // right arrow
];

// [[column, row], offset (key width)]
myHalfKeyboardright = [
//start ROW 0
// [[0,0],1], // esc
// [[1,0],1], // 1
// [[2,0],1], // 2
// [[3,0],1], // 3
// [[4,0],1], // 4
// [[5,0],1], // 5
// [[6,0],1], // 6
[[7,0],1], // 7
[[8,0],1], // 8
[[9,0],1], // 9
[[10,0],1], // 0
[[11,0],1], // -
[[12,0],1], // =
[[13,0],1.5], // bksp
//start ROW 1
// [[  0,1],1.5], // tab
// [[1.5,1],1], // q
// [[2.5,1],1], // w
// [[3.5,1],1], // e
// [[4.5,1],1], // r
// [[5.5,1],1], // t
[[6.5,1],1], // y
[[7.5,1],1], // u
[[8.5,1],1], // i
[[9.5,1],1], // o
[[10.5,1],1], // p
[[11.5,1],1], // [
[[12.5,1],1], // ]
[[13.5,1],1], // \
//start ROW 2
// [[   0,2],1.75], // ctrl
// [[1.75,2],1], // a
// [[2.75,2],1], // s
// [[3.75,2],1], // d
// [[4.75,2],1], // f
// [[5.75,2],1], // g
[[6.75,2],1], // h
[[7.75,2],1], // j
[[8.75,2],1], // k
[[9.75,2],1], // l
[[10.75,2],1], // ;
[[11.75,2],1], // '
[[12.75,2],1.75], // enter
//start ROW 3
// [[   0,3],2.25], // lshift
// [[2.25,3],1], // z
// [[3.25,3],1], // x
// [[4.25,3],1], // c
// [[5.25,3],1], // v
// [[6.25,3],1], // b
[[7.25,3],1], // n
[[8.25,3],1], // m
[[9.25,3],1], // ,
[[10.25,3],1], // .
[[11.25,3],1.25], // /
[[12.50,3],1], // up arrow
[[13.50,3],1], // rshift
//start ROW 4
// [[0,4],1], // fn
// [[1,4],1], // `
// [[2,4],1], // alt
// [[3,4],1.25], // lcmd
// [[4.25,4],3], // space 1
[[7.25,4],3], // space 2
[[10.25,4],1.25], // rcmd
[[11.5,4],1], // left arrow
[[12.5 ,4],1], // down arrow
[[13.5,4],1], // right arrow
];

//poker keyboard layout layer
pokerkeyboard = [
//start ROW 0
[[0,0],1],
[[1,0],1],
[[2,0],1],
[[3,0],1],
[[4,0],1],
[[5,0],1],
[[6,0],1],
[[7,0],1],
[[8,0],1],
[[9,0],1],
[[10,0],1],
[[11,0],1],
[[12,0],1],
[[13,0],2],
//start ROW 1
[[  0,1],1.5],
[[1.5,1],1],
[[2.5,1],1],
[[3.5,1],1],
[[4.5,1],1],
[[5.5,1],1],
[[6.5,1],1],
[[7.5,1],1],
[[8.5,1],1],
[[9.5,1],1],
[[10.5,1],1],
[[11.5,1],1],
[[12.5,1],1],
[[13.5,1],1.5],
//start ROW 2
[[   0,2],1.75],
[[1.75,2],1],
[[2.75,2],1],
[[3.75,2],1],
[[4.75,2],1],
[[5.75,2],1],
[[6.75,2],1],
[[7.75,2],1],
[[8.75,2],1],
[[9.75,2],1],
[[10.75,2],1],
[[11.75,2],1],
[[12.75,2],2.25],
//start ROW 3
[[   0,3],2.25],
[[2.25,3],1],
[[3.25,3],1],
[[4.25,3],1],
[[5.25,3],1],
[[6.25,3],1],
[[7.25,3],1],
[[8.25,3],1],
[[9.25,3],1],
[[10.25,3],1],
[[11.25,3],1],
[[12.25,3],2.75],
//start ROW 4
[[   0,4],1.25],
[[1.25,4],1.25],
[[2.5 ,4],1.25],
[[3.75,4],6.25],
[[10  ,4],1.25],
[[11.25,4],1.25],
[[12.5 ,4],1.25],
[[13.75,4],1.25],
];

// small keyboard to test fitting
testKeyboard = [
//start ROW 0
[[0,0.5],1], // key
[[1,0],1], // key
[[2,0],1], // key
[[3,0],1], // key
[[4,0.25],1], // key
//start ROW 1
[[0,1.5],1], // key
[[1,1],1], // key
[[2,1],1], // key
[[3,1],1], // key
[[4,1.25],1], // key
//start ROW 2
[[0,2.5],1], // key
[[1,2],1], // key
[[2,2],1], // key
[[3,2],1], // key
[[4,2.25],1], // key
];

module plate(w,h){
	cube([w,h,plateThickness]);
}

module switchhole(){
	union(){
		cube([holesize,holesize,plateThickness]);

    // Top clip cutout
		// translate([-cutoutwidth,1,0])
		// cube([holesize+2*cutoutwidth,cutoutheight,plateThickness]);

    // Bottom clip cutout
		// translate([-cutoutwidth,holesize-cutoutwidth-cutoutheight,0])
		// cube([holesize+2*cutoutwidth,cutoutheight,plateThickness]);
	}
}

row_maximums = [];

module holematrix(holes,startx,starty){
	for (key = holes){
		translate([startx+lkey*key[0][0], starty-lkey*key[0][1], 0])
		translate([(lkey*key[1]-holesize)/2,(lkey - holesize)/2, 0])
		switchhole();
	}
}

module mountingholes(){
	translate([(1+1/3)*lkey,3.5*lkey,0]) mounting_hole();

	translate([(13+2/3)*lkey,3.5*lkey,0]) mounting_hole();

	translate([(6.75)*lkey,2.5*lkey,0]) mounting_hole();

	translate([(6.75)*lkey,2.5*lkey,0]) mounting_hole();

	translate([(14.8)*lkey,2*lkey,0]) mounting_hole();

	translate([(.2)*lkey,2*lkey,0]) mounting_hole();

	translate([(10)*lkey,.5*lkey,0]) mounting_hole();
}

module mounting_hole(){
  cylinder(h=plateThickness,r=mountingholeradius, $fn=16);
}

module mounting_standoff(){
  difference() {
    // bottom of standoff is flared for stability
    cylinder(h=case_height,r1=mount_receiver_outer_radius+1.3, r2=mount_receiver_outer_radius, $fn=16);
    cylinder(h=case_height,r=mount_receiver_inner_radius, $fn=16);
  }
}

module myplate(){
	difference(){
		plate(w,h);
		holematrix(myKeyboard,0,h-lkey);
		// mountingholes();
		//translate([152.5,0,0]) cube([.001,150,150]);
	}
}

module myhalfplate(){
  difference(){
    plate(w,h);

    truncations = [
      [[7,0],1],
      [[6.5,1],1],
      [[6.75,2],1],
      [[7.25,3],1],
      [[7.25,4],3]
    ];
    truncateplateright(0,h-lkey,plateThickness,truncations);

    // truncations = [
    //   [[6,0],1], // 6
    //   [[5.5,1],1], // t
    //   [[5.75,2],1], // g
    //   [[6.25,3],1], // b
    //   [[4.25,4],3], // space 1
    // ];
    // truncateplateleft(0,h-lkey,plateThickness,truncations);

    holematrix(myHalfKeyboardleft,0,h-lkey);
    // holematrix(myHalfKeyboardright,0,h-lkey);
    // mountingholes();
    //translate([152.5,0,0]) cube([.001,150,150]);
  }
}

module myhalfcase(){
  // difference() {
  //   cube([w,h,case_height]);
  //   translate([case_wall_thickness,case_wall_thickness,case_floor_thickness])
  //     cube([w-(case_wall_thickness*2),h-(case_wall_thickness*2),case_height]);
  // }
  truncations = [
    [[6,0],1], // 6
    [[5.5,1],1], // t
    [[5.75,2],1], // g
    [[6.25,3],1], // b
    [[4.25,4],3], // space 1
  ];
  difference() {
    // scale([case_wall_thickness,case_wall_thickness,case_floor_thickness])
    truncateplateleft(0,h-lkey,case_height,truncations);
    scale([0.9,0.95,1.0])
      translate([case_wall_thickness,case_wall_thickness,case_floor_thickness])
        truncateplateleft(0,h-lkey,case_height,truncations);
    
  }
}

module truncateplateright(startx, starty, thickness, truncations) {
  // startx = 0;
  // starty = h-lkey;
  for (truncation = truncations){
    toffset = truncation[0][0];
    trow = truncation[0][1];
    twidth = truncation[1];
    echo(toffset=toffset, trow=trow, twidth=twidth);
    translate([startx+lkey*toffset, starty-lkey*trow, 0]) {
      // translate([(lkey*twidth-holesize)/2,(lkey - holesize)/2, 0]) {
        cube([w,lkey,thickness]);
      // }
    }
  }
}

module truncateplateleft(startx, starty, thickness, truncations) {
  // startx = 0;
  // starty = h-lkey;
  for (truncation = truncations){
    toffset = truncation[0][0];
    trow = truncation[0][1];
    twidth = truncation[1];
    echo(toffset=toffset, trow=trow, twidth=twidth);
    translate([0, starty-lkey*trow, 0]) {
      // translate([(lkey*twidth-holesize)/2,(lkey - holesize)/2, 0]) {
        cube([(startx+lkey*toffset)+(twidth*lkey),lkey,thickness]);
      // }
    } 
  }
}

module pokerplate(){
	difference(){
		plate(w,h);
		holematrix(pokerkeyboard,0,h-lkey);
		mountingholes();
	}
}

module testplate(){
  difference(){
    plate(w,h);
    holematrix(testKeyboard,0,h-lkey);
    // mounting holes
    translate([lkey/5,(height*lkey)-(lkey/5),0]) mounting_hole();
    translate([(width*lkey)-(lkey/5),(height*lkey)-(lkey/5),0]) mounting_hole();

    translate([lkey/5,lkey/5,0]) mounting_hole();
    translate([(width*lkey)-(lkey/5),lkey/5,0]) mounting_hole();

    translate([((width/2)*lkey),lkey/5,0]) mounting_hole();

    translate([(lkey*1),lkey*0.75,0]) mounting_hole();
    translate([(lkey*1),lkey*1.75,0]) mounting_hole();
    translate([(lkey*1),lkey*2.75,0]) mounting_hole();

    translate([(lkey*2),lkey*0.75,0]) mounting_hole();
    translate([(lkey*2),lkey*1.75,0]) mounting_hole();
    translate([(lkey*2),lkey*2.75,0]) mounting_hole();

    translate([(lkey*3),lkey*0.75,0]) mounting_hole();
    translate([(lkey*3),lkey*1.75,0]) mounting_hole();
    translate([(lkey*3),lkey*2.75,0]) mounting_hole();

    translate([(lkey*4),lkey*0.75,0]) mounting_hole();
    translate([(lkey*4),lkey*1.75,0]) mounting_hole();
    translate([(lkey*4),lkey*2.75,0]) mounting_hole();
    
    // translate([(lkey*3)+(lkey/2),lkey/3,0])
    // cylinder(h=plateThickness,r=mountingholeradius, $fn=16);
    // translate([(lkey*4)+(lkey/1.5),lkey/5,0])
    // cylinder(h=plateThickness,r=mountingholeradius, $fn=16);
  }
}

module testcase(){
  difference() {
    cube([w,h,case_height]);
    translate([case_wall_thickness,case_wall_thickness,case_floor_thickness])
      cube([w-(case_wall_thickness*2),h-(case_wall_thickness*2),case_height]);
  }

  // mounting hole standoffs
  translate([lkey/5,(height*lkey)-(lkey/5),0]) mounting_standoff();
  translate([(width*lkey)-(lkey/5),(height*lkey)-(lkey/5),0]) mounting_standoff();

  translate([lkey/5,lkey/5,0]) mounting_standoff();
  translate([(width*lkey)-(lkey/5),lkey/5,0]) mounting_standoff();

  translate([((width/2)*lkey),lkey/5,0]) mounting_standoff();

  translate([(lkey*1),lkey*0.75,0]) mounting_standoff();
  translate([(lkey*1),lkey*1.75,0]) mounting_standoff();
  translate([(lkey*1),lkey*2.75,0]) mounting_standoff();

  translate([(lkey*2),lkey*0.75,0]) mounting_standoff();
  translate([(lkey*2),lkey*1.75,0]) mounting_standoff();
  translate([(lkey*2),lkey*2.75,0]) mounting_standoff();

  translate([(lkey*3),lkey*0.75,0]) mounting_standoff();
  translate([(lkey*3),lkey*1.75,0]) mounting_standoff();
  translate([(lkey*3),lkey*2.75,0]) mounting_standoff();

  translate([(lkey*4),lkey*0.75,0]) mounting_standoff();
  translate([(lkey*4),lkey*1.75,0]) mounting_standoff();
  translate([(lkey*4),lkey*2.75,0]) mounting_standoff();
}

// pokerplate();
// myplate();

myhalfplate();
// myhalfcase();

// test plate setting here
//length, in units, of board
// width=5;
//Height, in units, of board
// height=3.75;
// testplate();
// testcase();