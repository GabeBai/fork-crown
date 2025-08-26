; ModuleID = '/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_fini.rs.bc'
source_filename = "csv_fini.8c80577b-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%CsvParser = type { i64, %"core::option::Option<alloc::vec::Vec<u8>>", i64, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i64, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, { {}*, [3 x i64]* }, i32, i32, i32, i8, i8, i8, [1 x i8] }
%"core::option::Option<alloc::vec::Vec<u8>>" = type { {}*, [2 x i64] }
%"core::option::Option<alloc::vec::Vec<u8>>::Some" = type { %"alloc::vec::Vec<u8>" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc28 = private unnamed_addr constant <{ [119 x i8] }> <{ [119 x i8] c"/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_fini.rs" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\001\00\00\00\11\00\00\00" }>, align 8
@str.0 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc25 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\005\00\00\00\15\00\00\00" }>, align 8
@alloc3 = private unnamed_addr constant <{}> zeroinitializer, align 1
@alloc27 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\00+\00\00\00\1C\00\00\00" }>, align 8
@str.1 = internal constant [28 x i8] c"attempt to add with overflow"
@alloc29 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [119 x i8] }>, <{ [119 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [16 x i8] c"w\00\00\00\00\00\00\00+\00\00\00\0D\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h47a37af23f5857b2E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd5dbd95aad18ca51E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hca962428b9837302E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h994ffb25205cb15fE(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17had7498031e7882f1E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h65f087836b2cfdfcE"(i8* %self) unnamed_addr #0 {
start:
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc4643fbcd5479a0dE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h729a77ec0c34e8bdE"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !2, !noundef !3
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha8061e487156ec07E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %1 = bitcast {}** %0 to i64*
  store i64 0, i64* %1, align 8
  %2 = load {}*, {}** %0, align 8
  %3 = call i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf3a85c90f650ec47E({}* %2)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h729a77ec0c34e8bdE"(i8* %self, i8* %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %4
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hca962428b9837302E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17had7498031e7882f1E({}* %data_address, i64 %metadata) unnamed_addr #0 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8* @_ZN4core3ptr8metadata18from_raw_parts_mut17hf3a85c90f650ec47E({}* %data_address) unnamed_addr #0 {
start:
  %_4 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds %"core::ptr::metadata::PtrComponents<u8>", %"core::ptr::metadata::PtrComponents<u8>"* %_4, i32 0, i32 1
  %2 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to %"core::ptr::metadata::PtrComponents<u8>"*
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %2 to i8*
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false)
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_3 to i8**
  %6 = load i8*, i8** %5, align 8
  ret i8* %6
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc4643fbcd5479a0dE"(i8* %self) unnamed_addr #0 {
start:
  ret i8* %self
}

; Function Attrs: inlinehint nonlazybind uwtable
define {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd5dbd95aad18ca51E"(i8* %self) unnamed_addr #0 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h568fd219c61cb2a9E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h47a37af23f5857b2E(i8* %data, i64 %len)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h2b37501450c46976E(i8* %data, i64 %len) unnamed_addr #0 {
start:
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h994ffb25205cb15fE(i8* %data, i64 %len)
  %_7.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_7.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_7.1, 1
  ret { [0 x i8]*, i64 } %2
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 1 i8* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb7eff4826b4cbbfcE"([0 x i8]* align 1 %self.0, i64 %self.1, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_4 = call align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h602f3f4a7e42eb24E"(i64 %index, [0 x i8]* align 1 %self.0, i64 %self.1, %"core::panic::location::Location"* align 8 %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %_4
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h00365c7e58e62d68E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6f4ce603ad80ffc9E"({ i8*, i64 }* align 8 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha8061e487156ec07E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h4d703fd79336efd7E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6f4ce603ad80ffc9E"({ i8*, i64 }* align 8 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha8061e487156ec07E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6f4ce603ad80ffc9E"({ i8*, i64 }* align 8 %self) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !3, !noundef !3
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h65f087836b2cfdfcE"(i8* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0d58e887f6c6dfa3E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h4d703fd79336efd7E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h568fd219c61cb2a9E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; Function Attrs: inlinehint nonlazybind uwtable
define { [0 x i8]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h75ea6194b3be09c9E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #0 {
start:
  %_5 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h00365c7e58e62d68E"(%"alloc::vec::Vec<u8>"* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_7 = load i64, i64* %0, align 8
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17h2b37501450c46976E(i8* %_5, i64 %_7)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %2 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_4.0, 0
  %3 = insertvalue { [0 x i8]*, i64 } %2, i64 %_4.1, 1
  ret { [0 x i8]*, i64 } %3
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 1 i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h602f3f4a7e42eb24E"(i64 %self, [0 x i8]* align 1 %slice.0, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 {
start:
  %_7 = icmp ult i64 %self, %slice.1
  %1 = call i1 @llvm.expect.i1(i1 %_7, i1 true)
  br i1 %1, label %bb1, label %panic

bb1:                                              ; preds = %start
  %_4 = getelementptr inbounds [0 x i8], [0 x i8]* %slice.0, i64 0, i64 %self
  ret i8* %_4

panic:                                            ; preds = %start
  call void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64 %self, i64 %slice.1, %"core::panic::location::Location"* align 8 %0) #7
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 1 i8* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2fc8c330f3f6f9f8E"(%"alloc::vec::Vec<u8>"* align 8 %self, i64 %index, %"core::panic::location::Location"* align 8 %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_10 = alloca i8, align 1
  store i8 1, i8* %_10, align 1
  %2 = invoke { [0 x i8]*, i64 } @"_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h75ea6194b3be09c9E"(%"alloc::vec::Vec<u8>"* align 8 %self)
          to label %bb1 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %3 = load i8, i8* %_10, align 1, !range !2, !noundef !3
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb5

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %_7.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  store i8 0, i8* %_10, align 1
  %_4 = invoke align 1 i8* @"_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb7eff4826b4cbbfcE"([0 x i8]* align 1 %_7.0, i64 %_7.1, i64 %index, %"core::panic::location::Location"* align 8 %0)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret i8* %_4

bb3:                                              ; preds = %bb4, %bb5
  %10 = bitcast { i8*, i32 }* %1 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb4:                                              ; preds = %bb5
  br label %bb3
}

; Function Attrs: nonlazybind uwtable
define i32 @csv_fini(i64* align 8 %0, i64* %1, i64* %2, i8* %data) unnamed_addr #1 {
start:
  %_42 = alloca i8, align 1
  %_41 = alloca i8, align 1
  %_14 = alloca i8, align 1
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %entry_pos = alloca i64, align 8
  %spaces = alloca i64, align 8
  %pstate = alloca i32, align 4
  %quoted = alloca i32, align 4
  %3 = alloca i32, align 4
  %cb2 = alloca i64*, align 8
  %cb1 = alloca i64*, align 8
  %p = alloca i64*, align 8
  store i64* %0, i64** %p, align 8
  store i64* %1, i64** %cb1, align 8
  store i64* %2, i64** %cb2, align 8
  %4 = bitcast i64** %p to {}**
  %5 = load {}*, {}** %4, align 8
  %6 = icmp eq {}* %5, null
  %_6 = select i1 %6, i64 0, i64 1
  switch i64 %_6, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i32 -1, i32* %3, align 4
  br label %bb41

bb3:                                              ; preds = %start
  %7 = bitcast i64** %p to %CsvParser**
  %parser = load %CsvParser*, %CsvParser** %7, align 8, !nonnull !3, !align !4, !noundef !3
  %8 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %quoted, align 4
  %10 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %pstate, align 4
  %12 = bitcast %CsvParser* %parser to i64*
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %spaces, align 8
  %14 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %entry_pos, align 8
  %_15 = load i32, i32* %pstate, align 4
  %16 = icmp eq i32 %_15, 2
  br i1 %16, label %bb11, label %bb10

bb11:                                             ; preds = %bb3
  %17 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 11
  %_17 = load i32, i32* %17, align 4
  %_16 = icmp ne i32 %_17, 0
  %18 = zext i1 %_16 to i8
  store i8 %18, i8* %_14, align 1
  br label %bb12

bb10:                                             ; preds = %bb3
  store i8 0, i8* %_14, align 1
  br label %bb12

bb12:                                             ; preds = %bb10, %bb11
  %19 = load i8, i8* %_14, align 1, !range !2, !noundef !3
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb8, label %bb7

bb7:                                              ; preds = %bb12
  store i8 0, i8* %_13, align 1
  br label %bb9

bb8:                                              ; preds = %bb12
  %21 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  %_20 = load i8, i8* %21, align 4
  %_19 = and i8 %_20, 1
  %_18 = icmp ne i8 %_19, 0
  %22 = zext i1 %_18 to i8
  store i8 %22, i8* %_13, align 1
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %23 = load i8, i8* %_13, align 1, !range !2, !noundef !3
  %24 = trunc i8 %23 to i1
  br i1 %24, label %bb5, label %bb4

bb4:                                              ; preds = %bb9
  store i8 0, i8* %_12, align 1
  br label %bb6

bb5:                                              ; preds = %bb9
  %25 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  %_23 = load i8, i8* %25, align 4
  %_22 = and i8 %_23, 4
  %_21 = icmp ne i8 %_22, 0
  %26 = zext i1 %_21 to i8
  store i8 %26, i8* %_12, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %27 = load i8, i8* %_12, align 1, !range !2, !noundef !3
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb13, label %bb14

bb14:                                             ; preds = %bb6
  %29 = load i32, i32* %pstate, align 4
  switch i32 %29, label %bb38 [
    i32 3, label %bb15
    i32 1, label %bb18
    i32 2, label %bb18
  ]

bb13:                                             ; preds = %bb6
  %30 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 12
  store i32 1, i32* %30, align 8
  store i32 -1, i32* %3, align 4
  br label %bb41

bb41:                                             ; preds = %bb40, %bb13, %bb1
  %31 = load i32, i32* %3, align 4
  ret i32 %31

bb38:                                             ; preds = %bb17, %bb37, %bb14
  %32 = bitcast i64** %cb2 to {}**
  %33 = load {}*, {}** %32, align 8
  %34 = icmp eq {}* %33, null
  %_65 = select i1 %34, i64 0, i64 1
  %35 = icmp eq i64 %_65, 1
  br i1 %35, label %bb39, label %bb40

bb15:                                             ; preds = %bb14
  %36 = bitcast %CsvParser* %parser to i64*
  %_25 = load i64, i64* %36, align 8
  %37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_25, i64 1)
  %_26.0 = extractvalue { i64, i1 } %37, 0
  %_26.1 = extractvalue { i64, i1 } %37, 1
  %38 = call i1 @llvm.expect.i1(i1 %_26.1, i1 false)
  br i1 %38, label %panic3, label %bb16

bb18:                                             ; preds = %bb14, %bb14
  %_29 = load i32, i32* %quoted, align 4
  %39 = icmp eq i32 %_29, 0
  br i1 %39, label %bb19, label %bb21

bb19:                                             ; preds = %bb18
  %_30 = load i64, i64* %spaces, align 8
  %40 = load i64, i64* %entry_pos, align 8
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %40, i64 %_30)
  %_31.0 = extractvalue { i64, i1 } %41, 0
  %_31.1 = extractvalue { i64, i1 } %41, 1
  %42 = call i1 @llvm.expect.i1(i1 %_31.1, i1 false)
  br i1 %42, label %panic, label %bb20

bb21:                                             ; preds = %bb20, %bb18
  %43 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  %_33 = load i8, i8* %43, align 4
  %_32 = and i8 %_33, 8
  %44 = icmp eq i8 %_32, 0
  br i1 %44, label %bb25, label %bb22

bb20:                                             ; preds = %bb19
  store i64 %_31.0, i64* %entry_pos, align 8
  br label %bb21

panic:                                            ; preds = %bb19
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc23 to %"core::panic::location::Location"*)) #7
  unreachable

