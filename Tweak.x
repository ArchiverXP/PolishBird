#include  <Foundation/NSObjCRuntime.h> 
#include <Foundation/NSURL.h>
#include <Foundation/NSDictionary.h>
#include <string.h>



%hook NSBundle

-(id)infoDictionary {
	NSMutableDictionary *info = [%orig mutableCopy];
    	info[@"CFBundleVersion"] = @"2001.00";
	//uncomment for debug NSLog(@"info: %@", info);
    	return info;
}

%end
