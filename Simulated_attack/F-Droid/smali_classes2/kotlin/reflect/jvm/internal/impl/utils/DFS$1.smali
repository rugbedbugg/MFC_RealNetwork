.class final Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;
.super Lkotlin/reflect/jvm/internal/impl/utils/DFS$AbstractNodeHandler;
.source "DFS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/utils/DFS;->ifAny(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/DFS$Neighbors;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lkotlin/jvm/functions/Function1;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;[Z)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$predicate:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:[Z

    .line 47
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$AbstractNodeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeChildren(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$predicate:Lkotlin/jvm/functions/Function1;

    .line 50
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:[Z

    .line 51
    aput-boolean v0, p1, v1

    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:[Z

    .line 54
    aget-boolean p1, p1, v1

    xor-int/2addr p1, v0

    return p1
.end method

.method public result()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->val$result:[Z

    const/4 v1, 0x0

    .line 59
    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/DFS$1;->result()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