bb25:                                             ; preds = %bb24, %bb22, %bb21
  %45 = bitcast i64** %cb1 to {}**
  %46 = load {}*, {}** %45, align 8
  %47 = icmp eq {}* %46, null
  %_39 = select i1 %47, i64 0, i64 1
  %48 = icmp eq i64 %_39, 1
  br i1 %48, label %bb26, label %bb37

bb22:                                             ; preds = %bb21
  %49 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  %50 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %49 to {}**
  %51 = load {}*, {}** %50, align 8
  %52 = icmp eq {}* %51, null
  %_34 = select i1 %52, i64 0, i64 1
  %53 = icmp eq i64 %_34, 1
  br i1 %53, label %bb23, label %bb25

bb23:                                             ; preds = %bb22
  %54 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  %55 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %54 to %"core::option::Option<alloc::vec::Vec<u8>>::Some"*
  %buf = bitcast %"core::option::Option<alloc::vec::Vec<u8>>::Some"* %55 to %"alloc::vec::Vec<u8>"*
  %_38 = load i64, i64* %entry_pos, align 8
  %_36 = call align 1 i8* @"_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2fc8c330f3f6f9f8E"(%"alloc::vec::Vec<u8>"* align 8 %buf, i64 %_38, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc25 to %"core::panic::location::Location"*))
  br label %bb24

