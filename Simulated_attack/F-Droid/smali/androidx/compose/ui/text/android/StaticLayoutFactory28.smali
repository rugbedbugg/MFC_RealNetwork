.class final Landroidx/compose/ui/text/android/StaticLayoutFactory28;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/text/android/StaticLayoutFactory28;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/StaticLayoutFactory28;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/StaticLayoutFactory28;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory28;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setUseLineSpacingFromFallbacks(Landroid/text/StaticLayout$Builder;Z)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/StaticLayoutFactory28$$ExternalSyntheticApiModelOutline0;->m(Landroid/text/StaticLayout$Builder;Z)Landroid/text/StaticLayout$Builder;

    return-void
.end method
