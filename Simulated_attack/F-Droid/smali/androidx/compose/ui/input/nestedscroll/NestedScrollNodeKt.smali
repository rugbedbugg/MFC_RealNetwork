.class public abstract Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;
.super Ljava/lang/Object;
.source "NestedScrollNode.kt"


# static fields
.field private static final ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt$ModifierLocalNestedScroll$1;->INSTANCE:Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt$ModifierLocalNestedScroll$1;

    .line 28
    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method

.method public static final getModifierLocalNestedScroll()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method
