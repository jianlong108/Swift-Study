//
//  main.swift
//  类型转换
//
//  Created by 韩俊强 on 2017/6/1.
//  Copyright © 2017年 HaRi. All rights reserved.
//

import Foundation

/*
 Swift不允许隐式类型转换, 但可以使用显示类型转换(强制类型转换)
 OC:
 int intValue = 10;
 double doubleValue = (double)intValue;
 
 Swift:
 */


/*
 0x1000027a4 <+20>:  movq   $0xa, 0x1b69(%rip)        ; Swift51Overrides + 180  //10
 0x1000027af <+31>:  movl   %edi, -0x64(%rbp)
 0x1000027b2 <+34>:  movq   %rax, %rdi
 0x1000027b5 <+37>:  leaq   -0x18(%rbp), %rax
 0x1000027b9 <+41>:  movq   %rsi, -0x70(%rbp)
 0x1000027bd <+45>:  movq   %rax, %rsi
 0x1000027c0 <+48>:  movl   $0x20, %edx
 0x1000027c5 <+53>:  callq  0x100003d60               ; symbol stub for: swift_beginAccess
 0x1000027ca <+58>:  movq   0x1b47(%rip), %rax        ; 类型转换.intValue : Swift.Int  //10
 0x1000027d1 <+65>:  leaq   -0x18(%rbp), %rdi
 0x1000027d5 <+69>:  movq   %rax, -0x78(%rbp)
 0x1000027d9 <+73>:  callq  0x100003d6c               ; symbol stub for: swift_endAccess
 0x1000027de <+78>:  leaq   0x1b3b(%rip), %rax        ; 类型转换.doubleValue : Swift.Double //0x100004320
 0x1000027e5 <+85>:  xorl   %r8d, %r8d
 0x1000027e8 <+88>:  movl   %r8d, %ecx
 0x1000027eb <+91>:  movq   -0x78(%rbp), %rdx
 0x1000027ef <+95>:  cvtsi2sd %rdx, %xmm0
 0x1000027f4 <+100>: movq   %rax, %rdi
 0x1000027f7 <+103>: leaq   -0x30(%rbp), %rsi
 0x1000027fb <+107>: movl   $0x21, %edx
 0x100002800 <+112>: movsd  %xmm0, -0x80(%rbp)
 0x100002805 <+117>: callq  0x100003d60               ; symbol stub for: swift_beginAccess
 0x10000280a <+122>: movsd  -0x80(%rbp), %xmm0        ; xmm0 = mem[0],zero
 0x10000280f <+127>: movsd  %xmm0, 0x1b09(%rip)       ; 类型转换.doubleValue : Swift.Double
 0x100002817 <+135>: leaq   -0x30(%rbp), %rdi
 0x10000281b <+139>: callq  0x100003d6c               ; symbol stub for: swift_endAccess
 0x100002820 <+144>: movq   0x17f1(%rip), %rax        ; (void *)0x00007fff815dca28: type metadata for Any
 0x100002827 <+151>: addq   $0x8, %rax
 */
var intValue:Int = 10
var doubleValue:Double
doubleValue = Double(intValue)



// 注意:Double()并不会修改intValue的值, 而是通过intValue的值生成一个临时的值赋值给doubleValue
print(intValue)
print(doubleValue)



