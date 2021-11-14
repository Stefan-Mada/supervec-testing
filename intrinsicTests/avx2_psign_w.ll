; ModuleID = 'function.cpp'
source_filename = "function.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare <16 x i16> @llvm.x86.avx2.psign.w(<16 x i16>, <16 x i16>)


; Function Attrs: nounwind readnone uwtable
define dso_local <4 x i64> @src(<4 x i64> %0, <4 x i64> %1) local_unnamed_addr #0 {
  %3 = alloca <4 x i64>, align 32
  %4 = alloca <4 x i64>, align 32
  store <4 x i64> %0, <4 x i64>* %3, align 32
  store <4 x i64> %1, <4 x i64>* %4, align 32
  %5 = bitcast <4 x i64>* %3 to i16*
  %6 = bitcast <4 x i64>* %4 to i16*
  %7 = bitcast <4 x i64> %1 to <16 x i16>
  %8 = extractelement <16 x i16> %7, i32 0
  %9 = icmp slt i16 %8, 0
  %10 = bitcast <4 x i64> %0 to <16 x i16>
  %11 = extractelement <16 x i16> %10, i32 0
  %12 = bitcast <4 x i64> %1 to <16 x i16>
  %13 = extractelement <16 x i16> %12, i32 1
  %14 = bitcast <4 x i64> %0 to <16 x i16>
  %15 = extractelement <16 x i16> %14, i32 1
  %16 = bitcast <4 x i64> %1 to <16 x i16>
  %17 = extractelement <16 x i16> %16, i32 2
  %18 = bitcast <4 x i64> %0 to <16 x i16>
  %19 = extractelement <16 x i16> %18, i32 2
  %20 = bitcast <4 x i64> %1 to <16 x i16>
  %21 = extractelement <16 x i16> %20, i32 3
  %22 = bitcast <4 x i64> %0 to <16 x i16>
  %23 = extractelement <16 x i16> %22, i32 3
  %24 = bitcast <4 x i64> %1 to <16 x i16>
  %25 = extractelement <16 x i16> %24, i32 4
  %26 = bitcast <4 x i64> %0 to <16 x i16>
  %27 = extractelement <16 x i16> %26, i32 4
  %28 = bitcast <4 x i64> %1 to <16 x i16>
  %29 = extractelement <16 x i16> %28, i32 5
  %30 = bitcast <4 x i64> %0 to <16 x i16>
  %31 = extractelement <16 x i16> %30, i32 5
  %32 = bitcast <4 x i64> %1 to <16 x i16>
  %33 = extractelement <16 x i16> %32, i32 6
  %34 = bitcast <4 x i64> %0 to <16 x i16>
  %35 = extractelement <16 x i16> %34, i32 6
  %36 = bitcast <4 x i64> %1 to <16 x i16>
  %37 = extractelement <16 x i16> %36, i32 7
  %38 = bitcast <4 x i64> %0 to <16 x i16>
  %39 = extractelement <16 x i16> %38, i32 7
  %40 = bitcast <4 x i64> %1 to <16 x i16>
  %41 = extractelement <16 x i16> %40, i32 8
  %42 = bitcast <4 x i64> %0 to <16 x i16>
  %43 = extractelement <16 x i16> %42, i32 8
  %44 = bitcast <4 x i64> %1 to <16 x i16>
  %45 = extractelement <16 x i16> %44, i32 9
  %46 = bitcast <4 x i64> %0 to <16 x i16>
  %47 = extractelement <16 x i16> %46, i32 9
  %48 = bitcast <4 x i64> %1 to <16 x i16>
  %49 = extractelement <16 x i16> %48, i32 10
  %50 = bitcast <4 x i64> %0 to <16 x i16>
  %51 = extractelement <16 x i16> %50, i32 10
  %52 = sub i16 0, %11
  %53 = icmp eq i16 %8, 0
  %54 = select i1 %53, i16 0, i16 %11
  %55 = select i1 %9, i16 %52, i16 %54
  %56 = icmp slt i16 %13, 0
  %57 = sub i16 0, %15
  %58 = icmp eq i16 %13, 0
  %59 = select i1 %58, i16 0, i16 %15
  %60 = select i1 %56, i16 %57, i16 %59
  %61 = icmp slt i16 %17, 0
  %62 = sub i16 0, %19
  %63 = icmp eq i16 %17, 0
  %64 = select i1 %63, i16 0, i16 %19
  %65 = select i1 %61, i16 %62, i16 %64
  %66 = icmp slt i16 %21, 0
  %67 = sub i16 0, %23
  %68 = icmp eq i16 %21, 0
  %69 = select i1 %68, i16 0, i16 %23
  %70 = select i1 %66, i16 %67, i16 %69
  %71 = icmp slt i16 %25, 0
  %72 = sub i16 0, %27
  %73 = icmp eq i16 %25, 0
  %74 = select i1 %73, i16 0, i16 %27
  %75 = select i1 %71, i16 %72, i16 %74
  %76 = icmp slt i16 %29, 0
  %77 = sub i16 0, %31
  %78 = icmp eq i16 %29, 0
  %79 = select i1 %78, i16 0, i16 %31
  %80 = select i1 %76, i16 %77, i16 %79
  %81 = icmp slt i16 %33, 0
  %82 = sub i16 0, %35
  %83 = icmp eq i16 %33, 0
  %84 = select i1 %83, i16 0, i16 %35
  %85 = select i1 %81, i16 %82, i16 %84
  %86 = icmp slt i16 %37, 0
  %87 = sub i16 0, %39
  %88 = icmp eq i16 %37, 0
  %89 = select i1 %88, i16 0, i16 %39
  %90 = select i1 %86, i16 %87, i16 %89
  %91 = icmp slt i16 %41, 0
  %92 = sub i16 0, %43
  %93 = icmp eq i16 %41, 0
  %94 = select i1 %93, i16 0, i16 %43
  %95 = select i1 %91, i16 %92, i16 %94
  %96 = icmp slt i16 %45, 0
  %97 = sub i16 0, %47
  %98 = icmp eq i16 %45, 0
  %99 = select i1 %98, i16 0, i16 %47
  %100 = select i1 %96, i16 %97, i16 %99
  %101 = icmp slt i16 %49, 0
  %102 = getelementptr inbounds i16, i16* %5, i64 10
  %103 = load i16, i16* %102, align 4
  %104 = sub i16 0, %103
  %105 = icmp eq i16 %49, 0
  %106 = select i1 %105, i16 0, i16 %51
  %107 = select i1 %101, i16 %104, i16 %106
  %108 = getelementptr inbounds i16, i16* %6, i64 11
  %109 = load i16, i16* %108, align 2
  %110 = icmp slt i16 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %2
  %112 = icmp eq i16 %109, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds i16, i16* %5, i64 11
  %115 = load i16, i16* %114, align 2
  br label %120

