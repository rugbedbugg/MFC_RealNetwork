.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

.field private sspRange:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPsidSspRange()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;->sspRange:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;)V

    return-object v0
.end method

.method public setPsid(J)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object p0
.end method

.method public setPsid(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object p0
.end method

.method public setSspRange(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSspRange$Builder;->sspRange:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SspRange;

    return-object p0
.end method
