#include nirc2.def


/* Nominal values for the biases */
#define VDDCL     -2.0  /* SWITCHED BIAS Drain clamp voltage for the column circuitery  */
#define VGGCL      0.0     /* SWITCHED BIAS Gate of Clamp MOSFET */
#define VRSTOFF    -3.5  /* SWITCHED BIAS Global Row Reset bias       */
#define VRSTON     0  /*             */

#define VROWOFF    0.0     /* Voltage supplied to the row-enable transistors when a row is not selected. Nominal bias is 0.0V  */
#define VROWON    -6.0     /* Voltage supplied to the row-enable transistors when a row is enabled. Nominal bias is -6.0V  */
#define VPROW      0.1     /* Positive digital bias supply for the slow register and decoder */
#define VNROW     -6.1     /* Negative digital bias supply for the slow register and decoder */
#define VNCOL     -6.1     /* Negative digital bias supply for the fast register and decoder */

#define VDDOUT    -1.5  /* Drain voltage of the PMOS output SF */
#define VDETCOM   -3.4  /* Detector Common Bias. Connected to InSB n-type   */
#define VSSUC      0.0  /* Analog source supply of the current mirror       */
#define VDDUC     -4.0  /*  */

#define VREF	-3.0 /* Current source. Range from -4.0V to -1.75V*/

#define VTend		-3.6 

#define VENPREAMP	5.0	
#define VSSOUT		0.6
#define VIDOFFSET	0.1
#define VSPARE		0.0

SLOT 9 lvbias {
  LVLC 1  [VTend,1] 'Test Voltage';
  LVLC 2  [VSPARE,1];         
  LVLC 3  [VSPARE,1];         
  LVLC 4  [VPROW,1] 'Pos reg and dec';           /* VPROW and VPCOL are tied together inside the instrument     */
  LVLC 5  [VNROW,1] 'Neg reg and dec Row'; 
  LVLC 6  [VSPARE,1];         
  LVLC 7  [VNCOL,1] 'Neg reg and dec Col';
  LVLC 8  [VSPARE,1];        
  LVLC 9  [VIDOFFSET,1] 'Video Offset'; 
  LVLC 10 [VENPREAMP,1] 'Preamp Enable';
  LVLC 11 [VSPARE,1];      
  LVLC 12 [VSSOUT,1] 'Video PullUp';     
  LVLC 13 [VROWOFF,1] 'Row Not selected';
  LVLC 14 [VDDOUT,1] 'PMOS SF Drain' ;   
  LVLC 15 [VGGCL,1] 'Clamp gate';        
  LVLC 16 [VDDCL,1] 'Drain Clamp Volt';  
  LVLC 17 [VROWON,1] 'row-enable bias' ; 
  LVLC 18 [VDETCOM,1] 'Det Common Bias';     
  LVLC 19 [VDDUC,1] 'Unit Cell SFD Drain';   
  LVLC 20 [VREF,1] 'Current Source Bias';    
  LVLC 21 [VRSTOFF,1] 'Global Reset';      
  LVLC 22 [VRSTON,1] 'Row Reset Bias';        
  LVLC 23 [VSPARE,1];        /* Spare                  */
  LVLC 24 [VSPARE,1];        /* Spare                  */
  LVHC  1 [VSPARE,10,1,1];   /* Spare                  */
  LVHC  2 [VSPARE,50,1,1];   /*           */
  LVHC  3 [VSPARE,10,1,1];   /* Spare                  */
  LVHC  4 [VSPARE,100,1,1];  /*   */
  LVHC  5 [VSPARE,100,0,1];  /*                     */
  LVHC  6 [VSPARE,10,1,1];   /* Spare                  */
}

#define clock_fast 500
#define clock_slow 100

SLOT 4 driverx {
  DRVX 1 [clock_fast, clock_slow, 1] 'VRstOn'; 
  DRVX 2 [clock_fast, clock_slow, 1]'PhiDes Q1';
  DRVX 3 [clock_fast, clock_slow, 1]'FSYNC';
  DRVX 4 [clock_fast, clock_slow, 1]'PhiDes Q3';
  DRVX 5 [clock_fast, clock_slow, 1]'PhiF2';
  DRVX 6 [clock_fast, clock_slow, 1]'PhiDes Q2';
  DRVX 7 [clock_fast, clock_slow, 1]'PhiF1';
  DRVX 8 [clock_fast, clock_slow, 1]'PhiDes Q4';
  DRVX 9 [clock_fast, clock_slow, 1]'PhiS1';
  DRVX 10 [clock_fast, clock_slow, 1]'PhiEO';
  DRVX 11 [clock_fast, clock_slow, 1]'SSYNC';
  DRVX 12 [clock_fast, clock_slow, 1]'PhiS2';
}

