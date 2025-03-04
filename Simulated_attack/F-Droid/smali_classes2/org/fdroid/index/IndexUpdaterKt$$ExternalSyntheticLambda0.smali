.class public final synthetic Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/fdroid/fdroid/ProgressListener;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/index/IndexUpdateListener;

.field public final synthetic f$1:Lorg/fdroid/database/Repository;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/index/IndexUpdateListener;

    iput-object p2, p0, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    return-void
.end method


# virtual methods
.method public final onProgress(JJ)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/index/IndexUpdateListener;

    iget-object v1, p0, Lorg/fdroid/index/IndexUpdaterKt$$ExternalSyntheticLambda0;->f$1:Lorg/fdroid/database/Repository;

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/fdroid/index/IndexUpdaterKt;->$r8$lambda$Oi5gQvIswbiGQw9tTPd7Fh_grRQ(Lorg/fdroid/index/IndexUpdateListener;Lorg/fdroid/database/Repository;JJ)V

    return-void
.end method
