.class Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AADStream"
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private oneByte:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;->oneByte:[B

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;->oneByte:[B

    const/4 v1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyTransAuthEnvelopedRecipient$AADStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    return-void
.end method
