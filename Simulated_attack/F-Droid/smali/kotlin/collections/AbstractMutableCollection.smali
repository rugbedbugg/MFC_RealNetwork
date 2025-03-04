.class public abstract Lkotlin/collections/AbstractMutableCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMutableCollection.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMutableCollection;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSize()I
.end method

.method public final bridge size()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableCollection;->getSize()I

    move-result v0

    return v0
.end method
