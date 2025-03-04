.class public Lorg/fdroid/repo/RepoV2StreamReceiver;
.super Ljava/lang/Object;
.source "RepoV2StreamReceiver.kt"

# interfaces
.implements Lorg/fdroid/index/v2/IndexV2StreamReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0010\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/fdroid/repo/RepoV2StreamReceiver;",
        "Lorg/fdroid/index/v2/IndexV2StreamReceiver;",
        "receiver",
        "Lorg/fdroid/repo/RepoPreviewReceiver;",
        "certificate",
        "",
        "username",
        "password",
        "(Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "locales",
        "Landroidx/core/os/LocaleListCompat;",
        "onStreamEnded",
        "",
        "receive",
        "packageName",
        "p",
        "Lorg/fdroid/index/v2/PackageV2;",
        "repo",
        "Lorg/fdroid/index/v2/RepoV2;",
        "version",
        "",
        "Companion",
        "database_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;


# instance fields
.field private final certificate:Ljava/lang/String;

.field private final locales:Landroidx/core/os/LocaleListCompat;

.field private final password:Ljava/lang/String;

.field private final receiver:Lorg/fdroid/repo/RepoPreviewReceiver;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fdroid/repo/RepoV2StreamReceiver;->Companion:Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/fdroid/repo/RepoPreviewReceiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "certificate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->receiver:Lorg/fdroid/repo/RepoPreviewReceiver;

    iput-object p2, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->certificate:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->username:Ljava/lang/String;

    iput-object p4, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->password:Ljava/lang/String;

    .line 80
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getDefault()Landroidx/core/os/LocaleListCompat;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    return-void
.end method


# virtual methods
.method public onStreamEnded()V
    .locals 0

    .line 0
    return-void
.end method

.method public receive(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;)V
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->receiver:Lorg/fdroid/repo/RepoPreviewReceiver;

    sget-object v1, Lorg/fdroid/repo/RepoV2StreamReceiver;->Companion:Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;

    iget-object v2, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->locales:Landroidx/core/os/LocaleListCompat;

    .line 96
    invoke-virtual {v1, p1, p2, v2}, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;->getAppOverViewItem(Ljava/lang/String;Lorg/fdroid/index/v2/PackageV2;Landroidx/core/os/LocaleListCompat;)Lorg/fdroid/database/AppOverviewItem;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/fdroid/repo/RepoPreviewReceiver;->onAppReceived(Lorg/fdroid/database/AppOverviewItem;)V

    return-void
.end method

.method public receive(Lorg/fdroid/index/v2/RepoV2;J)V
    .locals 9

    const-string v0, "repo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->receiver:Lorg/fdroid/repo/RepoPreviewReceiver;

    sget-object v1, Lorg/fdroid/repo/RepoV2StreamReceiver;->Companion:Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;

    .line 87
    sget-object v5, Lorg/fdroid/index/IndexFormatVersion;->TWO:Lorg/fdroid/index/IndexFormatVersion;

    iget-object v6, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->certificate:Ljava/lang/String;

    iget-object v7, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->username:Ljava/lang/String;

    iget-object v8, p0, Lorg/fdroid/repo/RepoV2StreamReceiver;->password:Ljava/lang/String;

    move-object v2, p1

    move-wide v3, p2

    .line 84
    invoke-virtual/range {v1 .. v8}, Lorg/fdroid/repo/RepoV2StreamReceiver$Companion;->getRepository(Lorg/fdroid/index/v2/RepoV2;JLorg/fdroid/index/IndexFormatVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/fdroid/database/Repository;

    move-result-object p1

    .line 83
    invoke-interface {v0, p1}, Lorg/fdroid/repo/RepoPreviewReceiver;->onRepoReceived(Lorg/fdroid/database/Repository;)V

    return-void
.end method
