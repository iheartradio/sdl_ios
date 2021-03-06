//
//  SDLWeatherAlert.m
//  SmartDeviceLink
//
//  Created by Nicole on 2/6/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLWeatherAlert.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLWeatherAlert

- (instancetype)initWithTitle:(nullable NSString *)title summary:(nullable NSString *)summary expires:(nullable SDLDateTime *)expires regions:(nullable NSArray<NSString *> *)regions severity:(nullable NSString *)severity timeIssued:(nullable SDLDateTime *)timeIssued {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.title = title;
    self.summary = summary;
    self.expires = expires;
    self.regions = regions;
    self.severity = severity;
    self.timeIssued = timeIssued;

    return self;
}

- (void)setTitle:(nullable NSString *)title {
    [store sdl_setObject:title forName:SDLRPCParameterNameTitle];
}

- (nullable NSString *)title {
    return [store sdl_objectForName:SDLRPCParameterNameTitle ofClass:NSString.class error:nil];
}

- (void)setSummary:(nullable NSString *)summary {
    [store sdl_setObject:summary forName:SDLRPCParameterNameSummary];
}

- (nullable NSString *)summary {
    return [store sdl_objectForName:SDLRPCParameterNameSummary ofClass:NSString.class error:nil];
}

- (void)setExpires:(nullable SDLDateTime *)expires {
    [store sdl_setObject:expires forName:SDLRPCParameterNameExpires];
}

- (nullable SDLDateTime *)expires {
    return [store sdl_objectForName:SDLRPCParameterNameExpires ofClass:SDLDateTime.class error:nil];
}

- (void)setRegions:(nullable NSArray<NSString *> *)regions {
    [store sdl_setObject:regions forName:SDLRPCParameterNameRegions];
}

- (nullable NSArray<NSString *> *)regions {
    return [store sdl_objectsForName:SDLRPCParameterNameRegions ofClass:NSString.class error:nil];
}

- (void)setSeverity:(nullable NSString *)severity {
    [store sdl_setObject:severity forName:SDLRPCParameterNameSeverity];
}

- (nullable NSString *)severity {
    return [store sdl_objectForName:SDLRPCParameterNameSeverity ofClass:NSString.class error:nil];
}

- (void)setTimeIssued:(nullable SDLDateTime *)timeIssued {
    [store sdl_setObject:timeIssued forName:SDLRPCParameterNameTimeIssued];
}

- (nullable SDLDateTime *)timeIssued {
    return [store sdl_objectForName:SDLRPCParameterNameTimeIssued ofClass:SDLDateTime.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
