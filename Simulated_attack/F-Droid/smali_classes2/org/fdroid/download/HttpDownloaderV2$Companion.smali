.class final Lorg/fdroid/download/HttpDownloaderV2$Companion;
.super Ljava/lang/Object;
.source "HttpDownloaderV2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/download/HttpDownloaderV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/fdroid/download/HttpDownloaderV2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLog()Lmu/KLogger;
    .locals 1

    .line 42
    invoke-static {}, Lorg/fdroid/download/HttpDownloaderV2;->access$getLog$cp()Lmu/KLogger;

    move-result-object v0

    return-object v0
.end method
