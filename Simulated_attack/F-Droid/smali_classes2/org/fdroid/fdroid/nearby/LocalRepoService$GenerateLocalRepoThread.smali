.class Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;
.super Ljava/lang/Thread;
.source "LocalRepoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/LocalRepoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateLocalRepoThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenerateLocalRepoThread"


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/nearby/LocalRepoService;


# direct methods
.method private constructor <init>(Lorg/fdroid/fdroid/nearby/LocalRepoService;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;->this$0:Lorg/fdroid/fdroid/nearby/LocalRepoService;

    .line 90
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/fdroid/fdroid/nearby/LocalRepoService;Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;-><init>(Lorg/fdroid/fdroid/nearby/LocalRepoService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/16 v0, 0x13

    .line 95
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoService$GenerateLocalRepoThread;->this$0:Lorg/fdroid/fdroid/nearby/LocalRepoService;

    .line 96
    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->-$$Nest$fgetcurrentlyProcessedApps(Lorg/fdroid/fdroid/nearby/LocalRepoService;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/fdroid/fdroid/nearby/LocalRepoService;->runProcess(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method
