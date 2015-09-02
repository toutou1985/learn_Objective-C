//
//  main.m
//  Hello Objective-C
//
//  Created by 劉海涛 on 2015/09/02.
//  Copyright (c) 2015年 monstar. All rights reserved.
//

#import <Foundation/Foundation.h>

//错误的写法：虽然不会造成编译错误，但是却会造成逻辑错误
BOOL areIntsDifferent_wrong(int thing1,int thing2){
    return (thing1 - thing2);
}

//正确的写法：没有逻辑错误。
BOOL areIntsDifferent(int thing1,int thing2){
    if(thing1 != thing2){
        return YES;
    }else{
        return NO;
    }
}

NSString *boolString(BOOL yesNo){
    if(yesNo == YES){
        return @"YES";
    }else{
        return @"NO";
    }
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString * str1 = @"Hello,chapter2!";
        NSLog(@"%@",str1);
        
        //BOOL实际上是一种对带符号的字符类型（signed char）的类型定义（typedef）,它使用8位的存储空间
        //YES定义为整形值1，NO定义为整形值0
        BOOL isStr1ContainCha = [str1 containsString:@"cha"];
        if(isStr1ContainCha == YES){
            NSLog(@"str1 contains cha string");
        }
        
        BOOL a = areIntsDifferent_wrong(3,1);
        NSLog(@"%d",a);
        //以下例子说明了areIntsDifferent_wrong是错误的：3和1不同，却输出了两者相同的信息。
        if(areIntsDifferent_wrong(3,1) == YES){
            NSLog(@"3 and 1 are different.");
        }else{
            NSLog(@"3 and 1 are same.");
        }
        
        //以下例子是调用正确方法的例子
        if(areIntsDifferent(3,1) == YES){
            NSLog(@"3 and 1 are different.");
        }else{
            NSLog(@"3 and 1 are same.");
        }
        
        int thing1 = 3;
        int thing2 = 1;
        NSLog(@"%d and %d are different? %@",thing1,thing2,boolString(areIntsDifferent(thing1, thing2)));
        
    }
    return 0;
}
