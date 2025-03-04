.class public final synthetic Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/acra/interaction/ReportInteraction;

.field public final synthetic f$1:Lorg/acra/interaction/ReportInteractionExecutor;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/acra/interaction/ReportInteraction;Lorg/acra/interaction/ReportInteractionExecutor;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;->f$0:Lorg/acra/interaction/ReportInteraction;

    iput-object p2, p0, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;->f$1:Lorg/acra/interaction/ReportInteractionExecutor;

    iput-object p3, p0, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;->f$0:Lorg/acra/interaction/ReportInteraction;

    iget-object v1, p0, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;->f$1:Lorg/acra/interaction/ReportInteractionExecutor;

    iget-object v2, p0, Lorg/acra/interaction/ReportInteractionExecutor$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lorg/acra/interaction/ReportInteractionExecutor;->$r8$lambda$XxbE04P1atFd9l_vyYmPLWgTl20(Lorg/acra/interaction/ReportInteraction;Lorg/acra/interaction/ReportInteractionExecutor;Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
