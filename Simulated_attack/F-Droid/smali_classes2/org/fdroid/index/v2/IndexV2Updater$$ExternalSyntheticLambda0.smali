.class public final synthetic Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/RepositoryDaoInt;

.field public final synthetic f$1:Lorg/fdroid/database/Repository;

.field public final synthetic f$2:Lorg/fdroid/index/v2/IndexV2StreamProcessor;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/io/FileInputStream;

.field public final synthetic f$5:Lorg/fdroid/index/v2/IndexV2Updater;

.field public final synthetic f$6:Lorg/fdroid/index/v2/EntryFileV2;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/IndexV2StreamProcessor;JLjava/io/FileInputStream;Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/index/v2/EntryFileV2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/RepositoryDaoInt;

    iput-object p2, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/index/v2/IndexV2StreamProcessor;

    iput-wide p4, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$3:J

    iput-object p6, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$4:Ljava/io/FileInputStream;

    iput-object p7, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$5:Lorg/fdroid/index/v2/IndexV2Updater;

    iput-object p8, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$6:Lorg/fdroid/index/v2/EntryFileV2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/RepositoryDaoInt;

    iget-object v1, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    iget-object v2, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$2:Lorg/fdroid/index/v2/IndexV2StreamProcessor;

    iget-wide v3, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$3:J

    iget-object v5, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$4:Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$5:Lorg/fdroid/index/v2/IndexV2Updater;

    iget-object v7, p0, Lorg/fdroid/index/v2/IndexV2Updater$$ExternalSyntheticLambda0;->f$6:Lorg/fdroid/index/v2/EntryFileV2;

    invoke-static/range {v0 .. v7}, Lorg/fdroid/index/v2/IndexV2Updater;->$r8$lambda$IdLiZARyHbAQE3ip037IBmUvlmM(Lorg/fdroid/database/RepositoryDaoInt;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/IndexV2StreamProcessor;JLjava/io/FileInputStream;Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/index/v2/EntryFileV2;)V

    return-void
.end method
