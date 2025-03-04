.class Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "SwapSuccessView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 278
    invoke-static {p1}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$fgetapk(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    .line 279
    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->this$1:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;

    iget-object p1, p1, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter;->this$0:Lorg/fdroid/fdroid/nearby/SwapSuccessView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder$2;->this$2:Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;

    invoke-static {v0}, Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;->-$$Nest$fgetapk(Lorg/fdroid/fdroid/nearby/SwapSuccessView$AppListAdapter$ViewHolder;)Lorg/fdroid/fdroid/data/Apk;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fdroid/fdroid/data/Apk;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/fdroid/fdroid/installer/InstallManagerService;->cancel(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
