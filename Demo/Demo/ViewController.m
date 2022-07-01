//
//  ViewController.m
//  Demo
//
//  Created by Flandre on 2022/7/1.
//

#import "ViewController.h"
#import "TestLibrary.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [TestLibrary initWithConfig:@"123"];
}


@end
