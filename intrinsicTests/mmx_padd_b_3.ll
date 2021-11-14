declare <8 x i8> @llvm.x86.mmx.padd.b(<8 x i8>, <8 x i8>)

define <8 x i8> @funct(<8 x i8> %a, <8 x i8> %b) {
  %1 = call <8 x i8> @llvm.x86.mmx.padd.b(<8 x i8> %a, <8 x i8> %b)
  %2 = call <8 x i8> @llvm.x86.mmx.padd.b(<8 x i8> %1, <8 x i8> %b)
  %3 = call <8 x i8> @llvm.x86.mmx.padd.b(<8 x i8> %2, <8 x i8> %b)
  %4 = call <8 x i8> @llvm.x86.mmx.padd.b(<8 x i8> %3, <8 x i8> %b)
  ret <8 x i8> %4
}
