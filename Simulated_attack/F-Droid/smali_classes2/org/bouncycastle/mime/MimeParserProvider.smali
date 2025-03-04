.class public interface abstract Lorg/bouncycastle/mime/MimeParserProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract createParser(Ljava/io/InputStream;)Lorg/bouncycastle/mime/MimeParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createParser(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Lorg/bouncycastle/mime/MimeParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
