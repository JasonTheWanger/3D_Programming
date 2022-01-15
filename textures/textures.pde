float rotX, rotY;
PImage sand, top, side, front;
void setup(){
  size(800,800,P3D);
  textureMode(NORMAL);
  sand = loadImage("Sand.png");
  top = loadImage("pumpkinTop.png");
  side = loadImage("pumpkinSide.png");
  front = loadImage("pumpkinFace.png");
}

void draw(){
 background(0);
 texturedCube(width/2, height/2, 0, sand, 100);
 texturedCube(100, height/2, 0, side, 100);
 texturedCube(width/2, 100, 0, top, top, front, side, 100);
}

void texturedCube(float x, float y, float z, PImage top, PImage bottom, PImage front, PImage side, float size){
  pushMatrix();
 translate(x,y,z);
 scale(size);
 rotateX(rotX);
 rotateY(rotY);
 noStroke();
 beginShape(QUADS);
 texture(top);
 //top
 vertex(0,0,0,0,0);
 vertex(1,0,0,1,0);
 vertex(1,0,1,1,1);
 vertex(0,0,1,0,1);
 endShape();
 beginShape(QUADS);
 texture(bottom);
 //bottom
 vertex(0,1,0,0,0);
 vertex(1,1,0,1,0);
 vertex(1,1,1,1,1);
 vertex(0,1,1,0,1);
 endShape();
 //front
 beginShape(QUADS);
 texture(front);
 vertex(0,0,1,0,0);
 vertex(1,0,1,1,0);
 vertex(1,1,1,1,1);
 vertex(0,1,1,0,1);
 endShape();
 beginShape(QUADS);
 texture(side);
 //back
 vertex(0,0,0,0,0);
 vertex(1,0,0,1,0);
 vertex(1,1,0,1,1);
 vertex(0,1,0,0,1);
 endShape();
 beginShape(QUADS);
 texture(side);
 //left
 vertex(0,0,0,0,0);
 vertex(0,0,1,1,0);
 vertex(0,1,1,1,1);
 vertex(0,1,0,0,1);
 endShape();
 beginShape(QUADS);
 texture(side);
 //right
 vertex(1,0,0,1,0);
 vertex(1,0,1,0,0);
 vertex(1,1,1,0,1);
 vertex(1,1,0,1,1);
 endShape();
 
 popMatrix();
}

void texturedCube(float x, float y, float z, PImage texture, float size){
  pushMatrix();
 translate(x,y,z);
 scale(size);
 rotateX(rotX);
 rotateY(rotY);
 noStroke();
 beginShape(QUADS);
 texture(texture);
 //top
 vertex(0,0,0,0,0);
 vertex(1,0,0,1,0);
 vertex(1,0,1,1,1);
 vertex(0,0,1,0,1);

 //bottom
 vertex(0,1,0,0,0);
 vertex(1,1,0,1,0);
 vertex(1,1,1,1,1);
 vertex(0,1,1,0,1);

 //front
 vertex(0,0,1,0,0);
 vertex(1,0,1,1,0);
 vertex(1,1,1,1,1);
 vertex(0,1,1,0,1);

 //back
 vertex(0,0,0,0,0);
 vertex(1,0,0,1,0);
 vertex(1,1,0,1,1);
 vertex(0,1,0,0,1);
 
 //left
 vertex(0,0,0,0,0);
 vertex(0,0,1,1,0);
 vertex(0,1,1,1,1);
 vertex(0,1,0,0,1);
 
 //right
 vertex(1,0,0,1,0);
 vertex(1,0,1,0,0);
 vertex(1,1,1,0,1);
 vertex(1,1,0,1,1);
 endShape();
 
 popMatrix();
}
void mouseDragged(){
  rotX= rotX + (pmouseY- mouseY)*0.01;
  rotY= rotY + (pmouseX - mouseX)*-0.01;
}
