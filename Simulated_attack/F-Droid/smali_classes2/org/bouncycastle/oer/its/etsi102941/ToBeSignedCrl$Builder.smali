.class public Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

.field private nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

.field private version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createToBeSignedCrl()Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;
    .locals 5

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v4, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl;-><init>(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;)V

    return-object v0
.end method

.method public setEntries(Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->entries:Lorg/bouncycastle/oer/its/etsi102941/SequenceOfCrlEntry;

    return-object p0
.end method

.method public setNextUpdate(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->nextUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object p0
.end method

.method public setThisUpdate(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->thisUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object p0
.end method

.method public setVersion(Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;)Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/ToBeSignedCrl$Builder;->version:Lorg/bouncycastle/oer/its/etsi102941/basetypes/Version;

    return-object p0
.end method
