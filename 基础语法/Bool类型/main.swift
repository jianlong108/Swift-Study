//
//  main.swift
//  Bool类型
//
//  Created by 韩俊强 on 2017/6/1.
//  Copyright © 2017年 HaRi. All rights reserved.
//

import Foundation

/*
 C语言和OC并没有真正的Bool类型
 C语言的Bool类型非0即真
 OC语言的Bool类型是typedef signed char BOOL;
 Swift引入了真正的Bool类型
 Bool true false
 */

let isOpen = true
// let isOpen = 1;
// Swift中的if的条件只能是一个Bool的值或者是返回值是Bool类型的表达式(==/!=/>/<等等)
// OC中if可以是任何整数(非0即真), 但是存在的问题是可能将判断写错, 写成赋值 if(isOpen = 2), 在开发中为了避免这个问题有经验的程序员会这样写 if(2 == isOpen) 来避免这个问题. 在Swift中很好的解决了这个问题

/*
 0x1000028c8 <+8>:   movb   $0x1, 0x1a31(%rip)        ; Swift51Overrides + 183
->  0x1000028cf <+15>:  testb  $0x1, 0x1a2a(%rip)        ; Swift51Overrides + 183
 0x1000028d6 <+22>:  jne    0x1000028dd               ; <+29> at main.swift
 0x1000028d8 <+24>:  jmp    0x10000297e               ; <+190> at main.swift
 */

if isOpen
{
    print("open")
}else
{
    print("close")
}

