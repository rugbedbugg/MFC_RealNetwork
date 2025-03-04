.class final Lkotlin/collections/MutableMapWithDefaultImpl;
.super Ljava/lang/Object;
.source "MapWithDefault.kt"

# interfaces
.implements Lkotlin/collections/MutableMapWithDefault;


# instance fields
.field private final default:Lkotlin/jvm/functions/Function1;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/MutableMapWithDefaultImpl;->map:Ljava/util/Map;

    iput-object p2, p0, Lkotlin/collections/MutableMapWithDefaultImpl;->default:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntries()Ljava/util/Set;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lkotlin/collections/MutableMapWithDefaultImpl;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getOrImplicitDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 341
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 342
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/MutableMapWithDefaultImpl;->default:Lkotlin/jvm/functions/Function1;

    .line 101
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1

    .line 93
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge size()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lkotlin/collections/MutableMapWithDefaultImpl;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
