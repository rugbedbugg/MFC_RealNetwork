.class public final synthetic Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/acra/startup/StartupProcessorExecutor;

.field public final synthetic f$1:Ljava/util/Calendar;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$0:Lorg/acra/startup/StartupProcessorExecutor;

    iput-object p2, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    iput-boolean p3, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$0:Lorg/acra/startup/StartupProcessorExecutor;

    iget-object v1, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$1:Ljava/util/Calendar;

    iget-boolean v2, p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/acra/startup/StartupProcessorExecutor;->$r8$lambda$z7hQmSVEW7iMSuVuR2Rf5o3HZyg(Lorg/acra/startup/StartupProcessorExecutor;Ljava/util/Calendar;Z)V

    return-void
.end method
