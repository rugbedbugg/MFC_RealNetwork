.class final Lorg/fdroid/database/VersionKt$getPermissions$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Version.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionKt;->getPermissions(Ljava/util/List;Lorg/fdroid/database/Version;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $v:Lorg/fdroid/database/VersionedString;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionedString;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/VersionKt$getPermissions$1$1;->$v:Lorg/fdroid/database/VersionedString;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lorg/fdroid/database/VersionKt$getPermissions$1$1;->invoke()Lorg/fdroid/index/v2/PermissionV2;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fdroid/index/v2/PermissionV2;
    .locals 3

    .line 212
    new-instance v0, Lorg/fdroid/index/v2/PermissionV2;

    iget-object v1, p0, Lorg/fdroid/database/VersionKt$getPermissions$1$1;->$v:Lorg/fdroid/database/VersionedString;

    .line 213
    invoke-virtual {v1}, Lorg/fdroid/database/VersionedString;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/fdroid/database/VersionKt$getPermissions$1$1;->$v:Lorg/fdroid/database/VersionedString;

    .line 214
    invoke-virtual {v2}, Lorg/fdroid/database/VersionedString;->getVersion()Ljava/lang/Integer;

    move-result-object v2

    .line 212
    invoke-direct {v0, v1, v2}, Lorg/fdroid/index/v2/PermissionV2;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
