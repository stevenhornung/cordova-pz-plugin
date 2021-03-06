/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#include <sys/types.h>
#include <sys/sysctl.h>

#import <Cordova/CDV.h>
#import "CDVPZSpeed.h"
#import <PZSpeed/PZSpeed.h>


@interface CDVPZSpeed () {}
@end

@implementation CDVPZSpeed


- (void)initializePZSpeed:(CDVInvokedUrlCommand*)command {

    NSString* appId = [command.arguments objectAtIndex:0];
    NSString* apiKey = [command.arguments objectAtIndex:1];

    PZSpeedController *speedController;
    speedController = [PZSpeedController controllerWithAppID:appId apiKey:apiKey];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)usePZ:(CDVInvokedUrlCommand*)command {

    NSNumber* shouldUsePZ = [command.arguments objectAtIndex:0];
    [[PZSpeedController sharedController] usePZ:[shouldUsePZ boolValue]];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)setPZLogLevel:(CDVInvokedUrlCommand*)command {
    NSNumber* logLevel = [command.arguments objectAtIndex:0];
    [PZSpeedController setPZLogLevel:[logLevel intValue]];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)initializeAndActivatePZSpeed:(CDVInvokedUrlCommand*)command {

    NSString* appId = [command.arguments objectAtIndex:0];
    NSString* apiKey = [command.arguments objectAtIndex:1];
    NSNumber* shouldActivatePZ = [command.arguments objectAtIndex:2];

    PZSpeedController *speedController;
    speedController = [PZSpeedController controllerWithAppID:appId apiKey:apiKey activatePZ:[shouldActivatePZ boolValue]];

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

- (void)activatePZ:(CDVInvokedUrlCommand*)command {
    NSNumber* shouldActivatePZ = [command.arguments objectAtIndex:0];
    if ([shouldActivatePZ boolValue]) {
        [[PZSpeedController sharedController] activatePZ];
    }
    else {
        [[PZSpeedController sharedController] deactivatePZ];
    }
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:nil];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end
