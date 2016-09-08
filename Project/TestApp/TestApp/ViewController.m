//
//  ViewController.m
//  TestApp
//
//  Created by Akshay Bhalotia on 08/09/16.
//  Copyright © 2016 Akshay Bhalotia. All rights reserved.
//

#import "ViewController.h"

#import <TestLibrary/TestLibrary.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  TestLibrary *test = [TestLibrary new];
  BOOL load = [test confirmLoad];
  NSLog(@"%@", (load ? @"Load successful" : @"Not loaded yet"));
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