bb24:                                             ; preds = %bb23
  store i8 0, i8* %_36, align 1
  br label %bb25

bb26:                                             ; preds = %bb25
  %56 = bitcast i64** %cb1 to void ([0 x i8]*, i64, i64, i8*)**
  %cb11 = load void ([0 x i8]*, i64, i64, i8*)*, void ([0 x i8]*, i64, i64, i8*)** %56, align 8, !nonnull !3, !noundef !3
  %57 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 13
  %_44 = load i8, i8* %57, align 4
  %_43 = and i8 %_44, 16
  %58 = icmp eq i8 %_43, 0
  br i1 %58, label %bb30, label %bb31

bb37:                                             ; preds = %bb36, %bb33, %bb34, %bb25
  store i32 1, i32* %pstate, align 4
  store i64 0, i64* %entry_pos, align 8
  store i32 0, i32* %quoted, align 4
  store i64 0, i64* %spaces, align 8
  br label %bb38

bb30:                                             ; preds = %bb26
  store i8 0, i8* %_42, align 1
  br label %bb32

bb31:                                             ; preds = %bb26
  %_46 = load i32, i32* %quoted, align 4
  %_45 = icmp eq i32 %_46, 0
  %59 = zext i1 %_45 to i8
  store i8 %59, i8* %_42, align 1
  br label %bb32

