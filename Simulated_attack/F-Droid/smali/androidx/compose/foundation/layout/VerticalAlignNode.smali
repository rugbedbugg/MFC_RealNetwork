.class public final Landroidx/compose/foundation/layout/VerticalAlignNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "RowColumnImpl.kt"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# instance fields
.field private vertical:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 1

    const-string v0, "vertical"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/VerticalAlignNode;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    instance-of p1, p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnParentData;-><init>(FZLandroidx/compose/foundation/layout/CrossAxisAlignment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 817
    :cond_1
    sget-object p1, Landroidx/compose/foundation/layout/CrossAxisAlignment;->Companion:Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;

    iget-object v0, p0, Landroidx/compose/foundation/layout/VerticalAlignNode;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/CrossAxisAlignment$Companion;->vertical$foundation_layout_release(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/RowColumnParentData;->setCrossAxisAlignment(Landroidx/compose/foundation/layout/CrossAxisAlignment;)V

    return-object p2
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 812
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/VerticalAlignNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object p1

    return-object p1
.end method

.method public final setVertical(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/VerticalAlignNode;->vertical:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method
