.class public final Landroidx/compose/foundation/layout/WrapContentElement$Companion;
.super Ljava/lang/Object;
.source "Size.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/WrapContentElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final height(Landroidx/compose/ui/Alignment$Vertical;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 7

    const-string v0, "align"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 958
    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    .line 960
    new-instance v4, Landroidx/compose/foundation/layout/WrapContentElement$Companion$height$1;

    invoke-direct {v4, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$height$1;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    const-string v6, "wrapContentHeight"

    move-object v1, v0

    move v3, p2

    move-object v5, p1

    .line 957
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final size(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 7

    const-string v0, "align"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 972
    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Both:Landroidx/compose/foundation/layout/Direction;

    .line 974
    new-instance v4, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;

    invoke-direct {v4, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$size$1;-><init>(Landroidx/compose/ui/Alignment;)V

    const-string v6, "wrapContentSize"

    move-object v1, v0

    move v3, p2

    move-object v5, p1

    .line 971
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final width(Landroidx/compose/ui/Alignment$Horizontal;Z)Landroidx/compose/foundation/layout/WrapContentElement;
    .locals 7

    const-string v0, "align"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    new-instance v0, Landroidx/compose/foundation/layout/WrapContentElement;

    .line 944
    sget-object v2, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    .line 946
    new-instance v4, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;

    invoke-direct {v4, p1}, Landroidx/compose/foundation/layout/WrapContentElement$Companion$width$1;-><init>(Landroidx/compose/ui/Alignment$Horizontal;)V

    const-string v6, "wrapContentWidth"

    move-object v1, v0

    move v3, p2

    move-object v5, p1

    .line 943
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/WrapContentElement;-><init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
