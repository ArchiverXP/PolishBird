#include  <Foundation/NSObjCRuntime.h> 
#include <Foundation/NSURL.h>
#include <Foundation/NSDictionary.h>
#include <string.h>



%hook NSBundle

-(id)infoDictionary {
	NSMutableDictionary *info = [%orig mutableCopy];
    info[@"CFBundleVersion"] = @"19.00";
	NSLog(@"info: %@", info);
    return info;
}

%end