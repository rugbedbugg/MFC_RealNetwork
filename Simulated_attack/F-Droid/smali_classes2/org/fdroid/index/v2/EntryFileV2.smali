.class public final Lorg/fdroid/index/v2/EntryFileV2;
.super Ljava/lang/Object;
.source "IndexV2.kt"

# interfaces
.implements Lorg/fdroid/IndexFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v2/EntryFileV2$$serializer;,
        Lorg/fdroid/index/v2/EntryFileV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 /2\u00020\u0001:\u0002./BI\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rB1\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J=\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\u0008\u0010$\u001a\u00020\u0005H\u0016J\t\u0010%\u001a\u00020\u0005H\u00d6\u0001J&\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00002\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u00c1\u0001\u00a2\u0006\u0002\u0008-R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00060"
    }
    d2 = {
        "Lorg/fdroid/index/v2/EntryFileV2;",
        "Lorg/fdroid/IndexFile;",
        "seen1",
        "",
        "name",
        "",
        "sha256",
        "size",
        "",
        "ipfsCidV1",
        "numPackages",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V",
        "getIpfsCidV1$annotations",
        "()V",
        "getIpfsCidV1",
        "()Ljava/lang/String;",
        "getName",
        "getNumPackages",
        "()I",
        "getSha256",
        "getSize",
        "()Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "serialize",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$index_release",
        "$serializer",
        "Companion",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/fdroid/index/v2/EntryFileV2$Companion;


# instance fields
.field private final ipfsCidV1:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final numPackages:I

.field private final sha256:Ljava/lang/String;

.field private final size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/index/v2/EntryFileV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v2/EntryFileV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v2/EntryFileV2;->Companion:Lorg/fdroid/index/v2/EntryFileV2$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x17

    const/16 v0, 0x17

    if-eq v0, p8, :cond_0

    .line 27
    sget-object p8, Lorg/fdroid/index/v2/EntryFileV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/EntryFileV2$$serializer;

    invoke-virtual {p8}, Lorg/fdroid/index/v2/EntryFileV2$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p8

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    iput-wide p4, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p6, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    :goto_0
    iput p7, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sha256"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    iput-wide p3, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    iput-object p5, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    iput p6, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p6

    .line 28
    invoke-direct/range {v0 .. v6}, Lorg/fdroid/index/v2/EntryFileV2;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v2/EntryFileV2;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IILjava/lang/Object;)Lorg/fdroid/index/v2/EntryFileV2;
    .locals 4

    .line 0
    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p6, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    :cond_4
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-wide p5, v0

    move-object p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lorg/fdroid/index/v2/EntryFileV2;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lorg/fdroid/index/v2/EntryFileV2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getIpfsCidV1$annotations()V
    .locals 0

    .line 0
    return-void
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v2/EntryFileV2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 27
    invoke-virtual {p0}, Lorg/fdroid/index/v2/EntryFileV2;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/fdroid/index/v2/EntryFileV2;->getSha256()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/fdroid/index/v2/EntryFileV2;->getSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/fdroid/index/v2/EntryFileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    invoke-virtual {p0}, Lorg/fdroid/index/v2/EntryFileV2;->getIpfsCidV1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x4

    iget p0, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)Lorg/fdroid/index/v2/EntryFileV2;
    .locals 8

    .line 0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sha256"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/fdroid/index/v2/EntryFileV2;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fdroid/index/v2/EntryFileV2;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v2/EntryFileV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v2/EntryFileV2;

    iget-object v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    iget-wide v5, p1, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    iget-object v3, p1, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    iget p1, p1, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getIpfsCidV1()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumPackages()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    return v0
.end method

.method public getSha256()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    invoke-static {v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    add-int/2addr v0, v1

    return v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 3

    .line 43
    invoke-static {}, Lorg/fdroid/index/IndexParser;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    const-class v2, Lorg/fdroid/index/v2/EntryFileV2;

    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 80
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-interface {v0, v1, p0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryFileV2;->name:Ljava/lang/String;

    iget-object v1, p0, Lorg/fdroid/index/v2/EntryFileV2;->sha256:Ljava/lang/String;

    iget-wide v2, p0, Lorg/fdroid/index/v2/EntryFileV2;->size:J

    iget-object v4, p0, Lorg/fdroid/index/v2/EntryFileV2;->ipfsCidV1:Ljava/lang/String;

    iget v5, p0, Lorg/fdroid/index/v2/EntryFileV2;->numPackages:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EntryFileV2(name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sha256="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ipfsCidV1="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", numPackages="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
