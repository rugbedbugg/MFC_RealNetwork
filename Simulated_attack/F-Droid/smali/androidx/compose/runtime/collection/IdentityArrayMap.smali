.class public final Landroidx/compose/runtime/collection/IdentityArrayMap;
.super Ljava/lang/Object;
.source "IdentityArrayMap.kt"


# instance fields
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    .line 21
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayMap;I)V
    .locals 0

    .line 21
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    return-void
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 7

    .line 164
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_3

    add-int v4, v3, v1

    ushr-int/lit8 v4, v4, 0x1

    .line 171
    aget-object v5, v2, v4

    .line 172
    invoke-static {v5}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v0, :cond_0

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_0
    if-le v6, v0, :cond_1

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    return v4

    .line 177
    :cond_2
    invoke-direct {p0, v4, p1, v0}, Landroidx/compose/runtime/collection/IdentityArrayMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result p1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    neg-int p1, v3

    return p1
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    add-int/lit8 v2, p1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_2

    .line 196
    aget-object v3, v0, v2

    if-ne v3, p2, :cond_0

    return v2

    .line 200
    :cond_0
    invoke-static {v3}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v1, :cond_4

    .line 206
    aget-object v2, v0, p1

    if-ne v2, p2, :cond_3

    return p1

    .line 210
    :cond_3
    invoke-static {v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    return p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method


# virtual methods
.method public final clear()V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 120
    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    iget-object v7, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 121
    invoke-static/range {v7 .. v12}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    .line 37
    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getKeys()[Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    return v0
.end method

.method public final getValues()[Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    .line 92
    aget-object v2, v1, p1

    iget v3, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    iget-object v4, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    .line 96
    invoke-static {v4, v4, p1, v5, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 102
    invoke-static {v1, v1, p1, v5, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    .line 109
    aput-object v0, v4, v3

    .line 110
    aput-object v0, v1, v3

    iput v3, p0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    iget v10, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    .line 45
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/collection/IdentityArrayMap;->find(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 47
    aput-object p2, v2, v4

    goto :goto_3

    :cond_0
    const/4 v11, 0x1

    add-int/2addr v4, v11

    neg-int v12, v4

    .line 50
    array-length v4, v3

    if-ne v10, v4, :cond_1

    move v13, v11

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move v13, v4

    :goto_0
    if-eqz v13, :cond_2

    mul-int/lit8 v4, v10, 0x2

    .line 52
    new-array v4, v4, [Ljava/lang/Object;

    move-object v14, v4

    goto :goto_1

    :cond_2
    move-object v14, v3

    :goto_1
    add-int/lit8 v15, v12, 0x1

    .line 54
    invoke-static {v3, v14, v15, v12, v10}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-eqz v13, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v14

    move v7, v12

    .line 61
    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 66
    :cond_3
    aput-object v1, v14, v12

    iput-object v14, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->keys:[Ljava/lang/Object;

    if-eqz v13, :cond_4

    mul-int/lit8 v1, v10, 0x2

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    goto :goto_2

    :cond_4
    move-object v1, v2

    .line 71
    :goto_2
    invoke-static {v2, v1, v15, v12, v10}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-eqz v13, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, v1

    move v8, v12

    .line 78
    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 83
    :cond_5
    aput-object p2, v1, v12

    iput-object v1, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->values:[Ljava/lang/Object;

    iget v1, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    add-int/2addr v1, v11

    iput v1, v0, Landroidx/compose/runtime/collection/IdentityArrayMap;->size:I

    :goto_3
    return-void
.end method
