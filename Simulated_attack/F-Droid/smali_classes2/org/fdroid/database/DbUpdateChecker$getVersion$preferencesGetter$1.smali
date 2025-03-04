.class final Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DbUpdateChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fdroid/database/DbUpdateChecker;->getVersion(Ljava/util/List;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;Z)Lorg/fdroid/database/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic this$0:Lorg/fdroid/database/DbUpdateChecker;


# direct methods
.method constructor <init>(Lorg/fdroid/database/DbUpdateChecker;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;->this$0:Lorg/fdroid/database/DbUpdateChecker;

    iput-object p2, p0, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;->$packageName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;->invoke()Lorg/fdroid/database/AppPrefs;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fdroid/database/AppPrefs;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;->this$0:Lorg/fdroid/database/DbUpdateChecker;

    .line 138
    invoke-static {v0}, Lorg/fdroid/database/DbUpdateChecker;->access$getAppPrefsDao$p(Lorg/fdroid/database/DbUpdateChecker;)Lorg/fdroid/database/AppPrefsDaoInt;

    move-result-object v0

    iget-object v1, p0, Lorg/fdroid/database/DbUpdateChecker$getVersion$preferencesGetter$1;->$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/fdroid/database/AppPrefsDaoInt;->getAppPrefsOrNull(Ljava/lang/String;)Lorg/fdroid/database/AppPrefs;

    move-result-object v0

    return-object v0
.end method
