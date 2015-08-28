//
//  WrittenAssessment.m
//  Unit-1-Assessment
//
//  Created by 👨🏻 on 8/21/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

//start Time: 12:45PM
//end Time: 1:09PM

#import "WrittenAssessment.h"

@implementation WrittenAssessment

// Create and return an NSDictionary * with at least 1 key value entry

- (NSDictionary *)createAndReturnNSDictionary {
    NSDictionary * henna = @{
                             @"Name" : @"Henna"
                             };
    return henna;
}

// Create and return an NSDictionary * with the following key value entries"
//   name : Carl (NSString)
//   age  : 48 (NSNumber)
//   job  : YMCA (NSString)
//   kids : 8 (NSNumber)
//   mustache : YES (BOOL)

//NOTE: if I try to capitalize the Keys, the text fails. Also, maybe add a hint that NSDictionaries dont take primitive types

- (NSDictionary *)createAndReturnCarlDictionary {
    NSDictionary *carl = @{
                           @"name" : @"Carl",
                           @"age" : @48,
                           @"job" : @"YMCA",
                           @"kids" : @8,
                           @"mustache" : [NSNumber numberWithBool:YES]
                           };
    return carl;
}

// In this method you are passed an NSDictionary * as a parameter. Your job is to return
// a new dictionary that contains the contents of the `dictionaryToMerge` AS WELL AS a new
// entry with the following key/value
//   food : cheetos

- (NSDictionary *)mergeDictionaries:(NSDictionary *)dictionaryToMerge {
    NSMutableDictionary* copy = [[[NSDictionary alloc] initWithDictionary:dictionaryToMerge]mutableCopy];
    [copy addEntriesFromDictionary: @{@"food" : @"cheetos"}];
    
    NSDictionary *dictionaryToReturn = [NSDictionary dictionaryWithDictionary:copy];
    
    return dictionaryToReturn;
}

// Return all of the keys in the dictionary `thisIsTheDictionary`

- (NSArray *)returnAllKeysInTheDictionary:(NSDictionary *)thisIsTheDictionary {
    return [thisIsTheDictionary allKeys];
}

@end
