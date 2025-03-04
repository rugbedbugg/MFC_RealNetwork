.class public abstract synthetic Lorg/bouncycastle/jce/provider/ProvOcspRevocationChecker$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Lorg/bouncycastle/jce/provider/ProvRevocationChecker;)Ljava/net/URI;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOcspResponder()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method
