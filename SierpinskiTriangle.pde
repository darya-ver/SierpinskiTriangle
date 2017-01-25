int startX = 0;
int startY = 400;

int mouseLength;
int triangleSize = width;

int triangleMinLength = 20;

int myColor = 255;

int numberOfTriangles = 0;

public void setup()
{
	size(500,500);
}
public void draw()
{
	background(0);
	//mouseLength = startY - mouseY;
	//System.out.println(numberOfTriangles);
	sierpinski(startX,height, triangleSize);
	if(triangleSize < 2*width-20)
	{
		triangleSize += 10;
		//startX -= 10;
	}
	if(triangleSize == 2*width-20)
	{
		//startX = 0;
		triangleSize = width;
	}
}
public void mouseDragged()//optional
{
	//sierpinski(startX, startY, mouseLength);
}
/*
public void mouseClicked()
{
	if(triangleMinLength > 15)
		triangleMinLength = triangleMinLength/2;
	else 
	{

	}
}
*/
public void sierpinski(int x, int y, int len) 
{
	if(len <= triangleMinLength)
	{
		fill(0,0,255);
		triangle(x, y, x+len, y, x+len/2, y-len);
		//numberOfTriangles ++;
	}
	else
	{
		fill(0,0,myColor);
		sierpinski(x, y, len/2);
		fill(0,myColor,0);
		sierpinski(x+len/2, y, len/2);
		fill(myColor,0,0);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}