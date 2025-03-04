.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

.field private ssp:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPsidSsp()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;->ssp:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;)V

    return-object v0
.end method

.method public setPsid(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;->psid:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Psid;

    return-object p0
.end method

.method public setSsp(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PsidSsp$Builder;->ssp:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ServiceSpecificPermissions;

    return-object p0
.end method
