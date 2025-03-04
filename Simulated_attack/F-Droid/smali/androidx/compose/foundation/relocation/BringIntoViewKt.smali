.class public abstract Landroidx/compose/foundation/relocation/BringIntoViewKt;
.super Ljava/lang/Object;
.source "BringIntoView.kt"


# static fields
.field private static final ModifierLocalBringIntoViewParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/relocation/BringIntoViewKt$ModifierLocalBringIntoViewParent$1;->INSTANCE:Landroidx/compose/foundation/relocation/BringIntoViewKt$ModifierLocalBringIntoViewParent$1;

    .line 29
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/relocation/BringIntoViewKt;->ModifierLocalBringIntoViewParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method

.method public static final getModifierLocalBringIntoViewParent()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/foundation/relocation/BringIntoViewKt;->ModifierLocalBringIntoViewParent:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method
