.class final Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "IndexV2Updater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/index/v2/IndexV2Updater;->processStream(Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/EntryFileV2;JLorg/fdroid/index/v2/IndexV2StreamProcessor;)Lorg/fdroid/index/IndexUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entryFile:Lorg/fdroid/index/v2/EntryFileV2;

.field final synthetic $repo:Lorg/fdroid/database/Repository;

.field final synthetic this$0:Lorg/fdroid/index/v2/IndexV2Updater;


# direct methods
.method constructor <init>(Lorg/fdroid/index/v2/IndexV2Updater;Lorg/fdroid/database/Repository;Lorg/fdroid/index/v2/EntryFileV2;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->this$0:Lorg/fdroid/index/v2/IndexV2Updater;

    iput-object p2, p0, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->$repo:Lorg/fdroid/database/Repository;

    iput-object p3, p0, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->$entryFile:Lorg/fdroid/index/v2/EntryFileV2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 3

    iget-object v0, p0, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->this$0:Lorg/fdroid/index/v2/IndexV2Updater;

    .line 104
    invoke-static {v0}, Lorg/fdroid/index/v2/IndexV2Updater;->access$getListener$p(Lorg/fdroid/index/v2/IndexV2Updater;)Lorg/fdroid/index/IndexUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->$repo:Lorg/fdroid/database/Repository;

    iget-object v2, p0, Lorg/fdroid/index/v2/IndexV2Updater$processStream$1$1$1;->$entryFile:Lorg/fdroid/index/v2/EntryFileV2;

    invoke-virtual {v2}, Lorg/fdroid/index/v2/EntryFileV2;->getNumPackages()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lorg/fdroid/index/IndexUpdateListener;->onUpdateProgress(Lorg/fdroid/database/Repository;II)V

    :cond_0
    return-void
.end method
