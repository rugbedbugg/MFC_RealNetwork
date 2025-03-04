.class final Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$1;
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
    iput-object p1, p0, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$1;->$repo:Lorg/fdroid/database/MultiRepoMigration$Repo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/fdroid/database/MultiRepoMigration$migrateWeights$1$1;->$repo:Lorg/fdroid/database/MultiRepoMigration$Repo;

    .line 41
    invoke-virtual {v0}, Lorg/fdroid/database/MultiRepoMigration$Repo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
