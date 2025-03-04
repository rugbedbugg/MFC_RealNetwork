.class public abstract Landroidx/compose/runtime/CompositionContextKt;
.super Ljava/lang/Object;
.source "CompositionContext.kt"


# static fields
.field private static final EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/PersistentCompositionLocalMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/CompositionContextKt;->EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-void
.end method

.method public static final synthetic access$getEmptyPersistentCompositionLocalMap$p()Landroidx/compose/runtime/PersistentCompositionLocalMap;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/runtime/CompositionContextKt;->EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    return-object v0
.end method
