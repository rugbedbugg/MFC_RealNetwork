.class Lorg/fdroid/fdroid/views/StatusBanner$3;
.super Ljava/lang/Object;
.source "StatusBanner.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/views/StatusBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fdroid/fdroid/views/StatusBanner;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/views/StatusBanner;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$3;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "overData"

    .line 198
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "overWifi"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$3;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 199
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->getOverData()I

    move-result p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$fputoverDataState(Lorg/fdroid/fdroid/views/StatusBanner;I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$3;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 200
    invoke-static {}, Lorg/fdroid/fdroid/Preferences;->get()Lorg/fdroid/fdroid/Preferences;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fdroid/fdroid/Preferences;->getOverWifi()I

    move-result p2

    invoke-static {p1, p2}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$fputoverWiFiState(Lorg/fdroid/fdroid/views/StatusBanner;I)V

    iget-object p1, p0, Lorg/fdroid/fdroid/views/StatusBanner$3;->this$0:Lorg/fdroid/fdroid/views/StatusBanner;

    .line 201
    invoke-static {p1}, Lorg/fdroid/fdroid/views/StatusBanner;->-$$Nest$msetBannerTextAndVisibility(Lorg/fdroid/fdroid/views/StatusBanner;)V

    :cond_1
    return-void
.end method
