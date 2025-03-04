.class final Landroidx/compose/ui/node/NodeChainKt$fillVector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NodeChain.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/NodeChainKt;->fillVector(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/runtime/collection/MutableVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $result:Landroidx/compose/runtime/collection/MutableVector;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Landroidx/compose/runtime/collection/MutableVector;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier$Element;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->$result:Landroidx/compose/runtime/collection/MutableVector;

    .line 839
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 838
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;->invoke(Landroidx/compose/ui/Modifier$Element;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
