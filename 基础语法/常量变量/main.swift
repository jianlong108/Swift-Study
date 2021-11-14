//
//  main.swift
//  常量变量
//
//  Created by 韩俊强 on 2017/6/1.
//  Copyright © 2017年 HaRi. All rights reserved.
//

import Foundation
/*
 “使用let来声明常量，使用var来声明变量”
 
 变量:
 OC:
 >先定义再初始化
 int num;
 num = 10;
 
 >定义的同时初始化
 int num2 = 20;
 
 Swift:
 >先定义再初始化
 var num
 报错: 没有指定数据类型(type annotation missing in pattern), 在Swift中如果想要先定义一个变量, 以后使用时再初始化必须在定义时告诉编译器变量的类型(类型标注)
 */
var num: Int
num = 10;

/*
 >定义的同时初始化
 在Swift中如果定义的同时初始化一个变量,可以不用写数据类型, 编译期会根据初始化的值自动推断出变量的类型(其它语言是没有类型推断的)
 以后在开发中如果在定义的同时初始化就没有必要指定数据类型, 除非需要明确数据类型的长度或者定义时不初始化才需要指定数据类型
 */
var num2:Int = 20
var num3 = 20

/*
 “你可以用任何你喜欢的字符作为常量和变量名，包括 Unicode 字符：”
 “常量与变量名不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符。也不能以数字开头，但是可以在常量与变量名的其他地方包含数字。”
 错误:
 var 3x = 10
 var x+-3 = 10
 */
var 🐥 = 100
var 嘿嘿 = 200

/*
 常量:
 OC: const int num = 10;
 Swift: let num = 10
 
 错误:
 let num : Int
 Swift中的常量必须在定义时初始化(OC可以不初始化), 否则会报错
 常量的用途: 某些值以后不需要改变, 例如身份证
 */

/*
 
 0x100002375 <+53>:   movq   $0xa, 0x1f98(%rip)        ; Swift51Overrides + 180
 0x100002380 <+64>:   leaq   -0x18(%rbp), %rdi
 0x100002384 <+68>:   callq  0x100003d5c               ; symbol stub for: swift_endAccess
 0x100002389 <+73>:   movq   0x1c88(%rip), %rax        ; (void *)0x00007fff815dca28: type metadata for Any
 0x100002390 <+80>:   addq   $0x8, %rax
 0x100002396 <+86>:   movq   $0x14, 0x1f7f(%rip)       ; 常量变量.num : Swift.Int + 4
 0x1000023a1 <+97>:   movq   $0x14, 0x1f7c(%rip)       ; 常量变量.num2 : Swift.Int + 4
 0x1000023ac <+108>:  movq   $0x64, 0x1f79(%rip)       ; 常量变量.num3 : Swift.Int + 4
 0x1000023b7 <+119>:  movq   $0xc8, 0x1f76(%rip)       ; 常量变量.🐥 : Swift.Int + 4
 0x1000023c2 <+130>:  movq   $0xa, 0x1f73(%rip)        ; 常量变量.嘿嘿 : Swift.Int + 4
 */
let num4 = 10
print(num)
print(num2)
print(num3)
print(🐥)
print(嘿嘿)
print(num4)


/*
 输出:
 C: printf("Hello, World!");
 OC:NSLog(@"Hello, World!");
 Swift1.2:println("Hello, World!")
 Swift3.0:print("Hello, World!")
 */
print("Hello, World!")
