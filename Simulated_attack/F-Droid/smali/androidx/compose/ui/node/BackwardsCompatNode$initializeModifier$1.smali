.class final Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BackwardsCompatNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/BackwardsCompatNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$1;->this$0:Landroidx/compose/ui/node/BackwardsCompatNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 139
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$1;->this$0:Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->updateModifierLocalConsumer()V

    return-void
.end method
