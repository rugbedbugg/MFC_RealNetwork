.class public final synthetic Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fdroid/database/AppDaoInt;

.field public final synthetic f$1:Landroidx/core/os/LocaleListCompat;


# direct methods
.method public synthetic constructor <init>(Lorg/fdroid/database/AppDaoInt;Landroidx/core/os/LocaleListCompat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/AppDaoInt;

    iput-object p2, p0, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;->f$1:Landroidx/core/os/LocaleListCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;->f$0:Lorg/fdroid/database/AppDaoInt;

    iget-object v1, p0, Lorg/fdroid/database/FDroidDatabaseInt$$ExternalSyntheticLambda0;->f$1:Landroidx/core/os/LocaleListCompat;

    invoke-static {v0, v1}, Lorg/fdroid/database/FDroidDatabaseInt;->$r8$lambda$71V0Lddvprvt0U-2aeuqUo5-6Es(Lorg/fdroid/database/AppDaoInt;Landroidx/core/os/LocaleListCompat;)V

    return-void
.end method
