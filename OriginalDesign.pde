void setup(){
  size(800,800);
}

float x = 0.0;
float y = 600.0;
void draw(){
  background(0,255,0);
  kirb(x,y);  
  x = x + 1;
  if(x<200){
  	y = y + -sqrt(x)/(x/6);
  }
  if(x>200 && x<400){
  	y = y + -((-x/500)*(x/500));
  	
  }
  if(x>400){
  	y = (y + -sqrt(x)/(x/15));
  }
  if(x>876){
  	x=0;
  	y=600;
  }
}

void kirb(float x,float y){
  noStroke();
  fill(240,198,211);
  ellipse(x,y,150,150);
  fill(100,100,100);
  ellipse(x+25,y-15,10,35);
  ellipse(x+55,y-20,10,35);
}
