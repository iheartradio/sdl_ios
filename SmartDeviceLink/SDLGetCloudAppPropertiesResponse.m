//
//  SDLGetCloudAppPropertiesResponse.m
//  SmartDeviceLink
//
//  Created by Nicole on 2/26/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLGetCloudAppPropertiesResponse.h"

#import "NSMutableDictionary+Store.h"
#import "SDLCloudAppProperties.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"


NS_ASSUME_NONNULL_BEGIN

@implementation SDLGetCloudAppPropertiesResponse

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameGetCloudAppProperties]) {
    }
    return self;
}

- (instancetype)initWithProperties:(SDLCloudAppProperties *)properties {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.properties = properties;

    return self;
}

- (void)setProperties:(nullable SDLCloudAppProperties *)properties {
    [parameters sdl_setObject:properties forName:SDLRPCParameterNameProperties];
}

- (nullable SDLCloudAppProperties *)properties {
    return [parameters sdl_objectForName:SDLRPCParameterNameProperties ofClass:SDLCloudAppProperties.class error:nil];
}

@end

NS_ASSUME_NONNULL_END
