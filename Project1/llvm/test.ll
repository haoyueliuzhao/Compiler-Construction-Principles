target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
; 声明 SysY 库中的输入输出函数
declare i32 @getint()                ; 声明获取整数输入的函数
declare void @putint(i32)            ; 声明输出整数的函数
declare void @putch(i32)             ; 声明输出单个字符的函数

@p = constant float 3.0              ; 声明常量 p 的值为 3.0
@array1 = global [4 x i32] [i32 1, i32 2, i32 3, i32 4] ; 声明并初始化全局数组 array1

; 定义函数 f，接受一个整数参数 t，返回一个整数
define i32 @f(i32 %t) {
entry:
    %temp = alloca i32, align 4      ; 分配内存用于存储 temp
    store i32 0, i32* %temp, align 4 ; 初始化 temp 为 0
    %i = alloca i32, align 4         ; 分配内存用于循环变量 i
    store i32 0, i32* %i, align 4    ; 初始化 i 为 0
    br label %loop                   ; 跳转到循环标签

loop:
    %0 = load i32, i32* %i, align 4   ; 加载 i 的当前值
    %cmp = icmp slt i32 %0, 4          ; 判断 i < 4
    br i1 %cmp, label %loop_body, label %loop_end ; 根据条件跳转到循环体或结束

loop_body:                           ; 循环体标签
    %1 = load i32, i32* %i, align 4    ; 加载当前 i 的值
    %arrayidx = getelementptr [4 x i32], [4 x i32]* @array1, i32 0, i32 %1 ; 计算 array1[i] 的地址
    %arrayelem = load i32, i32* %arrayidx, align 4 ; 加载 array1[i] 的值
    %2 = load i32, i32* %temp, align 4 ; 加载 temp 的当前值
    %add = add i32 %2, %arrayelem      ; temp += array1[i]
    store i32 %add, i32* %temp, align 4 ; 更新 temp 的值

    %3 = load i32, i32* %i, align 4     ; 加载当前 i 的值
    %inc = add i32 %3, 1                ; i++
    store i32 %inc, i32* %i, align 4    ; 更新 i 的值
    br label %loop                       ; 跳回循环开始

loop_end:                            ; 循环结束标签
    %4 = load i32, i32* %temp, align 4 ; 加载 temp 的最终值
    %mul = mul i32 %t, %4              ; 计算 t * temp
    %p_load = load float, float* @p, align 4 ; 加载常量 p 的值
    %p_int = fptosi float %p_load to i32 ; 将浮点数 p 转换为整数
    %result = add i32 %mul, %p_int      ; 计算结果 result = t * temp + (int)p
    ret i32 %result                     ; 返回结果
}

; 定义主函数 main
define i32 @main() {
entry:
    %x = alloca i32, align 4           ; 分配内存用于存储输入 x
    %a = alloca i32, align 4           ; 分配内存用于存储变量 a
    %b = alloca i32, align 4           ; 分配内存用于存储变量 b
    store i32 12, i32* %a, align 4     ; 初始化 a 为 12
    store i32 11, i32* %b, align 4     ; 初始化 b 为 11

    ; 获取用户输入 x
    %0 = call i32 @getint()            ; 调用 getint 函数获取输入
    store i32 %0, i32* %x, align 4      ; 将输入存储到 x

    ; 进行条件判断 (a > 0 || (b = b + 1))
    %1 = load i32, i32* %a, align 4     ; 加载 a 的当前值
    %cmp = icmp sgt i32 %1, 0            ; 判断 a > 0
    br i1 %cmp, label %true_block, label %false_block ; 根据条件跳转

true_block:                           ; 当 a > 0 时执行
    %2 = load i32, i32* %x, align 4     ; 加载 x 的当前值
    %inc_x = add i32 %2, 1              ; x++
    store i32 %inc_x, i32* %x, align 4  ; 更新 x 的值
    br label %cond_end                  ; 跳转到条件结束部分

false_block:                          ; 当 a <= 0 时执行
    %3 = load i32, i32* %b, align 4     ; 加载 b 的当前值
    %inc_b = add i32 %3, 1              ; b++
    store i32 %inc_b, i32* %b, align 4  ; 更新 b 的值
    br label %cond_end                  ; 跳转到条件结束部分

cond_end:                             ; 条件结束标签
    %4 = load i32, i32* %b, align 4     ; 加载 b 的值
    call void @putint(i32 %4)           ; 输出 b 的值
    call void @putch(i32 10)            ; 输出换行符

    %5 = load i32, i32* %x, align 4     ; 加载 x 的值
    call void @putint(i32 %5)           ; 输出 x 的值
    call void @putch(i32 10)            ; 输出换行符

    ; 调用 f 函数并输出结果
    %6 = load i32, i32* %x, align 4     ; 加载 x 的值
    %7 = call i32 @f(i32 %6)            ; 调用 f(x)
    call void @putint(i32 %7)           ; 输出 f(x) 的结果
    call void @putch(i32 10)            ; 输出换行符

    ret i32 0                            ; 返回 0，表示程序成功结束
}