bb32:                                             ; preds = %bb31, %bb30
  %60 = load i8, i8* %_42, align 1, !range !2, !noundef !3
  %61 = trunc i8 %60 to i1
  br i1 %61, label %bb28, label %bb27

bb27:                                             ; preds = %bb32
  store i8 0, i8* %_41, align 1
  br label %bb29

bb28:                                             ; preds = %bb32
  %_48 = load i64, i64* %entry_pos, align 8
  %_47 = icmp eq i64 %_48, 0
  %62 = zext i1 %_47 to i8
  store i8 %62, i8* %_41, align 1
  br label %bb29

bb29:                                             ; preds = %bb28, %bb27
  %63 = load i8, i8* %_41, align 1, !range !2, !noundef !3
  %64 = trunc i8 %63 to i1
  br i1 %64, label %bb33, label %bb34

bb34:                                             ; preds = %bb29
  %65 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  %66 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %65 to {}**
  %67 = load {}*, {}** %66, align 8
  %68 = icmp eq {}* %67, null
  %_56 = select i1 %68, i64 0, i64 1
  %69 = icmp eq i64 %_56, 1
  br i1 %69, label %bb35, label %bb37

bb33:                                             ; preds = %bb29
  %_54 = load i64, i64* %entry_pos, align 8
  call void %cb11([0 x i8]* align 1 bitcast (<{}>* @alloc3 to [0 x i8]*), i64 0, i64 %_54, i8* %data)
  br label %bb37

