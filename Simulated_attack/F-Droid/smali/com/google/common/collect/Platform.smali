.class abstract Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/collect/Platform;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Platform;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method static newHashMapWithExpectedSize(I)Ljava/util/Map;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static newHashSetWithExpectedSize(I)Ljava/util/Set;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method
