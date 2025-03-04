.class final Landroidx/compose/runtime/ComposerImpl$updateValue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->updateValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $groupSlotIndex:I

.field final synthetic $value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$updateValue$2;->$value:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$updateValue$2;->$groupSlotIndex:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1892
    check-cast p1, Landroidx/compose/runtime/Applier;

    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    check-cast p3, Landroidx/compose/runtime/RememberManager;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/ComposerImpl$updateValue$2;->invoke(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "slots"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rememberManager"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/runtime/ComposerImpl$updateValue$2;->$value:Ljava/lang/Object;

    .line 1893
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz v0, :cond_0

    .line 1894
    check-cast p1, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {p3, p1}, Landroidx/compose/runtime/RememberManager;->remembering(Landroidx/compose/runtime/RememberObserver;)V

    :cond_0
    iget p1, p0, Landroidx/compose/runtime/ComposerImpl$updateValue$2;->$groupSlotIndex:I

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$updateValue$2;->$value:Ljava/lang/Object;

    .line 1896
    invoke-virtual {p2, p1, v0}, Landroidx/compose/runtime/SlotWriter;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1897
    instance-of p2, p1, Landroidx/compose/runtime/RememberObserver;

    if-eqz p2, :cond_1

    .line 1898
    check-cast p1, Landroidx/compose/runtime/RememberObserver;

    invoke-interface {p3, p1}, Landroidx/compose/runtime/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserver;)V

    goto :goto_0

    .line 1899
    :cond_1
    instance-of p2, p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_2
    :goto_0
    return-void
.end method
