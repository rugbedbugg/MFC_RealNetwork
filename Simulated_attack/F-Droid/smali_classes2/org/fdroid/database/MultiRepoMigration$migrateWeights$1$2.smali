.class final Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Migrations.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/MultiRepoMigration;->migrateWeights(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $repo:Lorg/fdroid/database/MultiRepoMigration$Repo;


# direct methods
.method constructor <init>(Lorg/fdroid/database/MultiRepoMigration$Repo;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$2;->$repo:Lorg/fdroid/database/MultiRepoMigration$Repo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$2;->$repo:Lorg/fdroid/database/MultiRepoMigration$Repo;

    .line 44
    invoke-virtual {v0}, Lorg/fdroid/database/MultiRepoMigration$Repo;->getAddress()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than two repos with certificate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
