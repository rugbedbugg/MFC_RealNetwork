.class public final Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;
.super Ljava/lang/Object;
.source "LazyListAnimateScrollScope.kt"


# instance fields
.field private final numOfItemsForTeleport:I

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->state:Landroidx/compose/foundation/lazy/LazyListState;

    const/16 p1, 0x64

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListAnimateScrollScope;->numOfItemsForTeleport:I

    return-void
.end method
