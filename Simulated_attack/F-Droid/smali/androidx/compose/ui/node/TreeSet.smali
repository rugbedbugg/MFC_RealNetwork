.class public final Landroidx/compose/ui/node/TreeSet;
.super Ljava/util/TreeSet;
.source "JvmTreeSet.jvm.kt"


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public bridge getSize()I
    .locals 1

    .line 20
    invoke-super {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/node/TreeSet;->getSize()I

    move-result v0

    return v0
.end method
