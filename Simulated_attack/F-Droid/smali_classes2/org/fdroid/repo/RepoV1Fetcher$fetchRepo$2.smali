.class final Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoV1Fetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoV1Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;

    invoke-direct {v0}, Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;-><init>()V

    sput-object v0, Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;->INSTANCE:Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lorg/fdroid/repo/RepoV1Fetcher$fetchRepo$2;->invoke(Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;
    .locals 1

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lorg/fdroid/index/IndexParser;->INSTANCE:Lorg/fdroid/index/IndexParser;

    invoke-static {v0, p1}, Lorg/fdroid/index/IndexParserKt;->parseV1(Lorg/fdroid/index/IndexParser;Ljava/io/InputStream;)Lorg/fdroid/index/v1/IndexV1;

    move-result-object p1

    return-object p1
.end method
