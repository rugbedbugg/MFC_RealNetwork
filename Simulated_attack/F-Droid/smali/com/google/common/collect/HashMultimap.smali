.class public final Lcom/google/common/collect/HashMultimap;
.super Lcom/google/common/collect/HashMultimapGwtSerializationDependencies;
.source "HashMultimap.java"


# instance fields
.field transient expectedValuesPerKey:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x2

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashMultimap;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 108
    invoke-static {p1}, Lcom/google/common/collect/Platform;->newHashMapWithExpectedSize(I)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashMultimapGwtSerializationDependencies;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    if-ltz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 109
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput p2, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashMultimap;
    .locals 1

    .line 68
    new-instance v0, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/HashMultimap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->clear()V

    return-void
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/HashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 127
    invoke-static {v0}, Lcom/google/common/collect/Platform;->newHashSetWithExpectedSize(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
