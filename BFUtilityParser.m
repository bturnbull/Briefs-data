//
//  BFUtilityParser.m
//  Briefs
//
//  Created by Rob Rhyne on 8/22/09.
//  Copyright Digital Arch Design, 2009. See LICENSE file for details.
//


#import "BFUtilityParser.h"
#import "BFConstants.h"


@implementation BFUtilityParser


///////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Action Parse Methods

+ (NSString *)parseActionCommand:(NSString *)action
{
    NSString *lowered = [action lowercaseString];
    
    if ([lowered hasPrefix:kBFActorActionGoto]) {
        return kBFActorActionGoto;
        
    } else if ([lowered hasPrefix:kBFActorActionToggle]) {
        return kBFActorActionToggle;
        
    } else if ([lowered hasPrefix:kBFActorActionResize]) {
        return kBFActorActionResize;
        
    } else if ([lowered hasPrefix:kBFActorActionMove]) {
        return kBFActorActionMove;
    }
    
    // TODO: throw exception?
    return nil;
}


+ (NSArray *)parseActionArgsIntoArray:(NSString *)action withPrefix:(NSString *)prefix
{
    // normalize the action string
    NSString *lowered = [[action lowercaseString] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]; 
    
    NSRange start = [lowered rangeOfString:@"("];
    NSRange end = [lowered rangeOfString:@")"];
    
    NSString *argumentsAsString = [[lowered substringToIndex:end.location] substringFromIndex:start.location+1];
    NSArray *argumentsAsArray = [argumentsAsString componentsSeparatedByString:@","];
    
    return argumentsAsArray;
}

///////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Scene Transition Parse Methods

+ (NSString *)parseSceneTransitionCommand:(NSString *)transition
{
    // TODO: Do something here.
    return nil;
}

+ (NSArray  *)parseSceneTransitionOptionsIntoArray:(NSString *)transition withPrefix:(NSString *)prefix
{
    // TODO: Do something here.
    return nil;
}

///////////////////////////////////////////////////////////////////////////////



@end
