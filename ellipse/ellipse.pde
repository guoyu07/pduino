int timer = 0;
int width = 800;
int height = 600;
int x, y, _x, _y = 0;
void setup(){
  size(width,height);
}

void draw(){
  boolean moved = false;  
  if(x != mouseX){
    x = mouseX;
    moved = true;
  }
  if(y != mouseY){
    y = mouseY;
    moved = true;
  }
  
  if(timer == 0)
  {
    _x = timer % width;
    _y = height / 2;
  }else if(moved){
    _x = x;
    _y = y;
  }else{
    _x = timer % width;    
  }
  
  background(255);
  ellipse(_x, _y, 30, 30);
  timer = timer + 1;
}
