//
//  TestLibrary.m
//  TestLibrary
//
//  Created by Akshay Bhalotia on 08/09/16.
//  Copyright © 2016 Akshay Bhalotia. All rights reserved.
//

#import "TestLibrary.h"

#import <dlfcn.h>

#import <TestFramework/Test.h>

@implementation TestLibrary

- (BOOL)confirmLoad {

  if (![NSClassFromString(@"Test") working]) {
    NSLog(@"Not working yet.");
    return NO;
  }

  id tc = [[NSClassFromString(@"Test") alloc] init];

  return [tc objectsWorkingToo];
}

@end
