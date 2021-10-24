declare <8 x i8> @llvm.x86.ssse3.pabs.b(<8 x i8>)
declare <8 x i8> @llvm.abs.v8i8(<8 x i8>, i1 immarg)

define <8 x i8> @src() {
  %1 = call <8 x i8> @llvm.x86.ssse3.pabs.b(<8 x i8> <i8 1, i8 -2, i8 -3, i8 4, i8 5, i8 -6, i8 -7, i8 8>)
  ret <8 x i8> %1
}

define <8 x i8> @tgt() {
  ret <8 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>
}