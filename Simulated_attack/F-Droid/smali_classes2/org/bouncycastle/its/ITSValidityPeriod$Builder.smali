.class public Lorg/bouncycastle/its/ITSValidityPeriod$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/ITSValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final startDate:J


# direct methods
.method constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;->startDate:J

    return-void
.end method


# virtual methods
.method public plusSixtyHours(I)Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-wide v1, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;->startDate:J

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;->valueOf(I)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object p1

    sget-object v3, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(JLorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)V

    return-object v0
.end method

.method public plusYears(I)Lorg/bouncycastle/its/ITSValidityPeriod;
    .locals 4

    .line 0
    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod;

    iget-wide v1, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Builder;->startDate:J

    invoke-static {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;->valueOf(I)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;

    move-result-object p1

    sget-object v3, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/its/ITSValidityPeriod;-><init>(JLorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT16;Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)V

    return-object v0
.end method
