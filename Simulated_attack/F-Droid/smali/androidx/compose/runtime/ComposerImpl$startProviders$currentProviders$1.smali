.class final Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Composer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;->startProviders([Landroidx/compose/runtime/ProvidedValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $parentScope:Landroidx/compose/runtime/PersistentCompositionLocalMap;

.field final synthetic $values:[Landroidx/compose/runtime/ProvidedValue;


# direct methods
.method constructor <init>([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;->$values:[Landroidx/compose/runtime/ProvidedValue;

    iput-object p2, p0, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;->$parentScope:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 3

    const v0, -0x3882f091

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.runtime.ComposerImpl.startProviders.<anonymous> (Composer.kt:1994)"

    .line 1996
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;->$values:[Landroidx/compose/runtime/ProvidedValue;

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;->$parentScope:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    const/16 v1, 0x8

    invoke-static {p2, v0, p1, v1}, Landroidx/compose/runtime/CompositionLocalMapKt;->compositionLocalMapOf([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1995
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/ComposerImpl$startProviders$currentProviders$1;->invoke(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p1

    return-object p1
.end method
