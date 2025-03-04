.class public Lorg/fdroid/fdroid/data/SanitizedFile;
.super Ljava/io/File;
.source "SanitizedFile.java"


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-static {p2}, Lorg/fdroid/fdroid/data/SanitizedFile;->sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static knownSanitized(Ljava/io/File;)Lorg/fdroid/fdroid/data/SanitizedFile;
    .locals 1

    .line 67
    new-instance v0, Lorg/fdroid/fdroid/data/SanitizedFile;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static knownSanitized(Ljava/lang/String;)Lorg/fdroid/fdroid/data/SanitizedFile;
    .locals 2

    .line 60
    new-instance v0, Lorg/fdroid/fdroid/data/SanitizedFile;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/fdroid/fdroid/data/SanitizedFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static sanitizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "[^A-Za-z0-9-._ ]"

    const-string v1, ""

    .line 17
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
