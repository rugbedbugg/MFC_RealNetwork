.class public Lorg/bouncycastle/its/ITSValidityPeriod;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/ITSValidityPeriod$Builder;,
        Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    }
.end annotation


# instance fields
.field private final duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

.field private final startDate:J

.field private final timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;


# direct methods
.method constructor <init>(JLorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    iput-object p3, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    iput-object p4, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;->getStart()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UintBase;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;->getDuration()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->getDuration()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    invoke-static {}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;->getChoice()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method public static from(Ljava/util/Date;)Lorg/bouncycastle/its/ITSValidityPeriod$Builder;
    .locals 1

    .line 0
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;

    invoke-direct {v0, p0}, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;-><init>(Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public getStartDate()Ljava/util/Date;
    .locals 3

    .line 0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;
    .locals 6

    .line 0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;

    iget-wide v2, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->startDate:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->setStart(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Time32;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;

    iget-object v2, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->timeUnit:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-static {v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->access$000(Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/its/ITSValidityPeriod;->duration:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;-><init>(ILorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->setDuration(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Duration;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod$Builder;->createValidityPeriod()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/ValidityPeriod;

    move-result-object v0

    return-object v0
.end method
