.class final Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;
.super Ljava/lang/Object;
.source "AnnotatedString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/AnnotatedString$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MutableRange"
.end annotation


# instance fields
.field private end:I

.field private final item:Ljava/lang/Object;

.field private final start:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->item:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->start:I

    iput p3, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->end:I

    iput-object p4, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/high16 p3, -0x80000000

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-string p4, ""

    .line 274
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->item:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->item:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->start:I

    iget v3, p1, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->start:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->end:I

    iget v3, p1, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->end:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->tag:Ljava/lang/String;

    iget-object p1, p1, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->tag:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->item:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->start:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->end:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toRange(I)Landroidx/compose/ui/text/AnnotatedString$Range;
    .locals 4

    iget v0, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->end:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eq p1, v1, :cond_1

    .line 288
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->item:Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->start:I

    iget-object v3, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->tag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    return-object v0

    .line 287
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Item.end should be set first"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MutableRange(item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
