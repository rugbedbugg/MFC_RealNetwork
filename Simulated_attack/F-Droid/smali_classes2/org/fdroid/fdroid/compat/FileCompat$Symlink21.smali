.class Lorg/fdroid/fdroid/compat/FileCompat$Symlink21;
.super Ljava/lang/Object;
.source "FileCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/compat/FileCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Symlink21"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/fdroid/fdroid/compat/FileCompat$Symlink21-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/fdroid/compat/FileCompat$Symlink21;-><init>()V

    return-void
.end method


# virtual methods
.method symlink(Lorg/fdroid/fdroid/data/SanitizedFile;Lorg/fdroid/fdroid/data/SanitizedFile;)V
    .locals 0

    .line 37
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
