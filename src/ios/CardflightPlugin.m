#import "CardflightPlugin.h"

@interface CardflightPlugin ()

@property(nonatomic, strong, readwrite) CDVInvokedUrlCommand *command;

@end

@implementation CardflightPlugin

- (void)init:(CDVInvokedUrlCommand *)command {
  [self.commandDelegate runInBackground:^{
    NSString* APIToken = [command.arguments objectAtIndex:0];
    NSString* AccountToken = [command.arguments objectAtIndex:1];

    [[CFTSessionManager sharedInstance] setAPIToken:APIToken
                                        AccountToken:AccountToken];

    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
  }];
}

@end
