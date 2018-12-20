int n=1,nc=n,count=0;
boolean TWOp=true,THREE=false,NINE=false,TWENTYONE=false,FIVE=false;

void setup()
{
  size(1300,700);
  background(0);
  fill(0);
}

void draw()
{
  for(nc=n;nc!=1;count++)
  {
    if(nc%2==0)  nc/=2;
    else  nc=3*nc+1;
  }

  for(nc=n;nc!=1&&TWOp;)
  {
    if(nc%2==0)  nc/=2;
    else  TWOp=false;
  }
  
  if(n%3==0)
  {
    nc=n/3;
    for(;nc%2==0;)
    {
      nc/=2;
    }
    if(nc==1)  THREE=true;
  }
  
  if(n%9==0)
  {
    nc=n/9;
    for(;nc%2==0;)
    {
      nc/=2;
    }
    if(nc==1)  NINE=true;
  }
    
  if(n%21==0)
  {
    nc=n/21;
    for(;nc%2==0;)
    {
      nc/=2;
    }
    if(nc==1)  TWENTYONE=true;
  }
      
  if(n%5==0)
  {
    nc=n/5;
    for(;nc%2==0;)
    {
      nc/=2;
    }
    if(nc==1)  FIVE=true;
  }
  
  if(TWOp)  stroke(255,0,0);
  else if(THREE)  stroke(0,0,255);
  else if(NINE)  stroke(0,255,0);
  else if(TWENTYONE)  stroke(255,255,0);
  else if(FIVE)  stroke(0,255,255);
  else  stroke(255,10);
  ellipse(n,height-3*count,1,1);
  n++;
  count=0;
  TWOp=true;
  THREE=false;
  NINE=false;
  TWENTYONE=false;
  FIVE=false;
}