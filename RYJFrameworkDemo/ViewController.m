//
//  ViewController.m
//  RYJFrameworkDemo
//
//  Created by RyanYuan on 2019/2/14.
//  Copyright © 2019 RyanYuan. All rights reserved.
//

#import "ViewController.h"
#import "RYJMvcCollectionViewController.h"
#import "RYJMvpViewController.h"
#import "RYJMvvmViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
//    RYJMvcCollectionViewController *viewController = [[RYJMvcCollectionViewController alloc] initWithCollectionViewLayout:[UICollectionViewFlowLayout new]];
//    [self presentViewController:viewController animated:YES completion:nil];
    
//    RYJMvpViewController *viewController = [RYJMvpViewController new];
//    [self presentViewController:viewController animated:YES completion:nil];
    
    RYJMvvmViewController *viewController = [RYJMvvmViewController new];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end
