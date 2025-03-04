.class Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "X509CertificateParser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/openssl/PEMParser;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/openssl/PEMParser;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;->this$0:Lorg/bouncycastle/openssl/PEMParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/openssl/PEMParser;Lorg/bouncycastle/openssl/PEMParser$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/PEMParser$X509CertificateParser;-><init>(Lorg/bouncycastle/openssl/PEMParser;)V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    :try_start_0
    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/openssl/PEMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem parsing cert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
