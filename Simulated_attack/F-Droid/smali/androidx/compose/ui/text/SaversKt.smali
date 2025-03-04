.class public abstract Landroidx/compose/ui/text/SaversKt;
.super Ljava/lang/Object;
.source "Savers.kt"


# static fields
.field private static final AnnotatedStringSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final AnnotationRangeSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final BaselineShiftSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final ColorSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final FontWeightSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final LocaleListSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final LocaleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final OffsetSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final ParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final ShadowSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final SpanStyleSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextDecorationSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextIndentSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextRangeSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final TextUnitSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final UrlAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

.field private static final VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotatedStringSaver$2;

    .line 73
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeListSaver$2;

    .line 98
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$AnnotationRangeSaver$2;

    .line 123
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$VerbatimTtsAnnotationSaver$2;

    .line 190
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$UrlAnnotationSaver$2;

    .line 196
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ParagraphStyleSaver$2;

    .line 201
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$SpanStyleSaver$2;

    .line 221
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextDecorationSaver$2;

    .line 264
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextGeometricTransformSaver$2;

    .line 272
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextIndentSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextIndentSaver$2;

    .line 284
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$FontWeightSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$FontWeightSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$FontWeightSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$FontWeightSaver$2;

    .line 304
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$BaselineShiftSaver$2;

    .line 312
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextRangeSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextRangeSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextRangeSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextRangeSaver$2;

    .line 322
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ShadowSaver$2;

    .line 336
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$ColorSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$ColorSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$ColorSaver$2;

    .line 358
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$TextUnitSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextUnitSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$TextUnitSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$TextUnitSaver$2;

    .line 367
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$OffsetSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$OffsetSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$OffsetSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$OffsetSaver$2;

    .line 381
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleListSaver$2;

    .line 402
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/runtime/saveable/Saver;

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LocaleSaver$1;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleSaver$1;

    sget-object v1, Landroidx/compose/ui/text/SaversKt$LocaleSaver$2;->INSTANCE:Landroidx/compose/ui/text/SaversKt$LocaleSaver$2;

    .line 418
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public static final synthetic access$getAnnotationRangeListSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getAnnotationRangeSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getUrlAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final synthetic access$getVerbatimTtsAnnotationSaver$p()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getAnnotatedStringSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->AnnotatedStringSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getParagraphStyleSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final getSaver(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/TextRange$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextRangeSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/intl/Locale$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/text/style/TextIndent$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSaver(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object p0
.end method

.method public static final getSpanStyleSaver()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method

.method public static final save(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    return-object p0
.end method

.method public static final save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;
    .locals 1

    const-string v0, "saver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p1, p2, p0}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    return-object p0
.end method
