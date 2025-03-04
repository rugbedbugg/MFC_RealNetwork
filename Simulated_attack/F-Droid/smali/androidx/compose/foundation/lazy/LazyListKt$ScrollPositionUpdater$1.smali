.class final Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->ScrollPositionUpdater(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    .line 0
    iget-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v1

    invoke-static {p2, v0, p1, v1}, Landroidx/compose/foundation/lazy/LazyListKt;->access$ScrollPositionUpdater(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
