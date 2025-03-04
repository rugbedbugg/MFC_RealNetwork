.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

.field private start:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->start:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;)V

    return-object v0
.end method

.method public setDuration(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    return-object p0
.end method

.method public setStart(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->start:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    return-object p0
.end method