bb35:                                             ; preds = %bb34
  %70 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 1
  %71 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>"* %70 to %"core::option::Option<alloc::vec::Vec<u8>>::Some"*
  %buf2 = bitcast %"core::option::Option<alloc::vec::Vec<u8>>::Some"* %71 to %"alloc::vec::Vec<u8>"*
  %72 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0d58e887f6c6dfa3E"(%"alloc::vec::Vec<u8>"* align 8 %buf2)
  %_61.0 = extractvalue { [0 x i8]*, i64 } %72, 0
  %_61.1 = extractvalue { [0 x i8]*, i64 } %72, 1
  br label %bb36

bb36:                                             ; preds = %bb35
  %_63 = load i64, i64* %entry_pos, align 8
  call void %cb11([0 x i8]* align 1 %_61.0, i64 %_61.1, i64 %_63, i8* %data)
  br label %bb37

bb16:                                             ; preds = %bb15
  %73 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %74, i64 %_26.0)
  %_27.0 = extractvalue { i64, i1 } %75, 0
  %_27.1 = extractvalue { i64, i1 } %75, 1
  %76 = call i1 @llvm.expect.i1(i1 %_27.1, i1 false)
  br i1 %76, label %panic4, label %bb17

panic3:                                           ; preds = %bb15
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([28 x i8]* @str.1 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc27 to %"core::panic::location::Location"*)) #7
  unreachable

bb17:                                             ; preds = %bb16
  %77 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  store i64 %_27.0, i64* %77, align 8
  %78 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  %_28 = load i64, i64* %78, align 8
  store i64 %_28, i64* %entry_pos, align 8
  br label %bb38

panic4:                                           ; preds = %bb16
  call void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1 bitcast ([33 x i8]* @str.0 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc29 to %"core::panic::location::Location"*)) #7
  unreachable

bb39:                                             ; preds = %bb38
  %79 = bitcast i64** %cb2 to void (i32, i8*)**
  %cb25 = load void (i32, i8*)*, void (i32, i8*)** %79, align 8, !nonnull !3, !noundef !3
  call void %cb25(i32 -1, i8* %data)
  br label %bb40

bb40:                                             ; preds = %bb39, %bb38
  %80 = bitcast %CsvParser* %parser to i64*
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 11
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 12
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %CsvParser, %CsvParser* %parser, i32 0, i32 10
  store i32 0, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %bb41
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE(i64, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hb3ad04c589a0e3c8E([0 x i8]* align 1, i64, %"core::panic::location::Location"* align 8) unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #6

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i8 0, i8 2}
!3 = !{}
!4 = !{i64 8}

