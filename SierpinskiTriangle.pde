int startX = 5;
int startY = 400;

int mouseLength = startY - mouseY;

public void setup()
{
	size(600,600);
}
public void draw()
{
	System.out.println(mouseLength);
	sierpinski(startX,startY, mouseLength);
}
public void mouseDragged()//optional
{
	//sierpinski(startX, startY, mouseLength);
}
public void sierpinski(int x, int y, int len) 
{
	if(len <=10)
		triangle(x, y, x+len, y, x+len/2, y-len);
	else
	{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}