#include <stdio.h>
#include <X11/Xlib.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

int main()
{
	Display* dpy = XOpenDisplay(getenv("DISPLAY"));
	Window win = DefaultRootWindow(dpy);
	char* input = malloc(30 * sizeof(char));
	time_t rawtime;
	for(;;){
		time(&rawtime);
		sprintf(input, "%s", ctime(&rawtime));
		XStoreName(dpy, win, input);
		XFlush(dpy);
		sleep(1);	
	}
	return 0;
}
