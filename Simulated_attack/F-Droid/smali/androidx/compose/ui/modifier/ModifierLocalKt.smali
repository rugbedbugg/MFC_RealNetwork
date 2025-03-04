.class public abstract Landroidx/compose/ui/modifier/ModifierLocalKt;
.super Ljava/lang/Object;
.source "ModifierLocal.kt"


# direct methods
.method public static final modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1

    const-string v0, "defaultFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-direct {v0, p0}, Landroidx/compose/ui/modifier/ProvidableModifierLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
