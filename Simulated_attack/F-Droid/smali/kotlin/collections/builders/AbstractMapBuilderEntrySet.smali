.class public abstract Lkotlin/collections/builders/AbstractMapBuilderEntrySet;
.super Lkotlin/collections/AbstractMutableSet;
.source "MapBuilder.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 660
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 660
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->contains(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->containsEntry(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public abstract containsEntry(Ljava/util/Map$Entry;)Z
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 660
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->remove(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public bridge abstract remove(Ljava/util/Map$Entry;)Z
.end method
