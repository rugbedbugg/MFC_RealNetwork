.class public final Lorg/fdroid/index/v2/EntryVerifier;
.super Lorg/fdroid/index/JarIndexVerifier;
.source "EntryVerifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014R\u0014\u0010\u0008\u001a\u00020\u0005X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/fdroid/index/v2/EntryVerifier;",
        "Lorg/fdroid/index/JarIndexVerifier;",
        "jarFile",
        "Ljava/io/File;",
        "expectedSigningCertificate",
        "",
        "expectedSigningFingerprint",
        "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V",
        "jsonFileName",
        "getJsonFileName",
        "()Ljava/lang/String;",
        "checkAttributes",
        "",
        "attributes",
        "Ljava/util/jar/Attributes;",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final jsonFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "jarFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/fdroid/index/JarIndexVerifier;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "entry.json"

    iput-object p1, p0, Lorg/fdroid/index/v2/EntryVerifier;->jsonFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkAttributes(Ljava/util/jar/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;
        }
    .end annotation

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Ljava/util/jar/Attributes;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "<get-keys>(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-static {}, Lorg/fdroid/index/v2/EntryVerifierKt;->access$getFORBIDDEN_DIGESTS$p()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Lorg/fdroid/index/SigningException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method protected getJsonFileName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/EntryVerifier;->jsonFileName:Ljava/lang/String;

    return-object v0
.end method
