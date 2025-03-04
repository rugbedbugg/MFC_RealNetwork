.class public abstract Lkotlin/collections/AbstractMutableSet;
.super Ljava/util/AbstractSet;
.source "AbstractMutableSet.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSize()I
.end method

.method public final bridge size()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Lkotlin/collections/AbstractMutableSet;->getSize()I

    move-result v0

    return v0
.end method
