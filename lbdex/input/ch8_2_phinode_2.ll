; ModuleID = 'ch8_2_phinode_2.cpp'
source_filename = "ch8_2_phinode_2.cpp"
target datalayout = "E-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "mips-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone mustprogress
define dso_local i32 @_Z12test_phinodeii(i32 signext %m, i32 signext %n) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %x, align 4
  %1 = load i32, i32* %m.addr, align 4
  store i32 %1, i32* %y, align 4
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %x, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %y, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %x, align 4
  %add1 = add nsw i32 %6, 2
  store i32 %add1, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %x, align 4
  %8 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %7, %8
  store i32 %mul, i32* %z, align 4
  %9 = load i32, i32* %z, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mips32r2" "target-features"="+mips32r2,-noabicalls" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1"}
