.class public abstract synthetic Lorg/bouncycastle/jce/provider/ProvRevocationChecker$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Lorg/bouncycastle/jce/provider/ProvRevocationChecker;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->getOptions()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
