#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
   NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
   NSLog (@"ok");
   [pool drain];    
   return 0; 
} 
