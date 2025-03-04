.class final Landroidx/compose/runtime/ComposerImpl$recordInsert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->recordInsert(Landroidx/compose/runtime/Anchor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $anchor:Landroidx/compose/runtime/Anchor;

.field final synthetic $insertTable:Landroidx/compose/runtime/SlotTable;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/SlotTable;Landroidx/compose/runtime/Anchor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;->$insertTable:Landroidx/compose/runtime/SlotTable;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;->$anchor:Landroidx/compose/runtime/Anchor;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3528
    check-cast p1, Landroidx/compose/runtime/Applier;

    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    check-cast p3, Landroidx/compose/runtime/RememberManager;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;->invoke(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "slots"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3529
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->beginInsert()V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;->$insertTable:Landroidx/compose/runtime/SlotTable;

    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl$recordInsert$1;->$anchor:Landroidx/compose/runtime/Anchor;

    .line 3532
    invoke-virtual {p3, p1}, Landroidx/compose/runtime/Anchor;->toIndexFor(Landroidx/compose/runtime/SlotTable;)I

    move-result p3

    const/4 v0, 0x0

    .line 3530
    invoke-virtual {p2, p1, p3, v0}, Landroidx/compose/runtime/SlotWriter;->moveFrom(Landroidx/compose/runtime/SlotTable;IZ)Ljava/util/List;

    .line 3535
    invoke-virtual {p2}, Landroidx/compose/runtime/SlotWriter;->endInsert()V

    return-void
.end method
