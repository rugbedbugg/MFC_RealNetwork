.class public abstract Landroidx/compose/animation/ColorVectorConverterKt;
.super Ljava/lang/Object;
.source "ColorVectorConverter.kt"


# static fields
.field private static final ColorToVector:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;

    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Landroidx/compose/animation/ColorVectorConverterKt;->ColorToVector:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
