.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
.super Lkotlin/collections/AbstractList;
.source "_ArraysJvm.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_asList:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 168
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 171
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->contains(I)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 172
    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 169
    array-length v0, v0

    return v0
.end method

.method public indexOf(I)I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 173
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([II)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 170
    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(I)I
    .locals 1

    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->$this_asList:[I

    .line 174
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([II)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->lastIndexOf(I)I

    move-result p1

    return p1
.end method
