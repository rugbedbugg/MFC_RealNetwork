.class final Lorg/fdroid/download/Downloader$downloadFromStream$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Downloader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/download/Downloader;->downloadFromStream(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/download/Downloader$downloadFromStream$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/download/Downloader$downloadFromStream$1;

    invoke-direct {v0}, Lorg/fdroid/download/Downloader$downloadFromStream$1;-><init>()V

    sput-object v0, Lorg/fdroid/download/Downloader$downloadFromStream$1;->INSTANCE:Lorg/fdroid/download/Downloader$downloadFromStream$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    const-string v0, "Downloading from stream"

    return-object v0
.end method
