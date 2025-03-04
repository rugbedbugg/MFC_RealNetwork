.class public abstract Landroidx/compose/ui/graphics/vector/ImageVectorKt;
.super Ljava/lang/Object;
.source "ImageVector.kt"


# direct methods
.method public static final synthetic access$peek(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/vector/ImageVectorKt;->peek(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$pop(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/vector/ImageVectorKt;->pop(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$push(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/ImageVectorKt;->push(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final peek(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1

    .line 767
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final pop(Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1

    .line 765
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final push(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 0

    .line 763
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