116:                                              ; preds = %2
  %117 = getelementptr inbounds i16, i16* %5, i64 11
  %118 = load i16, i16* %117, align 2
  %119 = sub i16 0, %118
  br label %120

120:                                              ; preds = %116, %113, %111
  %121 = phi i16 [ %119, %116 ], [ %115, %113 ], [ 0, %111 ]
  %122 = getelementptr inbounds i16, i16* %6, i64 12
  %123 = load i16, i16* %122, align 8
  %124 = icmp slt i16 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = icmp eq i16 %123, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds i16, i16* %5, i64 12
  %129 = load i16, i16* %128, align 8
  br label %134

130:                                              ; preds = %120
  %131 = getelementptr inbounds i16, i16* %5, i64 12
  %132 = load i16, i16* %131, align 8
  %133 = sub i16 0, %132
  br label %134

134:                                              ; preds = %130, %127, %125
  %135 = phi i16 [ %133, %130 ], [ %129, %127 ], [ 0, %125 ]
  %136 = getelementptr inbounds i16, i16* %6, i64 13
  %137 = load i16, i16* %136, align 2
  %138 = icmp slt i16 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = icmp eq i16 %137, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds i16, i16* %5, i64 13
  %143 = load i16, i16* %142, align 2
  br label %148

