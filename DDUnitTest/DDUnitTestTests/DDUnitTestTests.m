//
//  DDUnitTestTests.m
//  DDUnitTestTests
//
//  Created by deepindo on 2017/5/7.
//  Copyright © 2017年 deepindo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface DDUnitTestTests : XCTestCase

@property(nonatomic, strong) ViewController *vc;

@end

@implementation DDUnitTestTests

- (void)setUp {
    [super setUp];
    
    // 实例化需要测试的类
    self.vc = [[ViewController alloc] init];
}

- (void)tearDown {
    //清空
    self.vc = nil;
    
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}


- (void)testMyFuc {
    
    // 调用需要测试的方法，
    int result = [self.vc getResult];
    // 如果不相等则会提示@“测试不通过”
    XCTAssertEqual(result, 250,@"测试不通过");
}

@end
