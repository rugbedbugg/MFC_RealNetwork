.class public Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

.field private lastKnownUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEtsiTs102941CrlRequest()Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;->lastKnownUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)V

    return-object v0
.end method

.method public setIssuerId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;->issuerId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    return-object p0
.end method

.method public setLastKnownUpdate(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi103097/extension/EtsiTs102941CrlRequest$Builder;->lastKnownUpdate:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object p0
.end method
