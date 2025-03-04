.class public final Lkotlin/UByte;
.super Ljava/lang/Object;
.source "UByte.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/UByte$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/UByte$Companion;


# instance fields
.field private final data:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lkotlin/UByte$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/UByte$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/UByte;->Companion:Lkotlin/UByte$Companion;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lkotlin/UByte;->data:B

    return-void
.end method

.method public static final synthetic box-impl(B)Lkotlin/UByte;
    .locals 1

    .line 0
    new-instance v0, Lkotlin/UByte;

    invoke-direct {v0, p0}, Lkotlin/UByte;-><init>(B)V

    return-object v0
.end method

.method public static constructor-impl(B)B
    .locals 0

    .line 0
    return p0
.end method

.method public static equals-impl(BLjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lkotlin/UByte;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lkotlin/UByte;

    invoke-virtual {p1}, Lkotlin/UByte;->unbox-impl()B

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(B)I
    .locals 0

    .line 0
    return p0
.end method

.method public static toString-impl(B)Ljava/lang/String;
    .locals 0

    and-int/lit16 p0, p0, 0xff

    .line 353
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 13
    check-cast p1, Lkotlin/UByte;

    invoke-virtual {p1}, Lkotlin/UByte;->unbox-impl()B

    move-result p1

    invoke-virtual {p0}, Lkotlin/UByte;->unbox-impl()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p1, p1, 0xff

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-byte v0, p0, Lkotlin/UByte;->data:B

    invoke-static {v0, p1}, Lkotlin/UByte;->equals-impl(BLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-byte v0, p0, Lkotlin/UByte;->data:B

    invoke-static {v0}, Lkotlin/UByte;->hashCode-impl(B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lkotlin/UByte;->data:B

    .line 353
    invoke-static {v0}, Lkotlin/UByte;->toString-impl(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()B
    .locals 1

    .line 0
    iget-byte v0, p0, Lkotlin/UByte;->data:B

    return v0
.end method
