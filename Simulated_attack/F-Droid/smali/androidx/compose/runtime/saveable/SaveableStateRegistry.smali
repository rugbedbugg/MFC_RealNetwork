.class public interface abstract Landroidx/compose/runtime/saveable/SaveableStateRegistry;
.super Ljava/lang/Object;
.source "SaveableStateRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
    }
.end annotation


# virtual methods
.method public abstract canBeSaved(Ljava/lang/Object;)Z
.end method

.method public abstract consumeRestored(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract performSave()Ljava/util/Map;
.end method

.method public abstract registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;
.end method
