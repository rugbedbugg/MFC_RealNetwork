.class public final synthetic Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/AppDao;

.field public final synthetic f$1:Lorg/fdroid/fdroid/data/Apk;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/AppDao;Lorg/fdroid/fdroid/data/Apk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/database/AppDao;

    iput-object p2, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;->f$1:Lorg/fdroid/fdroid/data/Apk;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;->f$0:Lorg/fdroid/database/AppDao;

    iget-object v1, p0, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity$$ExternalSyntheticLambda2;->f$1:Lorg/fdroid/fdroid/data/Apk;

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/privileged/views/InstallConfirmActivity;->$r8$lambda$7TIhUHY5NUJa0yd3DBp9ULGO52g(Lorg/fdroid/database/AppDao;Lorg/fdroid/fdroid/data/Apk;)Lorg/fdroid/database/App;

    move-result-object v0

    return-object v0
.end method
