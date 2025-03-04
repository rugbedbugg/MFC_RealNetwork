.class public final Landroidx/compose/material/FloatingActionButtonDefaults;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"


# static fields
.field public static final INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material/FloatingActionButtonDefaults;

    invoke-direct {v0}, Landroidx/compose/material/FloatingActionButtonDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;
    .locals 7

    const v0, 0x16ac8064

    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    const/4 p1, 0x6

    int-to-float p1, p1

    .line 154
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p1

    :cond_0
    move v2, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0xc

    int-to-float p1, p1

    .line 154
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    :cond_1
    move v3, p2

    and-int/lit8 p1, p7, 0x4

    const/16 p2, 0x8

    if-eqz p1, :cond_2

    int-to-float p1, p2

    .line 154
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    :cond_2
    move v4, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    int-to-float p1, p2

    .line 154
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    :cond_3
    move v5, p4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    const-string p2, "androidx.compose.material.FloatingActionButtonDefaults.elevation (FloatingActionButton.kt:244)"

    .line 250
    invoke-static {v0, p6, p1, p2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const/4 p1, 0x4

    new-array p2, p1, [Ljava/lang/Object;

    .line 251
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p3

    const/4 p6, 0x1

    aput-object p3, p2, p6

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p3

    const/4 p6, 0x2

    aput-object p3, p2, p6

    const/4 p3, 0x3

    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p6

    aput-object p6, p2, p3

    const p3, -0x21de6e89

    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move p3, p4

    :goto_0
    if-ge p4, p1, :cond_5

    .line 84
    aget-object p6, p2, p4

    invoke-interface {p5, p6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p6

    or-int/2addr p3, p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1097
    :cond_5
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p3, :cond_6

    .line 1098
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    .line 252
    :cond_6
    new-instance p1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1100
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_7
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 251
    check-cast p1, Landroidx/compose/material/DefaultFloatingActionButtonElevation;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p1
.end method
