.class public final Lkotlin/UShort;
.super Ljava/lang/Object;
.source "UShort.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UShort$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/UShort$Companion;


# instance fields
.field private final data:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lkotlin/UShort$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/UShort$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/UShort;->Companion:Lkotlin/UShort$Companion;

    return-void
.end method

.method private synthetic constructor <init>(S)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lkotlin/UShort;->data:S

    return-void
.end method

.method public static final synthetic box-impl(S)Lkotlin/UShort;
    .locals 1

    .line 0
    new-instance v0, Lkotlin/UShort;

    invoke-direct {v0, p0}, Lkotlin/UShort;-><init>(S)V

    return-object v0
.end method

.method public static constructor-impl(S)S
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(SLjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lkotlin/UShort;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlin/UShort;

    invoke-virtual {p1}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(S)I
    .locals 0

    .line 0
    return p0
.end method

.method public static toString-impl(S)Ljava/lang/String;
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    .line 354
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 13
    check-cast p1, Lkotlin/UShort;

    invoke-virtual {p1}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    invoke-virtual {p0}, Lkotlin/UShort;->unbox-impl()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p1, v1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-short v0, p0, Lkotlin/UShort;->data:S

    invoke-static {v0, p1}, Lkotlin/UShort;->equals-impl(SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-short v0, p0, Lkotlin/UShort;->data:S

    invoke-static {v0}, Lkotlin/UShort;->hashCode-impl(S)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lkotlin/UShort;->data:S

    .line 354
    invoke-static {v0}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()S
    .locals 1

    .line 0
    iget-short v0, p0, Lkotlin/UShort;->data:S

    return v0
.end method
