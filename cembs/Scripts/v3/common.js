/* external file "mybcparmsg.txt" begins */
// begin: Belt Conveyer's Parameters
//========================
//PATTERN: SINGLE or MORE. How many messages may reside within scrolling area
// while PAUSING: 0 for SINGLE: only one;  1 for More: as many as they fit in the area; 
var bmsgnr=0;

//If chosen bmsgnr=1 above, the "stilmsg" in STEP I must have "text-align:left".
//A 20px wide blank space is automatically inserted after every
//message. Each one will pause when reaching the left edge.
//If chosen bmsgnr=0, recommended CSS is "text-align:center",
//then any message shorter than conveyer width will be centered.
//When larger than conveyer width, automatically a 20px wide
//blank space is inserted after any such message.
//When no blank space automatically inserted is desired set below value 1:
var blanspa=0;

//First message shows up at the right edge and starts scrolling: 0
//If you want First message to pop up at the left edge (or centered based on CSS)
//set below value: 1
var rlopt=0;

//WIDTH of the Conveyer in pixels: set to your own; 
//"px" unit will automatically be set in the process, so do not write px; 
var bwidth=650; 

//HEIGHT of the Conveyer in pixels: set to your own; 
//"px" unit will automatically be set in the process, so do not write px;
//"20" is more or less for one line!
var bheight=50; 

//SPEED in pixels: the higher the faster.
var bspeed=2; 

//PAUSE between messages in milliseconds: 1000=1s; set to your own; 
var bpause = 2000; 

//BACKGROUND: either color(1) or image(2, see below ) ; 
//1.Background color: could be like: "#ffff00" or "yellow";
//set it "" for no background color;
var bbcolor="#1a4353";

//or 2.Background image: "imagename.ext";
//leave it "" for no image background;
var bbground="";

//BORDER for sliding area: 1, ... ;
//set it 0(zero) for no border;
var bborder=2;


var bsopt = 0;
if(bsopt==1){
var besclass='class="stilefss"';
var belcolor='#ccffcc';
}


var sglm=new Array();
sglm[0]='Take our ERmP financial audit and win an iPad mini';
sglm[1]='AX 2012 is Microsoft Dynamics most powerful';
sglm[2]='CEM Human Capital Management is the most intuitive and modern suite of HCM and Payroll Management solution';
sglm[3]='CEM AX for Retail is a powerful end-to-end retail solution';
sglm[4]='The payroll manageme  becomes easier with your CEM AX Payroll. The integrated payroll module';
sglm[5]='Successful construction manage professionals ';
//    ...
//sglm[...]='...';
//end Messages 
/* end of external_remote file "mybcparmsg.txt" */