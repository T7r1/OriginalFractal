public void setup(){
  size(500,500);

}
public void draw(){
  //fill((float)Math.random()*255,0,0);
  noLoop();
   myFractal(width/2,height/2,100);
}
public void myFractal(int x, int y, float siz){
  if(siz<10){
     fill((float)Math.random()*70+180,(float)Math.random()*55,0);

  ellipse(x,y,siz*1.4,siz*1.4);
  }else{
    fill((float)Math.random()*70+185,(float)Math.random()*20,(float)Math.random()*40+15);
    for(double i=0;i<2*PI;i+=PI/4)
    ellipse((float)(x+Math.sin(i)*siz),(float)(y+Math.cos(i)*siz),siz*1.2,siz*1.2);

  myFractal(x,y,(float)siz/1.5);
  }
}
