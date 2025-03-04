.class public Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private groupLinkageValue:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

.field private iCert:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IValue;

.field private linkageValue:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LinkageValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLinkageData()Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;->iCert:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IValue;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;->linkageValue:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LinkageValue;

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;->groupLinkageValue:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IValue;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LinkageValue;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;)V

    return-object v0
.end method

.method public setGroupLinkageValue(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;)Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;->groupLinkageValue:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/GroupLinkageValue;

    return-object p0
.end method

.method public setICert(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IValue;)Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;->iCert:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/IValue;

    return-object p0
.end method

.method public setLinkageValue(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LinkageValue;)Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/LinkageData$Builder;->linkageValue:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/LinkageValue;

    return-object p0
.end method
