
 PImage mars;
 float angle;
 float s =10;
float a =255;
float m=255;
float b = 0;
float sunX = 650; 
float c = 1; 
float x; 
float y ;
float facemidpointX= (300);
float facemidpointY=(400);
float righteyeX= (facemidpointX+50);
float righteyeY=(facemidpointY-75);
float lefteyeX=(facemidpointX-50);
float lefteyeY=(facemidpointY-75);
float mouthX = (facemidpointX);
float mouthY=(facemidpointY+80);

float bodyX=(facemidpointX);
float bodyY=(facemidpointY+250);

float z;
float h;

PImage sea; 



color sun = color(229, 244, 66,100);
color outline = color(0, 0, 66);

color face = color (250,250,250,200);
color body=color(66, 134, 244,200);
color mouth=color(244, 65, 65,200);
color eyes =color(65, 244, 142);

 void setup () {
   size(700,800);
 
  // set the value of it 
   mars=loadImage("mars-atmosphere.jpg");
 
   imageMode(CENTER);
   
   sea=loadImage("seaimage.jpg");
   imageMode(CENTER);
 
 }
 
 void draw (){ 
  a=a-0.55;
  pushMatrix();
tint(a);
angle=angle+1;
rotate(radians(angle));
 image (mars,350,400);
 popMatrix();
 pushMatrix();
 tint(m);
 s=s+2;
 image(sea,350,800,700,s);
 popMatrix();
 pushMatrix();
 rotate(radians(-angle));
 drawface(mouseX,mouseY);
 draweyes();
drawnose();

drawmouth();
drawbody();
popMatrix();
 drawsun();}
  
  
void drawsun () {
stroke(outline);
fill(sun);
b=b+1;
c=c+0.5;
ellipse(sunX,b,c,c);
}

void drawface (float x,float y) {
  fill(face);
ellipse(facemidpointX,facemidpointY,x,y); 


}

void draweyes() {
  fill(eyes);
ellipse(righteyeX,righteyeY,20,20);
ellipse(lefteyeX,lefteyeY,20,20);}

void drawnose() {
  fill(face);
ellipse(mouseX/10+facemidpointX,facemidpointY,20,20);}



void drawmouth (){
  noStroke();
 fill(mouth);
ellipse(mouthX,mouthY,z,z);
z=z+0.25;}

void drawbody () {
  noStroke();
  fill(body);
ellipse (bodyX,bodyY,150,120);

}