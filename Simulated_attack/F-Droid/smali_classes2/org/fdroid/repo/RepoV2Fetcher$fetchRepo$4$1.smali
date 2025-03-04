.class final Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RepoV2Fetcher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/repo/RepoV2Fetcher;->fetchRepo(Landroid/net/Uri;Lorg/fdroid/database/Repository;Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;

    invoke-direct {v0}, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;-><init>()V

    sput-object v0, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;->INSTANCE:Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;

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

    .line 85
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fdroid/repo/RepoV2Fetcher$fetchRepo$4$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 0

    .line 0
    return-void
.end method
