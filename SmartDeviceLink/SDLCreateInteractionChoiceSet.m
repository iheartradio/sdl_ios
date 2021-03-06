//  SDLCreateInteractionChoiceSet.m
//


#import "SDLCreateInteractionChoiceSet.h"

#import "NSMutableDictionary+Store.h"
#import "SDLChoice.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLCreateInteractionChoiceSet

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameCreateInteractionChoiceSet]) {
    }
    return self;
}

- (instancetype)initWithId:(UInt32)choiceId choiceSet:(NSArray<SDLChoice *> *)choiceSet {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.interactionChoiceSetID = @(choiceId);
    self.choiceSet = [choiceSet mutableCopy];
    return self;
}

- (void)setInteractionChoiceSetID:(NSNumber<SDLInt> *)interactionChoiceSetID {
    [parameters sdl_setObject:interactionChoiceSetID forName:SDLRPCParameterNameInteractionChoiceSetId];
}

- (NSNumber<SDLInt> *)interactionChoiceSetID {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameInteractionChoiceSetId ofClass:NSNumber.class error:&error];
}

- (void)setChoiceSet:(NSArray<SDLChoice *> *)choiceSet {
    [parameters sdl_setObject:choiceSet forName:SDLRPCParameterNameChoiceSet];
}

- (NSArray<SDLChoice *> *)choiceSet {
    NSError *error = nil;
    return [parameters sdl_objectsForName:SDLRPCParameterNameChoiceSet ofClass:SDLChoice.class error:&error];
}

@end

NS_ASSUME_NONNULL_END
