.class final Lorg/fdroid/index/RepoUpdater$log$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/RepoUpdater;-><init>(Ljava/io/File;Lorg/fdroid/database/FDroidDatabase;Lorg/fdroid/download/DownloaderFactory;Lorg/fdroid/index/RepoUriBuilder;Lorg/fdroid/CompatibilityChecker;Lorg/fdroid/index/IndexUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/index/RepoUpdater$log$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/index/RepoUpdater$log$1;

    invoke-direct {v0}, Lorg/fdroid/index/RepoUpdater$log$1;-><init>()V

    sput-object v0, Lorg/fdroid/index/RepoUpdater$log$1;->INSTANCE:Lorg/fdroid/index/RepoUpdater$log$1;

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
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/fdroid/index/RepoUpdater$log$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 0

    .line 0
    return-void
.end method
