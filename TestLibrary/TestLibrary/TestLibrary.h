//
//  TestLibrary.h
//  TestLibrary
//
//  Created by Flandre on 2022/7/1.
//

#import <Foundation/Foundation.h>

// Version 1.0.0
@interface TestLibrary : NSObject

+ (void)initWithConfig:(NSString *)config;

+ (NSString *)version;

@end
