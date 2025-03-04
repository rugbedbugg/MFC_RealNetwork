.class Lorg/fdroid/database/VersionDaoInt_Impl$5;
.super Landroidx/room/SharedSQLiteStatement;
.source "VersionDaoInt_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/VersionDaoInt_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/database/VersionDaoInt_Impl;


# direct methods
.method constructor <init>(Lorg/fdroid/database/VersionDaoInt_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/database/VersionDaoInt_Impl$5;->this$0:Lorg/fdroid/database/VersionDaoInt_Impl;

    .line 397
    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "DELETE FROM Version\n        WHERE repoId = ? AND packageName = ? AND versionId = ?"

    return-object v0
.end method
