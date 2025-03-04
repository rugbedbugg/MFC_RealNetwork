.class final Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VersionDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt$DefaultImpls;->diffVersionedStrings(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $type:Lorg/fdroid/database/VersionedStringType;

.field final synthetic $version:Lorg/fdroid/database/Version;

.field final synthetic this$0:Lorg/fdroid/database/VersionDaoInt;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionDaoInt;Lorg/fdroid/database/Version;Lorg/fdroid/database/VersionedStringType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->this$0:Lorg/fdroid/database/VersionDaoInt;

    iput-object p2, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->$version:Lorg/fdroid/database/Version;

    iput-object p3, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->$type:Lorg/fdroid/database/VersionedStringType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    iget-object v0, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->this$0:Lorg/fdroid/database/VersionDaoInt;

    iget-object v1, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->$version:Lorg/fdroid/database/Version;

    .line 157
    invoke-virtual {v1}, Lorg/fdroid/database/Version;->getRepoId()J

    move-result-wide v1

    iget-object v3, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->$version:Lorg/fdroid/database/Version;

    invoke-virtual {v3}, Lorg/fdroid/database/Version;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->$version:Lorg/fdroid/database/Version;

    invoke-virtual {v4}, Lorg/fdroid/database/Version;->getVersionId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/fdroid/database/VersionDaoInt$diffVersionedStrings$2;->$type:Lorg/fdroid/database/VersionedStringType;

    invoke-interface/range {v0 .. v5}, Lorg/fdroid/database/VersionDaoInt;->deleteVersionedStrings(JLjava/lang/String;Ljava/lang/String;Lorg/fdroid/database/VersionedStringType;)V

    return-void
.end method
