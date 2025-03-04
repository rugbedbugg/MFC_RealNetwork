.class final Landroidx/compose/foundation/layout/BoxChildDataNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Box.kt"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# instance fields
.field private alignment:Landroidx/compose/ui/Alignment;

.field private matchParentSize:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Z)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxChildDataNode;->alignment:Landroidx/compose/ui/Alignment;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/layout/BoxChildDataNode;->alignment:Landroidx/compose/ui/Alignment;

    return-object v0
.end method

.method public final getMatchParentSize()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    return v0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/BoxChildDataNode;
    .locals 0

    .line 0
    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 295
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/BoxChildDataNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/BoxChildDataNode;

    move-result-object p1

    return-object p1
.end method

.method public final setAlignment(Landroidx/compose/ui/Alignment;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxChildDataNode;->alignment:Landroidx/compose/ui/Alignment;

    return-void
.end method

.method public final setMatchParentSize(Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/BoxChildDataNode;->matchParentSize:Z

    return-void
.end method
