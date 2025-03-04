.class public Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

.field private successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRootCaEntry()Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;
    .locals 3

    .line 0
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry;-><init>(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)V

    return-object v0
.end method

.method public setSelfsignedRootCa(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->selfsignedRootCa:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object p0
.end method

.method public setSuccessorTo(Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;)Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/RootCaEntry$Builder;->successorTo:Lorg/bouncycastle/oer/its/etsi103097/EtsiTs103097Certificate;

    return-object p0
.end method
