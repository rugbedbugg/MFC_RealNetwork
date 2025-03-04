.class public abstract Lkotlin/collections/AbstractMutableMap;
.super Ljava/util/AbstractMap;
.source "AbstractMutableMap.kt"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge entrySet()Ljava/util/Set;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEntries()Ljava/util/Set;
.end method

.method public bridge abstract getKeys()Ljava/util/Set;
.end method

.method public bridge abstract getSize()I
.end method

.method public bridge abstract getValues()Ljava/util/Collection;
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge size()I
    .locals 1

    .line 18
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableMap;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
