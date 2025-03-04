.class public final Landroidx/compose/ui/node/ObserverNodeOwnerScope;
.super Ljava/lang/Object;
.source "ObserverModifierNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;

.field private static final OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;


# instance fields
.field private final observerNode:Landroidx/compose/ui/node/ObserverModifierNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->Companion:Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion;

    sget-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/ObserverNodeOwnerScope$Companion$OnObserveReadsChanged$1;

    sput-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/ObserverModifierNode;)V
    .locals 1

    const-string v0, "observerNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->observerNode:Landroidx/compose/ui/node/ObserverModifierNode;

    return-void
.end method

.method public static final synthetic access$getOnObserveReadsChanged$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final getObserverNode$ui_release()Landroidx/compose/ui/node/ObserverModifierNode;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->observerNode:Landroidx/compose/ui/node/ObserverModifierNode;

    return-object v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/ObserverNodeOwnerScope;->observerNode:Landroidx/compose/ui/node/ObserverModifierNode;

    .line 39
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    return v0
.end method
