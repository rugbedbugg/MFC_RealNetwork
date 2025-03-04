.class public interface abstract Landroidx/compose/runtime/Composer;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Composer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/Composer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->$$INSTANCE:Landroidx/compose/runtime/Composer$Companion;

    sput-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    return-void
.end method


# virtual methods
.method public abstract apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
.end method

.method public abstract buildContext()Landroidx/compose/runtime/CompositionContext;
.end method

.method public abstract changed(F)Z
.end method

.method public abstract changed(I)Z
.end method

.method public abstract changed(J)Z
.end method

.method public abstract changed(Ljava/lang/Object;)Z
.end method

.method public abstract changed(Z)Z
.end method

.method public abstract changedInstance(Ljava/lang/Object;)Z
.end method

.method public abstract collectParameterInformation()V
.end method

.method public abstract consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
.end method

.method public abstract createNode(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract deactivateToEndGroup(Z)V
.end method

.method public abstract disableReusing()V
.end method

.method public abstract enableReusing()V
.end method

.method public abstract endDefaults()V
.end method

.method public abstract endMovableGroup()V
.end method

.method public abstract endNode()V
.end method

.method public abstract endProviders()V
.end method

.method public abstract endReplaceableGroup()V
.end method

.method public abstract endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;
.end method

.method public abstract endReusableGroup()V
.end method

.method public abstract getApplier()Landroidx/compose/runtime/Applier;
.end method

.method public abstract getApplyCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
.end method

.method public abstract getCompoundKeyHash()I
.end method

.method public abstract getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;
.end method

.method public abstract getDefaultsInvalid()Z
.end method

.method public abstract getInserting()Z
.end method

.method public abstract getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;
.end method

.method public abstract getSkipping()Z
.end method

.method public abstract recordSideEffect(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract recordUsed(Landroidx/compose/runtime/RecomposeScope;)V
.end method

.method public abstract rememberedValue()Ljava/lang/Object;
.end method

.method public abstract skipToGroupEnd()V
.end method

.method public abstract startDefaults()V
.end method

.method public abstract startMovableGroup(ILjava/lang/Object;)V
.end method

.method public abstract startNode()V
.end method

.method public abstract startProviders([Landroidx/compose/runtime/ProvidedValue;)V
.end method

.method public abstract startReplaceableGroup(I)V
.end method

.method public abstract startRestartGroup(I)Landroidx/compose/runtime/Composer;
.end method

.method public abstract startReusableGroup(ILjava/lang/Object;)V
.end method

.method public abstract startReusableNode()V
.end method

.method public abstract updateRememberedValue(Ljava/lang/Object;)V
.end method

.method public abstract useNode()V
.end method
