.class final Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;
.super Lkotlin/jvm/internal/Lambda;
.source "RepositoryDao.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/RepositoryDaoInt$DefaultImpls;->updateRepository(Lorg/fdroid/database/RepositoryDaoInt;JJLkotlinx/serialization/json/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;

    invoke-direct {v0}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;-><init>()V

    sput-object v0, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;->INSTANCE:Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;Lorg/fdroid/database/ReleaseChannel;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Lorg/fdroid/database/ReleaseChannel;->getId$database_release()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 332
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/fdroid/database/ReleaseChannel;

    invoke-virtual {p0, p1, p2}, Lorg/fdroid/database/RepositoryDaoInt$updateRepository$14;->invoke(Ljava/lang/String;Lorg/fdroid/database/ReleaseChannel;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
