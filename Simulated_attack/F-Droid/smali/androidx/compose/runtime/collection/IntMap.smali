.class public final Landroidx/compose/runtime/collection/IntMap;
.super Ljava/lang/Object;
.source "ActualIntMap.android.kt"


# instance fields
.field private final sparseArray:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/collection/IntMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IntMap;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    .line 56
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/collection/IntMap;->sparseArray:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
