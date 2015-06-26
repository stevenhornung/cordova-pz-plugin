
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVPZSpeed : CDVPlugin
{}

- (void)initializePZSpeed:(CDVInvokedUrlCommand*)command;
- (void)usePZ:(CDVInvokedUrlCommand*)command;
- (void)setPZLogLevel:(CDVInvokedUrlCommand*)command;
@end
