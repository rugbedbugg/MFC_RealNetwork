.class abstract Lcom/google/common/collect/Maps$KeySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeySet"
.end annotation


# instance fields
.field final map:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$ZPl3l4oBQDe8X0agVbEUZ00QUvs(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Maps$KeySet;->lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 4001
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    .line 4002
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    return-void
.end method

.method private static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4018
    invoke-static {p0, p1}, Lcom/google/common/collect/CollectSpliterators$1$$ExternalSyntheticApiModelOutline6;->m(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 4033
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2

    .line 4016
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    .line 4018
    new-instance v1, Lcom/google/common/collect/Maps$KeySet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/Maps$KeySet$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps$KeySet$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 4028
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method map()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/Maps$KeySet;->map:Ljava/util/Map;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 4023
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
