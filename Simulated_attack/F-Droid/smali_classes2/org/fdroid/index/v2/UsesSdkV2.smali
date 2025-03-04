.class public final Lorg/fdroid/index/v2/UsesSdkV2;
.super Ljava/lang/Object;
.source "PackageV2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/index/v2/UsesSdkV2$$serializer;,
        Lorg/fdroid/index/v2/UsesSdkV2$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB)\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J&\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u00c1\u0001\u00a2\u0006\u0002\u0008\u001dR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006 "
    }
    d2 = {
        "Lorg/fdroid/index/v2/UsesSdkV2;",
        "",
        "seen1",
        "",
        "minSdkVersion",
        "targetSdkVersion",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(II)V",
        "getMinSdkVersion",
        "()I",
        "getTargetSdkVersion",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lorg/fdroid/index/v2/UsesSdkV2$Companion;


# instance fields
.field private final minSdkVersion:I

.field private final targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/index/v2/UsesSdkV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/index/v2/UsesSdkV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/index/v2/UsesSdkV2;->Companion:Lorg/fdroid/index/v2/UsesSdkV2$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    iput p2, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 160
    sget-object p4, Lorg/fdroid/index/v2/UsesSdkV2$$serializer;->INSTANCE:Lorg/fdroid/index/v2/UsesSdkV2$$serializer;

    invoke-virtual {p4}, Lorg/fdroid/index/v2/UsesSdkV2$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    iput p3, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/fdroid/index/v2/UsesSdkV2;IIILjava/lang/Object;)Lorg/fdroid/index/v2/UsesSdkV2;
    .locals 0

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/fdroid/index/v2/UsesSdkV2;->copy(II)Lorg/fdroid/index/v2/UsesSdkV2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$index_release(Lorg/fdroid/index/v2/UsesSdkV2;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 160
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v0, 0x1

    iget p0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    return v0
.end method

.method public final component2()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    return v0
.end method

.method public final copy(II)Lorg/fdroid/index/v2/UsesSdkV2;
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/index/v2/UsesSdkV2;

    invoke-direct {v0, p1, p2}, Lorg/fdroid/index/v2/UsesSdkV2;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fdroid/index/v2/UsesSdkV2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fdroid/index/v2/UsesSdkV2;

    iget v1, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    iget v3, p1, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    iget p1, p1, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMinSdkVersion()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    return v0
.end method

.method public final getTargetSdkVersion()I
    .locals 1

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget v0, p0, Lorg/fdroid/index/v2/UsesSdkV2;->minSdkVersion:I

    iget v1, p0, Lorg/fdroid/index/v2/UsesSdkV2;->targetSdkVersion:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsesSdkV2(minSdkVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", targetSdkVersion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
