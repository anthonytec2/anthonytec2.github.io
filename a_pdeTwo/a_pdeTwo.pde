static int sizeS=200;
float[] yvals = new float[sizeS];//used to store all the y values for FN
float[] xvals = new float[sizeS];//used to store all the X values for FN
int i=1;//Flag for inital run or updating
int j=0;//Used to cpmpute the next iterations of functions
float space =.01;//used to define space bettween function points
int ballSize=6;//radius of ball size when drawn
float amp=60;//Amplitude to sine function
color yellow = color(255, 204, 0);  // Define color Yellow
float deltaX=50;//Where to start the graphic occuring X
float deltaY=100;//Where to start the graphic occuring Y
float T=1;//Time Period
//int time=millis();//Current millisecond time
int randomTrig=500;//Time in seconds for random amplitude change
int dir=1;
void setup() {
 
size( 600,200);
 
for(int p=0;p<sizeS;p=p+1){
  xvals[p]=p*7;
  
}

}
void draw() {  
  background(0,0);
  calcFn();
  renderWave();
 
  //randomEv();
}/*
void randomEv(){
  if(millis()>time+randomTrig &&yvals[sizeS-1]<.01){
    if(amp>100){
      dir=-1;
    }else if(amp<5){
      dir=1;
    }

    amp=amp+dir;
    time=millis();
    
  }
  
  
}*/
void calcFn(){
  if(i==1){
    for(j=0;j<sizeS;j=j+1){
     yvals[j]=amp*sin(j*space*((2*PI)/(T)));
     i=0;
    } 
  }else{
    for(int p=0;p<(sizeS-1);p=p+1){
     yvals[p]=yvals[p+1];
     i=0;
    }
    if(j>(1000*T)/space){
     j=0; 
     
    }else{
    j=j+1;
    }
    yvals[sizeS-1]=amp*sin(j*space*((2*PI)/(T)));
  
  } 
}

void renderWave(){
  for(int p=0;p<sizeS;p=p+1){
    fill(yellow);
    ellipse(deltaX+xvals[p],deltaY+yvals[p],ballSize,ballSize);
  }
   
}