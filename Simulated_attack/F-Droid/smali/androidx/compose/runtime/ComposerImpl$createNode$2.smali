.class final Landroidx/compose/runtime/ComposerImpl$createNode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $factory:Lkotlin/jvm/functions/Function0;

.field final synthetic $groupAnchor:Landroidx/compose/runtime/Anchor;

.field final synthetic $insertIndex:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Anchor;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$createNode$2;->$factory:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$createNode$2;->$groupAnchor:Landroidx/compose/runtime/Anchor;

    iput p3, p0, Landroidx/compose/runtime/ComposerImpl$createNode$2;->$insertIndex:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1608
    check-cast p1, Landroidx/compose/runtime/Applier;

    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    check-cast p3, Landroidx/compose/runtime/RememberManager;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl$createNode$2;->invoke(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1

    const-string v0, "applier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "slots"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 2>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Landroidx/compose/runtime/ComposerImpl$createNode$2;->$factory:Lkotlin/jvm/functions/Function0;

    .line 1610
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$createNode$2;->$groupAnchor:Landroidx/compose/runtime/Anchor;

    .line 1611
    invoke-virtual {p2, v0, p3}, Landroidx/compose/runtime/SlotWriter;->updateNode(Landroidx/compose/runtime/Anchor;Ljava/lang/Object;)V

    iget p2, p0, Landroidx/compose/runtime/ComposerImpl$createNode$2;->$insertIndex:I

    .line 1613
    invoke-interface {p1, p2, p3}, Landroidx/compose/runtime/Applier;->insertTopDown(ILjava/lang/Object;)V

    .line 1614
    invoke-interface {p1, p3}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    return-void
.end method
