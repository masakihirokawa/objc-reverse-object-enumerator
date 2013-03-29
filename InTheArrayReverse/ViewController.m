//
//  ViewController.m
//  InTheArrayReverse
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //配列を生成する
  NSArray *myArray = [NSArray arrayWithObjects:
                      @"Apple",
                      @"Banana",
                      @"Orange",
                      nil];
  
  //順序付けされたセットを取得する
  NSOrderedSet *orderdSet;
  orderdSet = [NSOrderedSet orderedSetWithArray:myArray];
  
  //配列の後ろから順番に取得する列挙子を取得する
  NSEnumerator *enumerator = [myArray reserseObjectEnumerator];
  id value;
  
  //オブジェクトを順番に取得する
  NSLog(@"From myArray");
  while (value = [enumerator nextObject]) {
    NSLog(@"%@", value);
  }
  
  //順序付けされたセットの後ろから順番に取得する列挙子を取得する
  enumerator = [orderedSet reverseObjectsEnumerator];
  
  //各オブジェクトを取得する
  NSLog(@"From orderdSet");
  while (value = [enumerator nextObject]) {
    NSLog(@"%@", value);
  }
}

@end
