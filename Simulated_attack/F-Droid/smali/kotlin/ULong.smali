.class public final Lkotlin/ULong;
.super Ljava/lang/Object;
.source "ULong.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ULong$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/ULong$Companion;


# instance fields
.field private final data:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lkotlin/ULong$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ULong$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/ULong;->Companion:Lkotlin/ULong$Companion;

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/ULong;->data:J

    return-void
.end method

.method public static final synthetic box-impl(J)Lkotlin/ULong;
    .locals 1

    .line 0
    new-instance v0, Lkotlin/ULong;

    invoke-direct {v0, p0, p1}, Lkotlin/ULong;-><init>(J)V

    return-object v0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 0
    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p2, Lkotlin/ULong;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/ULong;

    invoke-virtual {p2}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    .line 0
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result p0

    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 0

    .line 378
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->ulongToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 13
    check-cast p1, Lkotlin/ULong;

    invoke-virtual {p1}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lkotlin/UnsignedKt;->ulongCompare(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-wide v0, p0, Lkotlin/ULong;->data:J

    invoke-static {v0, v1, p1}, Lkotlin/ULong;->equals-impl(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-wide v0, p0, Lkotlin/ULong;->data:J

    invoke-static {v0, v1}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lkotlin/ULong;->data:J

    .line 378
    invoke-static {v0, v1}, Lkotlin/ULong;->toString-impl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lkotlin/ULong;->data:J

    return-wide v0
.end method