144:                                              ; preds = %134
  %145 = getelementptr inbounds i16, i16* %5, i64 13
  %146 = load i16, i16* %145, align 2
  %147 = sub i16 0, %146
  br label %148

148:                                              ; preds = %144, %141, %139
  %149 = phi i16 [ %147, %144 ], [ %143, %141 ], [ 0, %139 ]
  %150 = getelementptr inbounds i16, i16* %6, i64 14
  %151 = load i16, i16* %150, align 4
  %152 = icmp slt i16 %151, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = icmp eq i16 %151, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %153
  %156 = getelementptr inbounds i16, i16* %5, i64 14
  %157 = load i16, i16* %156, align 4
  br label %162

158:                                              ; preds = %148
  %159 = getelementptr inbounds i16, i16* %5, i64 14
  %160 = load i16, i16* %159, align 4
  %161 = sub i16 0, %160
  br label %162

162:                                              ; preds = %158, %155, %153
  %163 = phi i16 [ %161, %158 ], [ %157, %155 ], [ 0, %153 ]
  %164 = getelementptr inbounds i16, i16* %6, i64 15
  %165 = load i16, i16* %164, align 2
  %166 = icmp slt i16 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = icmp eq i16 %165, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds i16, i16* %5, i64 15
  %171 = load i16, i16* %170, align 2
  br label %176

172:                                              ; preds = %162
  %173 = getelementptr inbounds i16, i16* %5, i64 15
  %174 = load i16, i16* %173, align 2
  %175 = sub i16 0, %174
  br label %176

176:                                              ; preds = %172, %169, %167
  %177 = phi i16 [ %175, %172 ], [ %171, %169 ], [ 0, %167 ]
  %178 = insertelement <16 x i16> undef, i16 %55, i32 0
  %179 = insertelement <16 x i16> %178, i16 %60, i32 1
  %180 = insertelement <16 x i16> %179, i16 %65, i32 2
  %181 = insertelement <16 x i16> %180, i16 %70, i32 3
  %182 = insertelement <16 x i16> %181, i16 %75, i32 4
  %183 = insertelement <16 x i16> %182, i16 %80, i32 5
  %184 = insertelement <16 x i16> %183, i16 %85, i32 6
  %185 = insertelement <16 x i16> %184, i16 %90, i32 7
  %186 = insertelement <16 x i16> %185, i16 %95, i32 8
  %187 = insertelement <16 x i16> %186, i16 %100, i32 9
  %188 = insertelement <16 x i16> %187, i16 %107, i32 10
  %189 = insertelement <16 x i16> %188, i16 %121, i32 11
  %190 = insertelement <16 x i16> %189, i16 %135, i32 12
  %191 = insertelement <16 x i16> %190, i16 %149, i32 13
  %192 = insertelement <16 x i16> %191, i16 %163, i32 14
  %193 = insertelement <16 x i16> %192, i16 %177, i32 15
  %194 = bitcast <16 x i16> %193 to <4 x i64>
  ret <4 x i64> %194
}

; Function Attrs: nounwind readnone uwtable
define dso_local <4 x i64> @tgt(<4 x i64> %0, <4 x i64> %1) local_unnamed_addr #0 {
  %3 = bitcast <4 x i64> %0 to <16 x i16>
  %4 = bitcast <4 x i64> %1 to <16 x i16>
  %5 = tail call <16 x i16> @llvm.x86.avx2.psign.w(<16 x i16> %3, <16 x i16> %4) #2
  %6 = bitcast <16 x i16> %5 to <4 x i64>
  ret <4 x i64> %6
}




attributes #0 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="256" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
