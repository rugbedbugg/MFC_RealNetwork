.class final Lorg/fdroid/database/Repository$fingerprint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Repository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/Repository;-><init>(Lorg/fdroid/database/CoreRepository;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/fdroid/database/RepositoryPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/Repository;


# direct methods
.method constructor <init>(Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/Repository$fingerprint$2;->this$0:Lorg/fdroid/database/Repository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/fdroid/database/Repository$fingerprint$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/Repository$fingerprint$2;->this$0:Lorg/fdroid/database/Repository;

    .line 188
    invoke-virtual {v0}, Lorg/fdroid/database/Repository;->getCertificate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/fdroid/index/IndexUtils;->INSTANCE:Lorg/fdroid/index/IndexUtils;

    invoke-virtual {v1, v0}, Lorg/fdroid/index/IndexUtils;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
