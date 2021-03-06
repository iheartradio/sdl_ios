//  SDLSubscribeButton.m
//


#import "SDLSubscribeButton.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLSubscribeButton

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameSubscribeButton]) {
    }
    return self;
}

- (instancetype)initWithHandler:(nullable SDLRPCButtonNotificationHandler)handler {
    self = [self init];
    if (!self) {
        return nil;
    }

    _handler = handler;

    return self;
}

- (instancetype)initWithButtonName:(SDLButtonName)buttonName handler:(nullable SDLRPCButtonNotificationHandler)handler {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.buttonName = buttonName;
    self.handler = handler;

    return self;
}

- (void)setButtonName:(SDLButtonName)buttonName {
    [parameters sdl_setObject:buttonName forName:SDLRPCParameterNameButtonName];
}

- (SDLButtonName)buttonName {
    NSError *error = nil;
    return [parameters sdl_enumForName:SDLRPCParameterNameButtonName error:&error];
}

-(id)copyWithZone:(nullable NSZone *)zone {
    SDLSubscribeButton *newButton = [super copyWithZone:zone];
    newButton->_handler = self.handler;

    return newButton;
}

@end

NS_ASSUME_NONNULL_END
