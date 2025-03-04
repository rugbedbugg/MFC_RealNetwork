.class public Lorg/bouncycastle/its/ITSPublicVerificationKey;
.super Ljava/lang/Object;


# instance fields
.field protected final verificationKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/its/ITSPublicVerificationKey;->verificationKey:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    return-object v0
.end method
