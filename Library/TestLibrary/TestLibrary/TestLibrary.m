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
  void *dlhandle = dlopen("Test.framework/Test", RTLD_LAZY | RTLD_LOCAL);

  if (![NSClassFromString(@"Test") working]) {
    NSLog(@"Not working yet.");
    return NO;
  }

  id tc = [[NSClassFromString(@"Test") alloc] init];

  dlclose(dlhandle);

  return [tc objectsWorkingToo];
}

@end
