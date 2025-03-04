.class final Landroidx/compose/ui/text/android/StaticLayoutFactory33;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory33;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory33;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory33;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory33;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory33;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isFallbackLineSpacingEnabled(Landroid/text/StaticLayout;)Z
    .locals 1

    const-string v0, "layout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Landroidx/compose/ui/text/android/StaticLayoutFactory33$$ExternalSyntheticApiModelOutline4;->m(Landroid/text/StaticLayout;)Z

    move-result p0

    return p0
.end method

.method public static final setLineBreakConfig(Landroid/text/StaticLayout$Builder;II)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Landroidx/compose/ui/text/android/StaticLayoutFactory33$$ExternalSyntheticApiModelOutline5;->m()Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 255
    invoke-static {v0, p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory33$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/text/LineBreakConfig$Builder;I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p1

    .line 256
    invoke-static {p1, p2}, Landroidx/compose/ui/text/android/StaticLayoutFactory33$$ExternalSyntheticApiModelOutline1;->m(Landroid/graphics/text/LineBreakConfig$Builder;I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p1

    .line 257
    invoke-static {p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory33$$ExternalSyntheticApiModelOutline2;->m(Landroid/graphics/text/LineBreakConfig$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    const-string p2, "Builder()\n              \u2026\n                .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory33$$ExternalSyntheticApiModelOutline3;->m(Landroid/text/StaticLayout$Builder;Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    return-void
.end method