^0 = module: (path: "/home/tpalit/rustify/src/python/inputs-complex/libcsv/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete/csv_fini.rs.bc", hash: (2703922487, 2696112778, 1823454631, 1897321478, 919858985))
^1 = gv: (name: "_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hb7eff4826b4cbbfcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^7))))) ; guid = 230880601966070702
^2 = gv: (name: "llvm.memcpy.p0i8.p0i8.i64") ; guid = 614884070845456474
^3 = gv: (name: "llvm.usub.with.overflow.i64") ; guid = 939510177757294269
^4 = gv: (name: "_ZN84_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..index..IndexMut$LT$I$GT$$GT$9index_mut17h2fc8c330f3f6f9f8E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 28, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 1, hasUnknownCall: 0, mustBeUnreachable: 0), calls: ((callee: ^11), (callee: ^1)), refs: (^34)))) ; guid = 1257641394061165857
^5 = gv: (name: "alloc27", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 1752878315127732457
^6 = gv: (name: "alloc28", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2061948060184029275
^7 = gv: (name: "_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h602f3f4a7e42eb24E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^24))))) ; guid = 2214608931956425028
^8 = gv: (name: "_ZN4core9panicking5panic17hb3ad04c589a0e3c8E") ; guid = 2372449950952319908
^9 = gv: (name: "llvm.expect.i1") ; guid = 2587125569932775682
^10 = gv: (name: "alloc3", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 2931649834389633903
^11 = gv: (name: "_ZN75_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h75ea6194b3be09c9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^27), (callee: ^37))))) ; guid = 3048030003283805964
^12 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17had7498031e7882f1E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 3257794360983735503
^13 = gv: (name: "str.1", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4090326685687498412
^14 = gv: (name: "_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h0d58e887f6c6dfa3E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 11, calls: ((callee: ^31), (callee: ^18))))) ; guid = 4408923715514310481
^15 = gv: (name: "_ZN4core3ptr8metadata14from_raw_parts17hca962428b9837302E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 23))) ; guid = 4723003013925987905
^16 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17ha8061e487156ec07E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^30), (callee: ^29))))) ; guid = 4769182298979938428
^17 = gv: (name: "str.0", summaries: (variable: (module: ^0, flags: (linkage: internal, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1)))) ; guid = 4919053962689688618
^18 = gv: (name: "_ZN4core5slice3raw14from_raw_parts17h568fd219c61cb2a9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^28))))) ; guid = 5352016316419453070
^19 = gv: (name: "alloc23", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 5379152061693357311
^20 = gv: (name: "_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17hd5dbd95aad18ca51E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 2))) ; guid = 5936394006517617999
^21 = gv: (name: "llvm.assume") ; guid = 6385187066495850096
^22 = gv: (name: "csv_fini", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 222, funcFlags: (readNone: 0, readOnly: 0, noRecurse: 0, returnDoesNotAlias: 0, noInline: 0, alwaysInline: 0, noUnwind: 0, mayThrow: 0, hasUnknownCall: 1, mustBeUnreachable: 0), calls: ((callee: ^8), (callee: ^4), (callee: ^14)), refs: (^19, ^17, ^26, ^10, ^5, ^13, ^25)))) ; guid = 7321542852876438414
^23 = gv: (name: "_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hc4643fbcd5479a0dE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 1))) ; guid = 7993478881141960433
^24 = gv: (name: "_ZN4core9panicking18panic_bounds_check17ha6e6615eae13afdcE") ; guid = 8302714812686852315
^25 = gv: (name: "alloc29", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 9202046593108034073
^26 = gv: (name: "alloc25", summaries: (variable: (module: ^0, flags: (linkage: private, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 1, canAutoHide: 0), varFlags: (readonly: 1, writeonly: 0, constant: 1), refs: (^6)))) ; guid = 9439578985663892040
^27 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h00365c7e58e62d68E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^36), (callee: ^16))))) ; guid = 9789525946236884877
^28 = gv: (name: "_ZN4core3ptr20slice_from_raw_parts17h47a37af23f5857b2E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^20), (callee: ^15))))) ; guid = 10131345453972289440
^29 = gv: (name: "_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h729a77ec0c34e8bdE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 8))) ; guid = 10719522891205245351
^30 = gv: (name: "_ZN4core3ptr8metadata18from_raw_parts_mut17hf3a85c90f650ec47E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 12))) ; guid = 11282371021840347857
^31 = gv: (name: "_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h4d703fd79336efd7E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^36), (callee: ^16))))) ; guid = 12227150599433074235
^32 = gv: (name: "_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h65f087836b2cfdfcE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 3, calls: ((callee: ^23))))) ; guid = 12382714890941847101
^33 = gv: (name: "llvm.uadd.with.overflow.i64") ; guid = 14330265817658972761
^34 = gv: (name: "rust_eh_personality") ; guid = 14807195490537628141
^35 = gv: (name: "_ZN4core3ptr24slice_from_raw_parts_mut17h994ffb25205cb15fE", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 9, calls: ((callee: ^12))))) ; guid = 14995043115082281509
^36 = gv: (name: "_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6f4ce603ad80ffc9E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 5, calls: ((callee: ^32))))) ; guid = 15575359867768319457
^37 = gv: (name: "_ZN4core5slice3raw18from_raw_parts_mut17h2b37501450c46976E", summaries: (function: (module: ^0, flags: (linkage: external, visibility: default, notEligibleToImport: 0, live: 0, dsoLocal: 0, canAutoHide: 0), insts: 7, calls: ((callee: ^35))))) ; guid = 16708883903593307468
^38 = blockcount: 95
