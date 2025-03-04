.class public final Landroidx/compose/foundation/lazy/LazyListInterval;
.super Ljava/lang/Object;
.source "LazyListIntervalContent.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;


# instance fields
.field private final item:Lkotlin/jvm/functions/Function4;

.field private final key:Lkotlin/jvm/functions/Function1;

.field private final type:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->key:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->type:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->item:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final getItem()Lkotlin/jvm/functions/Function4;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->item:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public getKey()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->key:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getType()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListInterval;->type:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
